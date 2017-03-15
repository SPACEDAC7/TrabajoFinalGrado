/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  com.twitter.sdk.android.core.AppSession
 *  com.twitter.sdk.android.core.AppSession$Serializer
 *  com.twitter.sdk.android.core.Callback
 *  com.twitter.sdk.android.core.GuestAuthClient
 *  com.twitter.sdk.android.core.PersistedSessionManager
 *  com.twitter.sdk.android.core.Session
 *  com.twitter.sdk.android.core.SessionManager
 *  com.twitter.sdk.android.core.TwitterApiClient
 *  com.twitter.sdk.android.core.TwitterPinningInfoProvider
 *  com.twitter.sdk.android.core.TwitterSession
 *  com.twitter.sdk.android.core.TwitterSession$Serializer
 *  com.twitter.sdk.android.core.identity.TwitterAuthClient
 *  com.twitter.sdk.android.core.internal.MigrationHelper
 *  com.twitter.sdk.android.core.internal.SessionMonitor
 *  com.twitter.sdk.android.core.internal.SessionVerifier
 *  com.twitter.sdk.android.core.internal.TwitterApi
 *  com.twitter.sdk.android.core.internal.TwitterSessionVerifier
 *  com.twitter.sdk.android.core.internal.oauth.OAuth2Service
 *  com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder
 *  io.fabric.sdk.android.ActivityLifecycleManager
 *  io.fabric.sdk.android.services.network.NetworkUtils
 *  io.fabric.sdk.android.services.network.PinningInfoProvider
 *  io.fabric.sdk.android.services.persistence.PreferenceStore
 *  io.fabric.sdk.android.services.persistence.SerializationStrategy
 */
package com.twitter.sdk.android.core;

import android.app.Activity;
import android.content.Context;
import com.twitter.sdk.android.core.AppSession;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.GuestAuthClient;
import com.twitter.sdk.android.core.PersistedSessionManager;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterPinningInfoProvider;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.identity.TwitterAuthClient;
import com.twitter.sdk.android.core.internal.MigrationHelper;
import com.twitter.sdk.android.core.internal.SessionMonitor;
import com.twitter.sdk.android.core.internal.SessionVerifier;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.TwitterSessionVerifier;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.NetworkUtils;
import io.fabric.sdk.android.services.network.PinningInfoProvider;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.persistence.SerializationStrategy;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import javax.net.ssl.SSLSocketFactory;

public class TwitterCore
extends Kit<Boolean> {
    static final String PREF_KEY_ACTIVE_APP_SESSION = "active_appsession";
    static final String PREF_KEY_ACTIVE_TWITTER_SESSION = "active_twittersession";
    static final String PREF_KEY_APP_SESSION = "appsession";
    static final String PREF_KEY_TWITTER_SESSION = "twittersession";
    static final String SESSION_PREF_FILE_NAME = "session_store";
    public static final String TAG = "Twitter";
    private final ConcurrentHashMap<Session, TwitterApiClient> apiClients;
    SessionManager<AppSession> appSessionManager;
    private final TwitterAuthConfig authConfig;
    SessionMonitor<TwitterSession> sessionMonitor;
    private volatile SSLSocketFactory sslSocketFactory;
    SessionManager<TwitterSession> twitterSessionManager;

    public TwitterCore(TwitterAuthConfig twitterAuthConfig) {
        this.authConfig = twitterAuthConfig;
        this.apiClients = new ConcurrentHashMap();
    }

    TwitterCore(TwitterAuthConfig twitterAuthConfig, ConcurrentHashMap<Session, TwitterApiClient> concurrentHashMap) {
        this.authConfig = twitterAuthConfig;
        this.apiClients = concurrentHashMap;
    }

    private static void checkInitialized() {
        if (Fabric.getKit(TwitterCore.class) == null) {
            throw new IllegalStateException("Must start Twitter Kit with Fabric.with() first");
        }
    }

    private void createSSLSocketFactory() {
        synchronized (this) {
            SSLSocketFactory sSLSocketFactory = this.sslSocketFactory;
            if (sSLSocketFactory == null) {
                this.sslSocketFactory = NetworkUtils.getSSLSocketFactory((PinningInfoProvider)new TwitterPinningInfoProvider(this.getContext()));
                Fabric.getLogger().d("Twitter", "Custom SSL pinning enabled");
            }
            return;
        }
    }

    private Session getActiveSession() {
        Session session;
        Session session2 = session = this.twitterSessionManager.getActiveSession();
        if (session == null) {
            session2 = this.appSessionManager.getActiveSession();
        }
        return session2;
    }

    public static TwitterCore getInstance() {
        TwitterCore.checkInitialized();
        return (TwitterCore)Fabric.getKit(TwitterCore.class);
    }

    private void initializeScribeClient() {
        ArrayList<Object> arrayList = new ArrayList<Object>();
        arrayList.add(this.twitterSessionManager);
        arrayList.add(this.appSessionManager);
        TwitterCoreScribeClientHolder.initialize((TwitterCore)this, arrayList, (IdManager)this.getIdManager());
    }

    @Override
    protected Boolean doInBackground() {
        this.twitterSessionManager.getActiveSession();
        this.appSessionManager.getActiveSession();
        this.getSSLSocketFactory();
        this.initializeScribeClient();
        this.sessionMonitor.monitorActivityLifecycle(this.getFabric().getActivityLifecycleManager());
        return true;
    }

    public TwitterApiClient getApiClient() {
        TwitterCore.checkInitialized();
        Session session = this.getActiveSession();
        if (session == null) {
            throw new IllegalStateException("Must have valid session. Did you authenticate with Twitter?");
        }
        return this.getApiClient(session);
    }

    public TwitterApiClient getApiClient(Session session) {
        TwitterCore.checkInitialized();
        if (!this.apiClients.containsKey((Object)session)) {
            this.apiClients.putIfAbsent(session, new TwitterApiClient(session));
        }
        return this.apiClients.get((Object)session);
    }

    public SessionManager<AppSession> getAppSessionManager() {
        TwitterCore.checkInitialized();
        return this.appSessionManager;
    }

    public TwitterAuthConfig getAuthConfig() {
        return this.authConfig;
    }

    @Override
    public String getIdentifier() {
        return "com.twitter.sdk.android:twitter-core";
    }

    public SSLSocketFactory getSSLSocketFactory() {
        TwitterCore.checkInitialized();
        if (this.sslSocketFactory == null) {
            this.createSSLSocketFactory();
        }
        return this.sslSocketFactory;
    }

    public SessionManager<TwitterSession> getSessionManager() {
        TwitterCore.checkInitialized();
        return this.twitterSessionManager;
    }

    @Override
    public String getVersion() {
        return "1.6.8.127";
    }

    public void logIn(Activity activity, Callback<TwitterSession> callback) {
        TwitterCore.checkInitialized();
        new TwitterAuthClient().authorize(activity, callback);
    }

    public void logInGuest(Callback<AppSession> callback) {
        TwitterCore.checkInitialized();
        new GuestAuthClient(new OAuth2Service(this, this.getSSLSocketFactory(), new TwitterApi())).authorize(this.appSessionManager, callback);
    }

    public void logOut() {
        TwitterCore.checkInitialized();
        SessionManager<TwitterSession> sessionManager = this.getSessionManager();
        if (sessionManager != null) {
            sessionManager.clearActiveSession();
        }
    }

    @Override
    protected boolean onPreExecute() {
        new MigrationHelper().migrateSessionStore(this.getContext(), this.getIdentifier(), this.getIdentifier() + ":" + "session_store" + ".xml");
        this.twitterSessionManager = new PersistedSessionManager((PreferenceStore)new PreferenceStoreImpl(this.getContext(), "session_store"), (SerializationStrategy)new TwitterSession.Serializer(), "active_twittersession", "twittersession");
        this.sessionMonitor = new SessionMonitor(this.twitterSessionManager, this.getFabric().getExecutorService(), (SessionVerifier)new TwitterSessionVerifier());
        this.appSessionManager = new PersistedSessionManager((PreferenceStore)new PreferenceStoreImpl(this.getContext(), "session_store"), (SerializationStrategy)new AppSession.Serializer(), "active_appsession", "appsession");
        return true;
    }
}

