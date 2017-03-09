/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.content.pm.PackageManager
 *  android.graphics.Matrix
 *  android.graphics.RectF
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.Parcelable
 *  android.view.View
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompatApi21;
import android.support.v4.app.ActivityCompatApi22;
import android.support.v4.app.ActivityCompatApi23;
import android.support.v4.app.ActivityCompatHoneycomb;
import android.support.v4.app.ActivityCompatJB;
import android.support.v4.app.SharedElementCallback;
import android.support.v4.content.ContextCompat;
import android.view.View;
import java.util.List;
import java.util.Map;

public class ActivityCompat
extends ContextCompat {
    protected ActivityCompat() {
    }

    private static ActivityCompatApi21.SharedElementCallback21 createCallback(SharedElementCallback sharedElementCallback) {
        SharedElementCallback21Impl sharedElementCallback21Impl = null;
        if (sharedElementCallback != null) {
            sharedElementCallback21Impl = new SharedElementCallback21Impl(sharedElementCallback);
        }
        return sharedElementCallback21Impl;
    }

    private static ActivityCompatApi23.SharedElementCallback23 createCallback23(SharedElementCallback sharedElementCallback) {
        SharedElementCallback23Impl sharedElementCallback23Impl = null;
        if (sharedElementCallback != null) {
            sharedElementCallback23Impl = new SharedElementCallback23Impl(sharedElementCallback);
        }
        return sharedElementCallback23Impl;
    }

    public static void finishAffinity(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityCompatJB.finishAffinity(activity);
            return;
        }
        activity.finish();
    }

    public static void finishAfterTransition(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.finishAfterTransition(activity);
            return;
        }
        activity.finish();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Nullable
    public static Uri getReferrer(Activity object) {
        Uri uri;
        if (Build.VERSION.SDK_INT >= 22) {
            return ActivityCompatApi22.getReferrer((Activity)object);
        }
        Intent intent = object.getIntent();
        object = uri = (Uri)intent.getParcelableExtra("android.intent.extra.REFERRER");
        if (uri != null) return object;
        object = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (object == null) return null;
        return Uri.parse((String)object);
    }

    public static boolean invalidateOptionsMenu(Activity activity) {
        if (Build.VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(activity);
            return true;
        }
        return false;
    }

    public static void postponeEnterTransition(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.postponeEnterTransition(activity);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void requestPermissions(final @NonNull Activity activity, final @NonNull String[] arrstring, final @IntRange(from=0) int n2) {
        if (Build.VERSION.SDK_INT >= 23) {
            ActivityCompatApi23.requestPermissions(activity, arrstring, n2);
            return;
        } else {
            if (!(activity instanceof OnRequestPermissionsResultCallback)) return;
            {
                new Handler(Looper.getMainLooper()).post(new Runnable(){

                    @Override
                    public void run() {
                        int[] arrn = new int[arrstring.length];
                        PackageManager packageManager = activity.getPackageManager();
                        String string2 = activity.getPackageName();
                        int n22 = arrstring.length;
                        for (int i2 = 0; i2 < n22; ++i2) {
                            arrn[i2] = packageManager.checkPermission(arrstring[i2], string2);
                        }
                        ((OnRequestPermissionsResultCallback)activity).onRequestPermissionsResult(n2, arrstring, arrn);
                    }
                });
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setEnterSharedElementCallback(Activity activity, SharedElementCallback sharedElementCallback) {
        if (Build.VERSION.SDK_INT >= 23) {
            ActivityCompatApi23.setEnterSharedElementCallback(activity, ActivityCompat.createCallback23(sharedElementCallback));
            return;
        } else {
            if (Build.VERSION.SDK_INT < 21) return;
            {
                ActivityCompatApi21.setEnterSharedElementCallback(activity, ActivityCompat.createCallback(sharedElementCallback));
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setExitSharedElementCallback(Activity activity, SharedElementCallback sharedElementCallback) {
        if (Build.VERSION.SDK_INT >= 23) {
            ActivityCompatApi23.setExitSharedElementCallback(activity, ActivityCompat.createCallback23(sharedElementCallback));
            return;
        } else {
            if (Build.VERSION.SDK_INT < 21) return;
            {
                ActivityCompatApi21.setExitSharedElementCallback(activity, ActivityCompat.createCallback(sharedElementCallback));
                return;
            }
        }
    }

    public static boolean shouldShowRequestPermissionRationale(@NonNull Activity activity, @NonNull String string2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ActivityCompatApi23.shouldShowRequestPermissionRationale(activity, string2);
        }
        return false;
    }

    public static void startActivityForResult(Activity activity, Intent intent, int n2, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityCompatJB.startActivityForResult(activity, intent, n2, bundle);
            return;
        }
        activity.startActivityForResult(intent, n2);
    }

    public static void startIntentSenderForResult(Activity activity, IntentSender intentSender, int n2, Intent intent, int n3, int n4, int n5, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityCompatJB.startIntentSenderForResult(activity, intentSender, n2, intent, n3, n4, n5, bundle);
            return;
        }
        activity.startIntentSenderForResult(intentSender, n2, intent, n3, n4, n5);
    }

    public static void startPostponedEnterTransition(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.startPostponedEnterTransition(activity);
        }
    }

    public static interface OnRequestPermissionsResultCallback {
        public void onRequestPermissionsResult(int var1, @NonNull String[] var2, @NonNull int[] var3);
    }

    private static class SharedElementCallback21Impl
    extends ActivityCompatApi21.SharedElementCallback21 {
        private SharedElementCallback mCallback;

        public SharedElementCallback21Impl(SharedElementCallback sharedElementCallback) {
            this.mCallback = sharedElementCallback;
        }

        @Override
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        @Override
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }

        @Override
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        @Override
        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        @Override
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        @Override
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }
    }

    private static class SharedElementCallback23Impl
    extends ActivityCompatApi23.SharedElementCallback23 {
        private SharedElementCallback mCallback;

        public SharedElementCallback23Impl(SharedElementCallback sharedElementCallback) {
            this.mCallback = sharedElementCallback;
        }

        @Override
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        @Override
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }

        @Override
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        @Override
        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        @Override
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        @Override
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }

        @Override
        public void onSharedElementsArrived(List<String> list, List<View> list2, final ActivityCompatApi23.OnSharedElementsReadyListenerBridge onSharedElementsReadyListenerBridge) {
            this.mCallback.onSharedElementsArrived(list, list2, new SharedElementCallback.OnSharedElementsReadyListener(){

                @Override
                public void onSharedElementsReady() {
                    onSharedElementsReadyListenerBridge.onSharedElementsReady();
                }
            });
        }

    }

}

