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
 *  android.os.Message
 *  android.os.Messenger
 *  android.os.RemoteException
 */
package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.internal.NativeProtocol;

public abstract class PlatformServiceClient
implements ServiceConnection {
    private final String applicationId;
    private final Context context;
    private final Handler handler;
    private CompletedListener listener;
    private final int protocolVersion;
    private int replyMessage;
    private int requestMessage;
    private boolean running;
    private Messenger sender;

    public PlatformServiceClient(Context context, int n2, int n3, int n4, String string2) {
        Context context2 = context.getApplicationContext();
        if (context2 != null) {
            context = context2;
        }
        this.context = context;
        this.requestMessage = n2;
        this.replyMessage = n3;
        this.applicationId = string2;
        this.protocolVersion = n4;
        this.handler = new Handler(){

            public void handleMessage(Message message) {
                PlatformServiceClient.this.handleMessage(message);
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void callback(Bundle bundle) {
        if (!this.running) {
            return;
        }
        this.running = false;
        CompletedListener completedListener = this.listener;
        if (completedListener == null) return;
        completedListener.completed(bundle);
    }

    private void sendMessage() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
        this.populateRequestBundle(bundle);
        Message message = Message.obtain((Handler)null, (int)this.requestMessage);
        message.arg1 = this.protocolVersion;
        message.setData(bundle);
        message.replyTo = new Messenger(this.handler);
        try {
            this.sender.send(message);
            return;
        }
        catch (RemoteException var1_2) {
            this.callback(null);
            return;
        }
    }

    public void cancel() {
        this.running = false;
    }

    protected Context getContext() {
        return this.context;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void handleMessage(Message message) {
        if (message.what == this.replyMessage) {
            if ((message = message.getData()).getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                this.callback(null);
            } else {
                this.callback((Bundle)message);
            }
            this.context.unbindService((ServiceConnection)this);
        }
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.sender = new Messenger(iBinder);
        this.sendMessage();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onServiceDisconnected(ComponentName componentName) {
        this.sender = null;
        try {
            this.context.unbindService((ServiceConnection)this);
        }
        catch (IllegalArgumentException var1_2) {}
        this.callback(null);
    }

    protected abstract void populateRequestBundle(Bundle var1);

    public void setCompletedListener(CompletedListener completedListener) {
        this.listener = completedListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean start() {
        Intent intent;
        if (this.running || NativeProtocol.getLatestAvailableProtocolVersionForService(this.protocolVersion) == -1 || (intent = NativeProtocol.createPlatformServiceIntent(this.context)) == null) {
            return false;
        }
        this.running = true;
        this.context.bindService(intent, (ServiceConnection)this, 1);
        return true;
    }

    public static interface CompletedListener {
        public void completed(Bundle var1);
    }

}

