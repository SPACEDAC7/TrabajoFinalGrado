/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.SurfaceTexture
 *  android.view.Surface
 *  android.view.View
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.support.annotation.Nullable;
import android.view.Surface;
import android.view.View;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.android.vcr.view.SharedSurfaceTexture;
import com.buzzfeed.android.vcr.view.SurfaceTextureLayout;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.exoplayer.util.Util;

public class VCRSharedSurfaceTexturePresenter
extends VideoSurfacePresenter<SurfaceTextureLayout> {
    private static final String TAG = LogUtil.makeLogTag(VCRSharedSurfaceTexturePresenter.class);
    @Nullable
    protected SharedSurfaceTexture mSharedSurfaceTexture;
    @Nullable
    protected SurfaceTextureLayout mSurfaceTextureLayout;

    public VCRSharedSurfaceTexturePresenter(Context context) {
        super(context);
        this.setPositionCache(VCRConfig.getInstance().getGlobalPositionCache());
    }

    public void detachSharedSurfaceTexture() {
        if (this.mSurfaceTextureLayout != null && this.isReady()) {
            LogUtil.d(TAG + ".detachSharedSurfaceTexture", "surface is being detached");
            this.mSharedSurfaceTexture = this.mSurfaceTextureLayout.detachSurfaceTexture();
        }
        this.mSurfaceTextureLayout = null;
    }

    public SurfaceTextureLayout getTargetView() {
        return this.mSurfaceTextureLayout;
    }

    @Override
    protected void onPlayerReleased(long l2) {
        super.onPlayerReleased(l2);
        this.setSurface(null);
        this.mSharedSurfaceTexture = null;
    }

    protected void onSurfaceTextureRestored() {
    }

    @Override
    public void play() {
        super.play();
        if (this.mSurface == null && this.mSurfaceTextureLayout != null) {
            this.setSurface(new Surface((SurfaceTexture)this.mSurfaceTextureLayout.getSurfaceTexture()));
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void setTargetView(SurfaceTextureLayout surfaceTextureLayout) {
        if (this.mSurfaceTextureLayout == surfaceTextureLayout) {
            return;
        }
        this.mSurfaceTextureLayout = surfaceTextureLayout;
        if (this.mSurfaceTextureLayout == null) return;
        if (this.mSharedSurfaceTexture != null && this.isReady()) {
            if (Util.areEqual((Object)this.mSharedSurfaceTexture, (Object)this.mSurfaceTextureLayout.getSurfaceTexture())) return;
            LogUtil.d(TAG + ".setTargetView", "surface is being re attached ");
            this.mSurfaceTextureLayout.setSurfaceTexture(this.mSharedSurfaceTexture);
            this.onSurfaceTextureRestored();
            return;
        }
        this.setSurface(new Surface((SurfaceTexture)this.mSurfaceTextureLayout.getSurfaceTexture()));
    }

    @Override
    public void stop() {
        super.stop();
        this.setSurface(null);
    }
}

