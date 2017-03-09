/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.Surface
 *  android.view.TextureView
 *  android.view.TextureView$SurfaceTextureListener
 *  android.view.View
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import com.buzzfeed.android.vcr.player.ClearSurfaceTextureListener;
import com.buzzfeed.android.vcr.player.VCRTextureViewPresenter;

public class VCRDefaultVideoPlayerPresenter
extends VCRTextureViewPresenter<TextureView> {
    private final ClearSurfaceTextureListener mDummySurfaceTextureListener = new ClearSurfaceTextureListener();

    public VCRDefaultVideoPlayerPresenter(Context context) {
        super(context);
    }

    @Override
    protected void clearSurfaceTextureListener() {
        if (this.mTextureView != null) {
            this.mTextureView.setSurfaceTextureListener((TextureView.SurfaceTextureListener)this.mDummySurfaceTextureListener);
        }
    }

    @Override
    protected TextureView onBindTextureView(TextureView textureView) {
        return textureView;
    }

    @Override
    public void stop() {
        this.setSurface(null);
        super.stop();
    }
}

