/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.NotificationManager
 *  android.app.Service
 *  android.util.Log
 */
package jackpal.androidterm.compat;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ServiceForegroundCompat {
    private static Class<?>[] mSetForegroundSig = new Class[]{Boolean.TYPE};
    private static Class<?>[] mStartForegroundSig = new Class[]{Integer.TYPE, Notification.class};
    private static Class<?>[] mStopForegroundSig = new Class[]{Boolean.TYPE};
    private NotificationManager mNM;
    private Method mSetForeground;
    private Method mStartForeground;
    private Method mStopForeground;
    private int notifyId;
    private Service service;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public ServiceForegroundCompat(Service class_) {
        this.service = class_;
        this.mNM = (NotificationManager)class_.getSystemService("notification");
        class_ = class_.getClass();
        try {
            this.mStartForeground = class_.getMethod("startForeground", mStartForegroundSig);
            this.mStopForeground = class_.getMethod("stopForeground", mStopForegroundSig);
        }
        catch (NoSuchMethodException var2_3) {
            this.mStopForeground = null;
            this.mStartForeground = null;
        }
        try {
            this.mSetForeground = class_.getMethod("setForeground", mSetForegroundSig);
        }
        catch (NoSuchMethodException var1_2) {
            this.mSetForeground = null;
        }
        if (this.mStartForeground == null && this.mSetForeground == null) {
            throw new IllegalStateException("Neither startForeground() or setForeground() present!");
        }
    }

    private /* varargs */ void invokeMethod(Object object, Method method, Object ... arrobject) {
        try {
            method.invoke(object, arrobject);
            return;
        }
        catch (IllegalAccessException var1_2) {
            Log.w((String)"ServiceCompat", (String)"Unable to invoke method", (Throwable)var1_2);
            return;
        }
        catch (InvocationTargetException var1_3) {
            Log.w((String)"ServiceCompat", (String)"Method threw exception", (Throwable)var1_3.getCause());
            return;
        }
    }

    public void startForeground(int n, Notification notification) {
        if (this.mStartForeground != null) {
            this.invokeMethod((Object)this.service, this.mStartForeground, new Object[]{n, notification});
            return;
        }
        this.invokeMethod((Object)this.service, this.mSetForeground, Boolean.TRUE);
        this.mNM.notify(n, notification);
        this.notifyId = n;
    }

    public void stopForeground(boolean bl) {
        if (this.mStopForeground != null) {
            this.invokeMethod((Object)this.service, this.mStopForeground, bl);
            return;
        }
        if (bl) {
            this.mNM.cancel(this.notifyId);
        }
        this.invokeMethod((Object)this.service, this.mSetForeground, Boolean.FALSE);
    }
}

