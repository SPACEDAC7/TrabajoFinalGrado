/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Handler$Callback
 *  android.os.Looper
 *  android.os.Message
 */
package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;

class ResourceRecycler {
    private final Handler handler = new Handler(Looper.getMainLooper(), (Handler.Callback)new ResourceRecyclerCallback());
    private boolean isRecycling;

    ResourceRecycler() {
    }

    public void recycle(Resource<?> resource) {
        Util.assertMainThread();
        if (this.isRecycling) {
            this.handler.obtainMessage(1, resource).sendToTarget();
            return;
        }
        this.isRecycling = true;
        resource.recycle();
        this.isRecycling = false;
    }

    private static class ResourceRecyclerCallback
    implements Handler.Callback {
        public static final int RECYCLE_RESOURCE = 1;

        private ResourceRecyclerCallback() {
        }

        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((Resource)message.obj).recycle();
                return true;
            }
            return false;
        }
    }

}

