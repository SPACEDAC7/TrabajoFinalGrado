/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.SurfaceTexture
 *  android.text.TextUtils
 *  android.view.Surface
 *  android.view.TextureView
 *  android.view.TextureView$SurfaceTextureListener
 *  android.view.View
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.google.android.exoplayer.util.Util;

public abstract class VCRTextureViewPresenter<T extends View>
extends VideoSurfacePresenter<T> {
    private VCRTextureViewPresenter<T> mListener;
    @Nullable
    protected SurfaceTexture mSavedSurfaceTexture;
    @Nullable
    protected T mTargetView;
    @Nullable
    protected TextureView mTextureView;

    public VCRTextureViewPresenter(Context context) {
        super(context);
        this.mListener = new SurfaceTextureListener();
    }

    private boolean isReadyForSurfaceTextureAttach() {
        if (this.isPrepared() && VersionUtil.hasJellyBeanMR2()) {
            return true;
        }
        return false;
    }

    protected void clearSurfaceTextureListener() {
        if (this.mTextureView != null) {
            this.mTextureView.setSurfaceTextureListener(null);
        }
    }

    @Nullable
    public T getTargetView() {
        return this.mTargetView;
    }

    public boolean isReadyToPlay() {
        if (this.mTargetView != null && !TextUtils.isEmpty((CharSequence)this.getContent()) && this.mPlayWhenReady) {
            return true;
        }
        return false;
    }

    protected abstract TextureView onBindTextureView(T var1);

    @Override
    protected void onPlayerReleased(long l2) {
        super.onPlayerReleased(l2);
        this.mSavedSurfaceTexture = null;
    }

    protected void onSurfaceTextureRestored() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTargetView(@Nullable T t2) {
        if (this.mTargetView == t2) return;
        this.clearSurfaceTextureListener();
        this.mTargetView = t2;
        if (this.mTargetView == null) {
            this.mTextureView = null;
            return;
        }
        this.mTextureView = this.onBindTextureView(this.mTargetView);
        EZUtil.checkNotNull(this.mTextureView, "TextureView must not be null.");
        this.mTextureView.setSurfaceTextureListener(this.mListener);
        if (this.isReadyForSurfaceTextureAttach()) {
            boolean bl = Util.areEqual((Object)this.mSavedSurfaceTexture, (Object)this.mTextureView.getSurfaceTexture());
            if (this.mSavedSurfaceTexture == null || bl) return;
            {
                this.mTextureView.setSurfaceTexture(this.mSavedSurfaceTexture);
                this.onSurfaceTextureRestored();
                return;
            }
        }
        if (!this.mTextureView.isAvailable()) {
            return;
        }
        this.mSavedSurfaceTexture = this.mTextureView.getSurfaceTexture();
        this.setSurface(new Surface(this.mSavedSurfaceTexture));
    }

    private class SurfaceTextureListener
    implements TextureView.SurfaceTextureListener {
        private SurfaceTextureListener() {
        }

        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int n2, int n3) {
            VCRTextureViewPresenter.this.mSavedSurfaceTexture = surfaceTexture;
            VCRTextureViewPresenter.this.setSurface(new Surface(VCRTextureViewPresenter.this.mSavedSurfaceTexture));
        }

        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            VCRTextureViewPresenter.this.blockingClearSurface();
            return false;
        }

        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int n2, int n3) {
        }

        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

}

