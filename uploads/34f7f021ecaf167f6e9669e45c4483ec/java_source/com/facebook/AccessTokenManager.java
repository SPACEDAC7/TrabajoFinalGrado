/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.Looper
 *  android.os.Message
 *  android.os.Messenger
 *  android.os.Parcelable
 *  android.os.RemoteException
 */
package com.facebook;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.AccessTokenCache;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookSdk;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.Date;

final class AccessTokenManager {
    static final String ACTION_CURRENT_ACCESS_TOKEN_CHANGED = "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED";
    static final String EXTRA_NEW_ACCESS_TOKEN = "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN";
    static final String EXTRA_OLD_ACCESS_TOKEN = "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN";
    static final String SHARED_PREFERENCES_NAME = "com.facebook.AccessTokenManager.SharedPreferences";
    private static final int TOKEN_EXTEND_RETRY_SECONDS = 3600;
    private static final int TOKEN_EXTEND_THRESHOLD_SECONDS = 86400;
    private static volatile AccessTokenManager instance;
    private final AccessTokenCache accessTokenCache;
    private AccessToken currentAccessToken;
    private TokenRefreshRequest currentTokenRefreshRequest;
    private Date lastAttemptedTokenExtendDate = new Date(0);
    private final LocalBroadcastManager localBroadcastManager;

    AccessTokenManager(LocalBroadcastManager localBroadcastManager, AccessTokenCache accessTokenCache) {
        Validate.notNull(localBroadcastManager, "localBroadcastManager");
        Validate.notNull(accessTokenCache, "accessTokenCache");
        this.localBroadcastManager = localBroadcastManager;
        this.accessTokenCache = accessTokenCache;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static AccessTokenManager getInstance() {
        if (instance == null) {
            synchronized (AccessTokenManager.class) {
                if (instance == null) {
                    instance = new AccessTokenManager(LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()), new AccessTokenCache());
                }
            }
        }
        return instance;
    }

    private void sendCurrentAccessTokenChangedBroadcast(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", (Parcelable)accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", (Parcelable)accessToken2);
        this.localBroadcastManager.sendBroadcast(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setCurrentAccessToken(AccessToken accessToken, boolean bl) {
        AccessToken accessToken2 = this.currentAccessToken;
        this.currentAccessToken = accessToken;
        this.currentTokenRefreshRequest = null;
        this.lastAttemptedTokenExtendDate = new Date(0);
        if (bl) {
            if (accessToken != null) {
                this.accessTokenCache.save(accessToken);
            } else {
                this.accessTokenCache.clear();
            }
        }
        if (!Utility.areObjectsEqual(accessToken2, accessToken)) {
            this.sendCurrentAccessTokenChangedBroadcast(accessToken2, accessToken);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean shouldExtendAccessToken() {
        if (this.currentAccessToken == null) return false;
        if (this.currentTokenRefreshRequest != null) {
            return false;
        }
        Long l2 = new Date().getTime();
        if (!this.currentAccessToken.getSource().canExtendToken()) return false;
        if (l2 - this.lastAttemptedTokenExtendDate.getTime() <= 3600000) return false;
        if (l2 - this.currentAccessToken.getLastRefresh().getTime() <= 86400000) return false;
        return true;
    }

    void extendAccessTokenIfNeeded() {
        if (!this.shouldExtendAccessToken()) {
            return;
        }
        this.currentTokenRefreshRequest = new TokenRefreshRequest(this.currentAccessToken);
        this.currentTokenRefreshRequest.bind();
    }

    AccessToken getCurrentAccessToken() {
        return this.currentAccessToken;
    }

    boolean loadCurrentAccessToken() {
        boolean bl = false;
        AccessToken accessToken = this.accessTokenCache.load();
        if (accessToken != null) {
            this.setCurrentAccessToken(accessToken, false);
            bl = true;
        }
        return bl;
    }

    void setCurrentAccessToken(AccessToken accessToken) {
        this.setCurrentAccessToken(accessToken, true);
    }

    class TokenRefreshRequest
    implements ServiceConnection {
        final Messenger messageReceiver;
        Messenger messageSender;

        TokenRefreshRequest(AccessToken accessToken) {
            this.messageSender = null;
            this.messageReceiver = new Messenger((Handler)new TokenRefreshRequestHandler(accessToken, this));
        }

        private void cleanup() {
            if (AccessTokenManager.this.currentTokenRefreshRequest == this) {
                AccessTokenManager.this.currentTokenRefreshRequest = null;
            }
        }

        private void refreshToken() {
            Bundle bundle = new Bundle();
            bundle.putString("access_token", AccessTokenManager.this.getCurrentAccessToken().getToken());
            Message message = Message.obtain();
            message.setData(bundle);
            message.replyTo = this.messageReceiver;
            try {
                this.messageSender.send(message);
                return;
            }
            catch (RemoteException var1_2) {
                this.cleanup();
                return;
            }
        }

        public void bind() {
            Context context = FacebookSdk.getApplicationContext();
            Intent intent = NativeProtocol.createTokenRefreshIntent(context);
            if (intent != null && context.bindService(intent, (ServiceConnection)this, 1)) {
                AccessTokenManager.this.lastAttemptedTokenExtendDate = new Date();
                return;
            }
            this.cleanup();
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.messageSender = new Messenger(iBinder);
            this.refreshToken();
        }

        public void onServiceDisconnected(ComponentName componentName) {
            this.cleanup();
            try {
                FacebookSdk.getApplicationContext().unbindService((ServiceConnection)this);
                return;
            }
            catch (IllegalArgumentException var1_2) {
                return;
            }
        }
    }

    static class TokenRefreshRequestHandler
    extends Handler {
        private AccessToken accessToken;
        private TokenRefreshRequest tokenRefreshRequest;

        TokenRefreshRequestHandler(AccessToken accessToken, TokenRefreshRequest tokenRefreshRequest) {
            super(Looper.getMainLooper());
            this.accessToken = accessToken;
            this.tokenRefreshRequest = tokenRefreshRequest;
        }

        public void handleMessage(Message message) {
            AccessToken accessToken = AccessToken.getCurrentAccessToken();
            if (accessToken != null && accessToken.equals(this.accessToken) && message.getData().getString("access_token") != null) {
                AccessToken.setCurrentAccessToken(AccessToken.createFromRefresh(this.accessToken, message.getData()));
            }
            FacebookSdk.getApplicationContext().unbindService((ServiceConnection)this.tokenRefreshRequest);
            this.tokenRefreshRequest.cleanup();
        }
    }

}

