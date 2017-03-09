/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Service
 */
package android.support.v4.app;

import android.app.Service;
import android.support.annotation.RestrictTo;
import android.support.v4.app.ServiceCompatApi24;
import android.support.v4.os.BuildCompat;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class ServiceCompat {
    static final ServiceCompatImpl IMPL = BuildCompat.isAtLeastN() ? new Api24ServiceCompatImpl() : new BaseServiceCompatImpl();
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    private ServiceCompat() {
    }

    public static void stopForeground(Service service, int n2) {
        IMPL.stopForeground(service, n2);
    }

    static class Api24ServiceCompatImpl
    implements ServiceCompatImpl {
        Api24ServiceCompatImpl() {
        }

        @Override
        public void stopForeground(Service service, int n2) {
            ServiceCompatApi24.stopForeground(service, n2);
        }
    }

    static class BaseServiceCompatImpl
    implements ServiceCompatImpl {
        BaseServiceCompatImpl() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void stopForeground(Service service, int n2) {
            boolean bl = (n2 & 1) != 0;
            service.stopForeground(bl);
        }
    }

    static interface ServiceCompatImpl {
        public void stopForeground(Service var1, int var2);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface StopForegroundFlags {
    }

}

