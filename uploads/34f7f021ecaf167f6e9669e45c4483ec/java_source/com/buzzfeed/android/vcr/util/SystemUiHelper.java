/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.Handler
 *  android.os.Looper
 *  android.view.Window
 */
package com.buzzfeed.android.vcr.util;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.Window;
import com.buzzfeed.android.vcr.util.SystemUiHelperImplJB;
import com.buzzfeed.android.vcr.util.SystemUiHelperImplKK;
import com.buzzfeed.toolkit.util.VersionUtil;

public final class SystemUiHelper {
    public static final int FLAG_IMMERSIVE_STICKY = 2;
    public static final int FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES = 1;
    public static final int LEVEL_HIDE_STATUS_BAR = 1;
    public static final int LEVEL_IMMERSIVE = 3;
    public static final int LEVEL_LEAN_BACK = 2;
    public static final int LEVEL_LOW_PROFILE = 0;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final Runnable mHideRunnable;
    private final SystemUiHelperImpl mImpl;

    public SystemUiHelper(Activity activity, int n2, int n3) {
        this(activity, n2, n3, null);
    }

    public SystemUiHelper(Activity activity, int n2, int n3, OnVisibilityChangeListener onVisibilityChangeListener) {
        this.mHideRunnable = new HideRunnable();
        if (VersionUtil.hasKitKat()) {
            this.mImpl = new SystemUiHelperImplKK(activity, n2, n3, onVisibilityChangeListener);
            return;
        }
        if (VersionUtil.hasJellyBean()) {
            this.mImpl = new SystemUiHelperImplJB(activity, n2, n3, onVisibilityChangeListener);
            return;
        }
        this.mImpl = new SystemUiHelperImplBase(activity, n2, n3, onVisibilityChangeListener);
    }

    public void cancelHide() {
        this.mHandler.removeCallbacks(this.mHideRunnable);
    }

    public void delayHide(long l2) {
        this.cancelHide();
        this.mHandler.postDelayed(this.mHideRunnable, l2);
    }

    public void detachView() {
        this.cancelHide();
        this.mImpl.detachView();
    }

    public void hide() {
        this.cancelHide();
        this.mImpl.hide();
    }

    public boolean isShowing() {
        return this.mImpl.isShowing();
    }

    public void show() {
        this.cancelHide();
        this.mImpl.show();
    }

    public void toggle() {
        if (this.mImpl.isShowing()) {
            this.mImpl.hide();
            return;
        }
        this.mImpl.show();
    }

    private class HideRunnable
    implements Runnable {
        private HideRunnable() {
        }

        @Override
        public void run() {
            SystemUiHelper.this.hide();
        }
    }

    public static interface OnVisibilityChangeListener {
        public void onSystemUiVisibilityChange(boolean var1);
    }

    static abstract class SystemUiHelperImpl {
        Activity mActivity;
        final int mFlags;
        boolean mIsAttached;
        boolean mIsShowing = true;
        final int mLevel;
        final OnVisibilityChangeListener mOnVisibilityChangeListener;

        SystemUiHelperImpl(Activity activity, int n2, int n3, OnVisibilityChangeListener onVisibilityChangeListener) {
            this.mActivity = activity;
            this.mLevel = n2;
            this.mFlags = n3;
            this.mOnVisibilityChangeListener = onVisibilityChangeListener;
            this.mIsAttached = true;
        }

        public void detachView() {
            this.mActivity = null;
            this.mIsAttached = false;
        }

        abstract void hide();

        boolean isShowing() {
            return this.mIsShowing;
        }

        void setIsShowing(boolean bl) {
            this.mIsShowing = bl;
            if (this.mOnVisibilityChangeListener != null) {
                this.mOnVisibilityChangeListener.onSystemUiVisibilityChange(this.mIsShowing);
            }
        }

        abstract void show();
    }

    static class SystemUiHelperImplBase
    extends SystemUiHelperImpl {
        SystemUiHelperImplBase(Activity activity, int n2, int n3, OnVisibilityChangeListener onVisibilityChangeListener) {
            super(activity, n2, n3, onVisibilityChangeListener);
            if ((this.mFlags & 1) != 0) {
                this.mActivity.getWindow().addFlags(768);
            }
        }

        @Override
        void hide() {
            if (this.mIsAttached && this.mLevel > 0) {
                this.mActivity.getWindow().addFlags(1024);
                this.setIsShowing(false);
            }
        }

        @Override
        void show() {
            if (this.mIsAttached && this.mLevel > 0) {
                this.mActivity.getWindow().clearFlags(1024);
                this.setIsShowing(true);
            }
        }
    }

}

