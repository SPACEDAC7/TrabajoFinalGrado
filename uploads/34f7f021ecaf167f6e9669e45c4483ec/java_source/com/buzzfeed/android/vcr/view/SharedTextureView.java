/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.graphics.SurfaceTexture
 *  android.util.AttributeSet
 *  android.view.TextureView
 */
package com.buzzfeed.android.vcr.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import com.buzzfeed.android.vcr.view.SharedSurfaceTexture;

public class SharedTextureView
extends TextureView {
    public SharedTextureView(Context context) {
        super(context);
        this.initialize();
    }

    public SharedTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public SharedTextureView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @TargetApi(value=21)
    public SharedTextureView(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    protected void initialize() {
        this.setSurfaceTexture((SurfaceTexture)new SharedSurfaceTexture());
    }

    protected void onAttachedToWindow() {
        if (!this.isAvailable()) {
            this.setSurfaceTexture((SurfaceTexture)new SharedSurfaceTexture());
        }
        super.onAttachedToWindow();
    }
}

