/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.os.Handler
 *  android.os.Looper
 *  android.widget.ImageView
 *  android.widget.ImageView$ScaleType
 */
package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;

public class ImageLoader {
    private int mBatchResponseDelayMs = 100;
    private final HashMap<String, BatchedImageRequest> mBatchedResponses = new HashMap();
    private final ImageCache mCache;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final HashMap<String, BatchedImageRequest> mInFlightRequests = new HashMap();
    private final RequestQueue mRequestQueue;
    private Runnable mRunnable;

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.mRequestQueue = requestQueue;
        this.mCache = imageCache;
    }

    private void batchResponse(String string2, BatchedImageRequest batchedImageRequest) {
        this.mBatchedResponses.put(string2, batchedImageRequest);
        if (this.mRunnable == null) {
            this.mRunnable = new Runnable(){

                @Override
                public void run() {
                    for (BatchedImageRequest batchedImageRequest : ImageLoader.this.mBatchedResponses.values()) {
                        for (ImageContainer imageContainer : batchedImageRequest.mContainers) {
                            if (imageContainer.mListener == null) continue;
                            if (batchedImageRequest.getError() == null) {
                                imageContainer.mBitmap = batchedImageRequest.mResponseBitmap;
                                imageContainer.mListener.onResponse(imageContainer, false);
                                continue;
                            }
                            imageContainer.mListener.onErrorResponse(batchedImageRequest.getError());
                        }
                    }
                    ImageLoader.this.mBatchedResponses.clear();
                    ImageLoader.this.mRunnable = null;
                }
            };
            this.mHandler.postDelayed(this.mRunnable, (long)this.mBatchResponseDelayMs);
        }
    }

    private static String getCacheKey(String string2, int n2, int n3, ImageView.ScaleType scaleType) {
        return new StringBuilder(string2.length() + 12).append("#W").append(n2).append("#H").append(n3).append("#S").append(scaleType.ordinal()).append(string2).toString();
    }

    public static ImageListener getImageListener(final ImageView imageView, final int n2, final int n3) {
        return new ImageListener(){

            @Override
            public void onErrorResponse(VolleyError volleyError) {
                if (n3 != 0) {
                    imageView.setImageResource(n3);
                }
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onResponse(ImageContainer imageContainer, boolean bl) {
                if (imageContainer.getBitmap() != null) {
                    imageView.setImageBitmap(imageContainer.getBitmap());
                    return;
                } else {
                    if (n2 == 0) return;
                    {
                        imageView.setImageResource(n2);
                        return;
                    }
                }
            }
        };
    }

    private void throwIfNotOnMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    public ImageContainer get(String string2, ImageListener imageListener) {
        return this.get(string2, imageListener, 0, 0);
    }

    public ImageContainer get(String string2, ImageListener imageListener, int n2, int n3) {
        return this.get(string2, imageListener, n2, n3, ImageView.ScaleType.CENTER_INSIDE);
    }

    public ImageContainer get(String request, ImageListener object, int n2, int n3, ImageView.ScaleType scaleType) {
        this.throwIfNotOnMainThread();
        String string2 = ImageLoader.getCacheKey((String)((Object)request), n2, n3, scaleType);
        Object object2 = this.mCache.getBitmap(string2);
        if (object2 != null) {
            request = new ImageContainer((Bitmap)object2, (String)((Object)request), null, null);
            object.onResponse((ImageContainer)((Object)request), true);
            return request;
        }
        object2 = new ImageContainer(null, (String)((Object)request), string2, (ImageListener)object);
        object.onResponse((ImageContainer)object2, true);
        object = this.mInFlightRequests.get(string2);
        if (object != null) {
            object.addContainer((ImageContainer)object2);
            return object2;
        }
        request = this.makeImageRequest((String)((Object)request), n2, n3, scaleType, string2);
        this.mRequestQueue.add(request);
        this.mInFlightRequests.put(string2, new BatchedImageRequest(request, (ImageContainer)object2));
        return object2;
    }

    public boolean isCached(String string2, int n2, int n3) {
        return this.isCached(string2, n2, n3, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String string2, int n2, int n3, ImageView.ScaleType scaleType) {
        this.throwIfNotOnMainThread();
        string2 = ImageLoader.getCacheKey(string2, n2, n3, scaleType);
        if (this.mCache.getBitmap(string2) != null) {
            return true;
        }
        return false;
    }

    protected Request<Bitmap> makeImageRequest(String string2, int n2, int n3, ImageView.ScaleType scaleType, final String string3) {
        return new ImageRequest(string2, new Response.Listener<Bitmap>(){

            @Override
            public void onResponse(Bitmap bitmap) {
                ImageLoader.this.onGetImageSuccess(string3, bitmap);
            }
        }, n2, n3, scaleType, Bitmap.Config.RGB_565, new Response.ErrorListener(){

            @Override
            public void onErrorResponse(VolleyError volleyError) {
                ImageLoader.this.onGetImageError(string3, volleyError);
            }
        });
    }

    protected void onGetImageError(String string2, VolleyError volleyError) {
        BatchedImageRequest batchedImageRequest = this.mInFlightRequests.remove(string2);
        if (batchedImageRequest != null) {
            batchedImageRequest.setError(volleyError);
            this.batchResponse(string2, batchedImageRequest);
        }
    }

    protected void onGetImageSuccess(String string2, Bitmap bitmap) {
        this.mCache.putBitmap(string2, bitmap);
        BatchedImageRequest batchedImageRequest = this.mInFlightRequests.remove(string2);
        if (batchedImageRequest != null) {
            batchedImageRequest.mResponseBitmap = bitmap;
            this.batchResponse(string2, batchedImageRequest);
        }
    }

    public void setBatchedResponseDelay(int n2) {
        this.mBatchResponseDelayMs = n2;
    }

    private class BatchedImageRequest {
        private final LinkedList<ImageContainer> mContainers;
        private VolleyError mError;
        private final Request<?> mRequest;
        private Bitmap mResponseBitmap;

        public BatchedImageRequest(Request<?> request, ImageContainer imageContainer) {
            this.mContainers = new LinkedList();
            this.mRequest = request;
            this.mContainers.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.mContainers.add(imageContainer);
        }

        public VolleyError getError() {
            return this.mError;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.mContainers.remove(imageContainer);
            if (this.mContainers.size() == 0) {
                this.mRequest.cancel();
                return true;
            }
            return false;
        }

        public void setError(VolleyError volleyError) {
            this.mError = volleyError;
        }
    }

    public static interface ImageCache {
        public Bitmap getBitmap(String var1);

        public void putBitmap(String var1, Bitmap var2);
    }

    public class ImageContainer {
        private Bitmap mBitmap;
        private final String mCacheKey;
        private final ImageListener mListener;
        private final String mRequestUrl;

        public ImageContainer(Bitmap bitmap, String string2, String string3, ImageListener imageListener) {
            this.mBitmap = bitmap;
            this.mRequestUrl = string2;
            this.mCacheKey = string3;
            this.mListener = imageListener;
        }

        /*
         * Enabled aggressive block sorting
         */
        public void cancelRequest() {
            if (this.mListener == null) return;
            BatchedImageRequest batchedImageRequest = (BatchedImageRequest)ImageLoader.this.mInFlightRequests.get(this.mCacheKey);
            if (batchedImageRequest != null) {
                if (!batchedImageRequest.removeContainerAndCancelIfNecessary(this)) return;
                {
                    ImageLoader.this.mInFlightRequests.remove(this.mCacheKey);
                    return;
                }
            }
            batchedImageRequest = (BatchedImageRequest)ImageLoader.this.mBatchedResponses.get(this.mCacheKey);
            if (batchedImageRequest == null) return;
            batchedImageRequest.removeContainerAndCancelIfNecessary(this);
            if (batchedImageRequest.mContainers.size() != 0) {
                return;
            }
            ImageLoader.this.mBatchedResponses.remove(this.mCacheKey);
        }

        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        public String getRequestUrl() {
            return this.mRequestUrl;
        }
    }

    public static interface ImageListener
    extends Response.ErrorListener {
        public void onResponse(ImageContainer var1, boolean var2);
    }

}

