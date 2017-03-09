/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.ServiceConnection
 *  android.os.IBinder
 */
package com.comscore.android.id;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.comscore.android.id.a;
import java.util.concurrent.LinkedBlockingQueue;

final class b
implements ServiceConnection {
    boolean a = false;
    private final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);

    private b() {
    }

    /* synthetic */ b(a a2) {
        this();
    }

    public IBinder getBinder() {
        if (this.a) {
            throw new IllegalStateException();
        }
        this.a = true;
        return this.b.take();
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.b.put(iBinder);
            return;
        }
        catch (InterruptedException var1_2) {
            return;
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
    }
}

