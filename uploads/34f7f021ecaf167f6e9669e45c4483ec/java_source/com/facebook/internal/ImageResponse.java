/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 */
package com.facebook.internal;

import android.graphics.Bitmap;
import com.facebook.internal.ImageRequest;

public class ImageResponse {
    private Bitmap bitmap;
    private Exception error;
    private boolean isCachedRedirect;
    private ImageRequest request;

    ImageResponse(ImageRequest imageRequest, Exception exception, boolean bl, Bitmap bitmap) {
        this.request = imageRequest;
        this.error = exception;
        this.bitmap = bitmap;
        this.isCachedRedirect = bl;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public Exception getError() {
        return this.error;
    }

    public ImageRequest getRequest() {
        return this.request;
    }

    public boolean isCachedRedirect() {
        return this.isCachedRedirect;
    }
}

