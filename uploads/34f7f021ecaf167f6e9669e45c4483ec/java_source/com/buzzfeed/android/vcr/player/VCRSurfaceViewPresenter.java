/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.Surface
 *  android.view.SurfaceHolder
 *  android.view.SurfaceHolder$Callback
 *  android.view.SurfaceView
 *  android.view.View
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.toolkit.util.EZUtil;

public abstract class VCRSurfaceViewPresenter<T extends View>
extends VideoSurfacePresenter<T> {
    private VCRSurfaceViewPresenter<T> mCallback;
    @Nullable
    protected SurfaceView mSurfaceView;
    @Nullable
    protected T mTargetView;

    public VCRSurfaceViewPresenter(Context context) {
        super(context);
        this.mCallback = new SurfaceHolderCallback();
    }

    @Nullable
    public T getTargetView() {
        return this.mTargetView;
    }

    protected abstract SurfaceView onBindSurfaceView(T var1);

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void setTargetView(@Nullable T object) {
        if (this.mTargetView == object) {
            return;
        }
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback(this.mCallback);
        }
        this.mTargetView = object;
        if (this.mTargetView != null) {
            this.mSurfaceView = this.onBindSurfaceView(object);
            EZUtil.checkNotNull(this.mSurfaceView, "onBindSurfaceView must return a non null value.");
            this.mSurfaceView.getHolder().addCallback(this.mCallback);
            object = this.mSurfaceView.getHolder().getSurface();
            if (object == null) return;
            this.setSurface((Surface)object);
            return;
        }
        this.mSurfaceView = null;
    }

    private class SurfaceHolderCallback
    implements SurfaceHolder.Callback {
        private SurfaceHolderCallback() {
        }

        public void surfaceChanged(SurfaceHolder surfaceHolder, int n2, int n3, int n4) {
        }

        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            VCRSurfaceViewPresenter.this.setSurface(surfaceHolder.getSurface());
        }

        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            VCRSurfaceViewPresenter.this.blockingClearSurface();
        }
    }

}

