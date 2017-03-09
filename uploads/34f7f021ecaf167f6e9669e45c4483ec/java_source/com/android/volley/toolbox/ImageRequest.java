/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.BitmapFactory
 *  android.graphics.BitmapFactory$Options
 *  android.widget.ImageView
 *  android.widget.ImageView$ScaleType
 */
package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.RetryPolicy;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.HttpHeaderParser;

public class ImageRequest
extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;
    private static final Object sDecodeLock = new Object();
    private final Bitmap.Config mDecodeConfig;
    private final Response.Listener<Bitmap> mListener;
    private final int mMaxHeight;
    private final int mMaxWidth;
    private ImageView.ScaleType mScaleType;

    @Deprecated
    public ImageRequest(String string2, Response.Listener<Bitmap> listener, int n2, int n3, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(string2, listener, n2, n3, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String string2, Response.Listener<Bitmap> listener, int n2, int n3, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, string2, errorListener);
        this.setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.mListener = listener;
        this.mDecodeConfig = config;
        this.mMaxWidth = n2;
        this.mMaxHeight = n3;
        this.mScaleType = scaleType;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Response<Bitmap> doParse(NetworkResponse networkResponse) {
        Bitmap bitmap = networkResponse.data;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.mMaxWidth == 0 && this.mMaxHeight == 0) {
            options.inPreferredConfig = this.mDecodeConfig;
            bitmap = BitmapFactory.decodeByteArray((byte[])bitmap, (int)0, (int)bitmap.length, (BitmapFactory.Options)options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray((byte[])bitmap, (int)0, (int)bitmap.length, (BitmapFactory.Options)options);
            int n2 = options.outWidth;
            int n3 = options.outHeight;
            int n4 = ImageRequest.getResizedDimension(this.mMaxWidth, this.mMaxHeight, n2, n3, this.mScaleType);
            int n5 = ImageRequest.getResizedDimension(this.mMaxHeight, this.mMaxWidth, n3, n2, this.mScaleType);
            options.inJustDecodeBounds = false;
            options.inSampleSize = ImageRequest.findBestSampleSize(n2, n3, n4, n5);
            if ((bitmap = BitmapFactory.decodeByteArray((byte[])bitmap, (int)0, (int)bitmap.length, (BitmapFactory.Options)options)) != null && (bitmap.getWidth() > n4 || bitmap.getHeight() > n5)) {
                options = Bitmap.createScaledBitmap((Bitmap)bitmap, (int)n4, (int)n5, (boolean)true);
                bitmap.recycle();
                bitmap = options;
            }
        }
        if (bitmap == null) {
            return Response.error(new ParseError(networkResponse));
        }
        return Response.success(bitmap, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    static int findBestSampleSize(int n2, int n3, int n4, int n5) {
        double d2 = Math.min((double)n2 / (double)n4, (double)n3 / (double)n5);
        float f2 = 1.0f;
        while ((double)(2.0f * f2) <= d2) {
            f2 *= 2.0f;
        }
        return (int)f2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int getResizedDimension(int n2, int n3, int n4, int n5, ImageView.ScaleType scaleType) {
        if (n2 == 0 && n3 == 0) {
            return n4;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            if (n2 == 0) return n4;
            return n2;
        }
        if (n2 == 0) {
            double d2 = (double)n3 / (double)n5;
            return (int)((double)n4 * d2);
        }
        if (n3 == 0) {
            return n2;
        }
        double d3 = (double)n5 / (double)n4;
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            n4 = n2;
            if ((double)n2 * d3 >= (double)n3) return n4;
            return (int)((double)n3 / d3);
        }
        n4 = n2;
        if ((double)n2 * d3 <= (double)n3) return n4;
        return (int)((double)n3 / d3);
    }

    @Override
    protected void deliverResponse(Bitmap bitmap) {
        this.mListener.onResponse(bitmap);
    }

    @Override
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected Response<Bitmap> parseNetworkResponse(NetworkResponse object) {
        Object object2 = sDecodeLock;
        synchronized (object2) {
            try {
                return this.doParse((NetworkResponse)object);
            }
            catch (OutOfMemoryError var3_4) {
                VolleyLog.e("Caught OOM for %d byte image, url=%s", object.data.length, this.getUrl());
                return Response.error(new ParseError(var3_4));
            }
        }
    }
}

