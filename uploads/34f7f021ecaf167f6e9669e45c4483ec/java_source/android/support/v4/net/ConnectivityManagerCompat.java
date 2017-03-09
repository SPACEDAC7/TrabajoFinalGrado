/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcelable
 */
package android.support.v4.net;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.net.ConnectivityManagerCompatApi24;
import android.support.v4.net.ConnectivityManagerCompatHoneycombMR2;
import android.support.v4.net.ConnectivityManagerCompatJellyBean;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class ConnectivityManagerCompat {
    private static final ConnectivityManagerCompatImpl IMPL = Build.VERSION.SDK_INT >= 24 ? new Api24ConnectivityManagerCompatImpl() : (Build.VERSION.SDK_INT >= 16 ? new JellyBeanConnectivityManagerCompatImpl() : (Build.VERSION.SDK_INT >= 13 ? new HoneycombMR2ConnectivityManagerCompatImpl() : new BaseConnectivityManagerCompatImpl()));
    public static final int RESTRICT_BACKGROUND_STATUS_DISABLED = 1;
    public static final int RESTRICT_BACKGROUND_STATUS_ENABLED = 3;
    public static final int RESTRICT_BACKGROUND_STATUS_WHITELISTED = 2;

    private ConnectivityManagerCompat() {
    }

    public static NetworkInfo getNetworkInfoFromBroadcast(ConnectivityManager connectivityManager, Intent intent) {
        if ((intent = (NetworkInfo)intent.getParcelableExtra("networkInfo")) != null) {
            return connectivityManager.getNetworkInfo(intent.getType());
        }
        return null;
    }

    public static int getRestrictBackgroundStatus(ConnectivityManager connectivityManager) {
        return IMPL.getRestrictBackgroundStatus(connectivityManager);
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        return IMPL.isActiveNetworkMetered(connectivityManager);
    }

    static class Api24ConnectivityManagerCompatImpl
    extends JellyBeanConnectivityManagerCompatImpl {
        Api24ConnectivityManagerCompatImpl() {
        }

        @Override
        public int getRestrictBackgroundStatus(ConnectivityManager connectivityManager) {
            return ConnectivityManagerCompatApi24.getRestrictBackgroundStatus(connectivityManager);
        }
    }

    static class BaseConnectivityManagerCompatImpl
    implements ConnectivityManagerCompatImpl {
        BaseConnectivityManagerCompatImpl() {
        }

        @Override
        public int getRestrictBackgroundStatus(ConnectivityManager connectivityManager) {
            return 3;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
            if ((connectivityManager = connectivityManager.getActiveNetworkInfo()) == null) {
                do {
                    return true;
                    break;
                } while (true);
            }
            switch (connectivityManager.getType()) {
                case 0: 
                case 2: 
                case 3: 
                case 4: 
                case 5: 
                case 6: {
                    return true;
                }
                default: {
                    return true;
                }
                case 1: 
            }
            return false;
        }
    }

    static interface ConnectivityManagerCompatImpl {
        public int getRestrictBackgroundStatus(ConnectivityManager var1);

        public boolean isActiveNetworkMetered(ConnectivityManager var1);
    }

    static class HoneycombMR2ConnectivityManagerCompatImpl
    extends BaseConnectivityManagerCompatImpl {
        HoneycombMR2ConnectivityManagerCompatImpl() {
        }

        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
            return ConnectivityManagerCompatHoneycombMR2.isActiveNetworkMetered(connectivityManager);
        }
    }

    static class JellyBeanConnectivityManagerCompatImpl
    extends HoneycombMR2ConnectivityManagerCompatImpl {
        JellyBeanConnectivityManagerCompatImpl() {
        }

        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
            return ConnectivityManagerCompatJellyBean.isActiveNetworkMetered(connectivityManager);
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface RestrictBackgroundStatus {
    }

}

