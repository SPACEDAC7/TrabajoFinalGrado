/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Fragment
 *  android.content.pm.PackageManager
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Handler
 *  android.os.Looper
 */
package android.support.v13.app;

import android.app.Activity;
import android.app.Fragment;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v13.app.FragmentCompat23;
import android.support.v13.app.FragmentCompatApi24;
import android.support.v13.app.FragmentCompatICS;
import android.support.v13.app.FragmentCompatICSMR1;
import android.support.v4.os.BuildCompat;
import java.util.Arrays;

public class FragmentCompat {
    static final FragmentCompatImpl IMPL = BuildCompat.isAtLeastN() ? new NFragmentCompatImpl() : (Build.VERSION.SDK_INT >= 23 ? new MncFragmentCompatImpl() : (Build.VERSION.SDK_INT >= 15 ? new ICSMR1FragmentCompatImpl() : (Build.VERSION.SDK_INT >= 14 ? new ICSFragmentCompatImpl() : new BaseFragmentCompatImpl())));

    public static void requestPermissions(@NonNull Fragment fragment, @NonNull String[] arrstring, int n2) {
        IMPL.requestPermissions(fragment, arrstring, n2);
    }

    public static void setMenuVisibility(Fragment fragment, boolean bl) {
        IMPL.setMenuVisibility(fragment, bl);
    }

    public static void setUserVisibleHint(Fragment fragment, boolean bl) {
        IMPL.setUserVisibleHint(fragment, bl);
    }

    public static boolean shouldShowRequestPermissionRationale(@NonNull Fragment fragment, @NonNull String string2) {
        return IMPL.shouldShowRequestPermissionRationale(fragment, string2);
    }

    static class BaseFragmentCompatImpl
    implements FragmentCompatImpl {
        BaseFragmentCompatImpl() {
        }

        @Override
        public void requestPermissions(final Fragment fragment, final String[] arrstring, final int n2) {
            new Handler(Looper.getMainLooper()).post(new Runnable(){

                @Override
                public void run() {
                    int[] arrn = new int[arrstring.length];
                    Object object = fragment.getActivity();
                    if (object != null) {
                        PackageManager packageManager = object.getPackageManager();
                        object = object.getPackageName();
                        int n22 = arrstring.length;
                        for (int i2 = 0; i2 < n22; ++i2) {
                            arrn[i2] = packageManager.checkPermission(arrstring[i2], (String)object);
                        }
                    } else {
                        Arrays.fill(arrn, -1);
                    }
                    ((OnRequestPermissionsResultCallback)fragment).onRequestPermissionsResult(n2, arrstring, arrn);
                }
            });
        }

        @Override
        public void setMenuVisibility(Fragment fragment, boolean bl) {
        }

        @Override
        public void setUserVisibleHint(Fragment fragment, boolean bl) {
        }

        @Override
        public boolean shouldShowRequestPermissionRationale(Fragment fragment, String string2) {
            return false;
        }

    }

    static interface FragmentCompatImpl {
        public void requestPermissions(Fragment var1, String[] var2, int var3);

        public void setMenuVisibility(Fragment var1, boolean var2);

        public void setUserVisibleHint(Fragment var1, boolean var2);

        public boolean shouldShowRequestPermissionRationale(Fragment var1, String var2);
    }

    static class ICSFragmentCompatImpl
    extends BaseFragmentCompatImpl {
        ICSFragmentCompatImpl() {
        }

        @Override
        public void setMenuVisibility(Fragment fragment, boolean bl) {
            FragmentCompatICS.setMenuVisibility(fragment, bl);
        }
    }

    static class ICSMR1FragmentCompatImpl
    extends ICSFragmentCompatImpl {
        ICSMR1FragmentCompatImpl() {
        }

        @Override
        public void setUserVisibleHint(Fragment fragment, boolean bl) {
            FragmentCompatICSMR1.setUserVisibleHint(fragment, bl);
        }
    }

    static class MncFragmentCompatImpl
    extends ICSMR1FragmentCompatImpl {
        MncFragmentCompatImpl() {
        }

        @Override
        public void requestPermissions(Fragment fragment, String[] arrstring, int n2) {
            FragmentCompat23.requestPermissions(fragment, arrstring, n2);
        }

        @Override
        public boolean shouldShowRequestPermissionRationale(Fragment fragment, String string2) {
            return FragmentCompat23.shouldShowRequestPermissionRationale(fragment, string2);
        }
    }

    static class NFragmentCompatImpl
    extends MncFragmentCompatImpl {
        NFragmentCompatImpl() {
        }

        @Override
        public void setUserVisibleHint(Fragment fragment, boolean bl) {
            FragmentCompatApi24.setUserVisibleHint(fragment, bl);
        }
    }

    public static interface OnRequestPermissionsResultCallback {
        public void onRequestPermissionsResult(int var1, @NonNull String[] var2, @NonNull int[] var3);
    }

}

