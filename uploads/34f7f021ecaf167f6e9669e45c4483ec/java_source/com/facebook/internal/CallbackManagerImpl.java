/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 */
package com.facebook.internal;

import android.content.Intent;
import com.facebook.CallbackManager;
import com.facebook.FacebookSdk;
import com.facebook.internal.Validate;
import java.util.HashMap;
import java.util.Map;

public final class CallbackManagerImpl
implements CallbackManager {
    private static Map<Integer, Callback> staticCallbacks = new HashMap<Integer, Callback>();
    private Map<Integer, Callback> callbacks = new HashMap<Integer, Callback>();

    private static Callback getStaticCallback(Integer object) {
        synchronized (CallbackManagerImpl.class) {
            object = staticCallbacks.get(object);
            return object;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void registerStaticCallback(int n2, Callback callback) {
        synchronized (CallbackManagerImpl.class) {
            block6 : {
                Validate.notNull(callback, "callback");
                boolean bl = staticCallbacks.containsKey(n2);
                if (!bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            staticCallbacks.put(n2, callback);
            return;
        }
    }

    private static boolean runStaticCallback(int n2, int n3, Intent intent) {
        Callback callback = CallbackManagerImpl.getStaticCallback(n2);
        if (callback != null) {
            return callback.onActivityResult(n3, intent);
        }
        return false;
    }

    @Override
    public boolean onActivityResult(int n2, int n3, Intent intent) {
        Callback callback = this.callbacks.get(n2);
        if (callback != null) {
            return callback.onActivityResult(n3, intent);
        }
        return CallbackManagerImpl.runStaticCallback(n2, n3, intent);
    }

    public void registerCallback(int n2, Callback callback) {
        Validate.notNull(callback, "callback");
        this.callbacks.put(n2, callback);
    }

    public static interface Callback {
        public boolean onActivityResult(int var1, Intent var2);
    }

    public static enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7);
        
        private final int offset;

        private RequestCodeOffset(int n3) {
            this.offset = n3;
        }

        public int toRequestCode() {
            return FacebookSdk.getCallbackRequestCodeOffset() + this.offset;
        }
    }

}

