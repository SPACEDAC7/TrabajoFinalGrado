/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.SurfaceTexture
 *  android.util.AttributeSet
 *  android.view.TextureView
 *  android.view.TextureView$SurfaceTextureListener
 *  android.view.View
 *  android.widget.FrameLayout
 *  android.widget.ImageView
 */
package com.buzzfeed.android.vcr.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.buzzfeed.android.vcr.player.ClearSurfaceTextureListener;
import com.buzzfeed.android.vcr.view.SharedSurfaceTexture;
import com.buzzfeed.android.vcr.view.SharedTextureView;

public class SurfaceTextureLayout
extends FrameLayout {
    private ImageView mImageView;
    private ClearSurfaceTextureListener mSurfaceTextureListener = new ClearSurfaceTextureListener();
    private TextureView mTextureView;

    public SurfaceTextureLayout(Context context) {
        this(context, null);
    }

    public SurfaceTextureLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SurfaceTextureLayout(Context context, AttributeSet attributeSet, int n2) {
        super(context.getApplicationContext(), attributeSet, n2);
        this.initialize();
    }

    @TargetApi(value=21)
    public SurfaceTextureLayout(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context.getApplicationContext(), attributeSet, n2, n3);
        this.initialize();
    }

    private TextureView createTextureView() {
        SharedTextureView sharedTextureView = new SharedTextureView(this.getContext());
        sharedTextureView.setSurfaceTextureListener((TextureView.SurfaceTextureListener)this.mSurfaceTextureListener);
        return sharedTextureView;
    }

    private void initialize() {
        Context context = this.getContext().getApplicationContext();
        this.mTextureView = this.createTextureView();
        this.addView((View)this.mTextureView);
        this.mImageView = new ImageView(context);
        this.mImageView.setVisibility(0);
        this.addView((View)this.mImageView);
        this.mTextureView.bringToFront();
    }

    public Bitmap createBitmap() {
        return this.mTextureView.getBitmap();
    }

    public SharedSurfaceTexture detachSurfaceTexture() {
        if (this.mTextureView == null) {
            return null;
        }
        SharedSurfaceTexture sharedSurfaceTexture = (SharedSurfaceTexture)this.mTextureView.getSurfaceTexture();
        this.setBitmap(this.mTextureView.getBitmap());
        this.removeView((View)this.mTextureView);
        this.addView((View)this.mTextureView);
        this.mImageView.bringToFront();
        return sharedSurfaceTexture;
    }

    public SharedSurfaceTexture getSurfaceTexture() {
        if (this.mTextureView.getSurfaceTexture() instanceof SharedSurfaceTexture) {
            return (SharedSurfaceTexture)this.mTextureView.getSurfaceTexture();
        }
        SharedSurfaceTexture sharedSurfaceTexture = new SharedSurfaceTexture();
        this.mTextureView.setSurfaceTexture((SurfaceTexture)sharedSurfaceTexture);
        return sharedSurfaceTexture;
    }

    public boolean isSurfaceTextureAvailable() {
        if (this.mTextureView.getSurfaceTexture() != null) {
            return true;
        }
        return false;
    }

    void setBitmap(Bitmap bitmap) {
        this.mImageView.setImageBitmap(bitmap);
        if (bitmap != null) {
            this.mImageView.setVisibility(0);
            this.mImageView.bringToFront();
        }
        this.mImageView.postInvalidateOnAnimation();
    }

    public void setSurfaceTexture(SharedSurfaceTexture sharedSurfaceTexture) {
        if (this.mTextureView == null) {
            this.mTextureView = this.createTextureView();
            this.addView((View)this.mTextureView);
        }
        this.mTextureView.setSurfaceTexture((SurfaceTexture)sharedSurfaceTexture);
        this.mTextureView.invalidate();
        this.mImageView.setImageBitmap(null);
        this.mTextureView.bringToFront();
    }
}

