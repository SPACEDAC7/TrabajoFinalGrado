/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.SurfaceTexture
 *  android.view.TextureView
 *  android.view.TextureView$SurfaceTextureListener
 */
package com.buzzfeed.android.vcr.player;

import android.graphics.SurfaceTexture;
import android.view.TextureView;

public class ClearSurfaceTextureListener
implements TextureView.SurfaceTextureListener {
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int n2, int n3) {
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int n2, int n3) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}

