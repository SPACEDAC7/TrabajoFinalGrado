/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.SurfaceTexture
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.buzzfeed.android.vcr.view;

import android.graphics.SurfaceTexture;
import android.os.Build;
import com.buzzfeed.toolkit.util.LogUtil;

public class SharedSurfaceTexture
extends SurfaceTexture {
    private static final String TAG = SharedSurfaceTexture.class.getSimpleName();

    public SharedSurfaceTexture() {
        super(0);
        this.detachFromGLContext();
    }

    private void safelyDetachFromGlContext() {
        try {
            super.detachFromGLContext();
            return;
        }
        catch (RuntimeException var1_1) {
            LogUtil.w(TAG, "error with detachFromGLContext");
            return;
        }
    }

    public void detachFromGLContext() {
        if (Build.VERSION.SDK_INT < 21) {
            this.safelyDetachFromGlContext();
            return;
        }
        super.detachFromGLContext();
    }
}

