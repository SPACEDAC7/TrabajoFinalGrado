/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.os.Handler
 *  android.os.Handler$Callback
 *  android.os.Looper
 *  android.os.Message
 *  android.os.SystemClock
 */
package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.GenericTranscodeRequest;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.NullEncoder;
import com.bumptech.glide.load.resource.gif.GifFrameModelLoader;
import com.bumptech.glide.load.resource.gif.GifFrameResourceDecoder;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.UUID;

class GifFrameLoader {
    private final FrameCallback callback;
    private DelayTarget current;
    private final GifDecoder gifDecoder;
    private final Handler handler;
    private boolean isCleared;
    private boolean isLoadPending = false;
    private boolean isRunning = false;
    private GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> requestBuilder;

    public GifFrameLoader(Context context, FrameCallback frameCallback, GifDecoder gifDecoder, int n2, int n3) {
        this(frameCallback, gifDecoder, null, GifFrameLoader.getRequestBuilder(context, gifDecoder, n2, n3, Glide.get(context).getBitmapPool()));
    }

    GifFrameLoader(FrameCallback frameCallback, GifDecoder gifDecoder, Handler handler, GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> genericRequestBuilder) {
        Handler handler2 = handler;
        if (handler == null) {
            handler2 = new Handler(Looper.getMainLooper(), (Handler.Callback)new FrameLoaderCallback());
        }
        this.callback = frameCallback;
        this.gifDecoder = gifDecoder;
        this.handler = handler2;
        this.requestBuilder = genericRequestBuilder;
    }

    private static GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> getRequestBuilder(Context context, GifDecoder gifDecoder, int n2, int n3, BitmapPool object) {
        object = new GifFrameResourceDecoder((BitmapPool)object);
        GifFrameModelLoader gifFrameModelLoader = new GifFrameModelLoader();
        Encoder encoder = NullEncoder.get();
        return Glide.with(context).using(gifFrameModelLoader, GifDecoder.class).load((Object)gifDecoder).as(Bitmap.class).sourceEncoder(encoder).decoder(object).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).override(n2, n3);
    }

    private void loadNextFrame() {
        if (!this.isRunning || this.isLoadPending) {
            return;
        }
        this.isLoadPending = true;
        this.gifDecoder.advance();
        long l2 = SystemClock.uptimeMillis();
        long l3 = this.gifDecoder.getNextDelay();
        DelayTarget delayTarget = new DelayTarget(this.handler, this.gifDecoder.getCurrentFrameIndex(), l2 + l3);
        this.requestBuilder.signature(new FrameSignature()).into((DelayTarget)delayTarget);
    }

    public void clear() {
        this.stop();
        if (this.current != null) {
            Glide.clear(this.current);
            this.current = null;
        }
        this.isCleared = true;
    }

    public Bitmap getCurrentFrame() {
        if (this.current != null) {
            return this.current.getResource();
        }
        return null;
    }

    void onFrameReady(DelayTarget delayTarget) {
        if (this.isCleared) {
            this.handler.obtainMessage(2, (Object)delayTarget).sendToTarget();
            return;
        }
        DelayTarget delayTarget2 = this.current;
        this.current = delayTarget;
        this.callback.onFrameReady(delayTarget.index);
        if (delayTarget2 != null) {
            this.handler.obtainMessage(2, (Object)delayTarget2).sendToTarget();
        }
        this.isLoadPending = false;
        this.loadNextFrame();
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation) {
        if (transformation == null) {
            throw new NullPointerException("Transformation must not be null");
        }
        this.requestBuilder = this.requestBuilder.transform(transformation);
    }

    public void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.isCleared = false;
        this.loadNextFrame();
    }

    public void stop() {
        this.isRunning = false;
    }

    static class DelayTarget
    extends SimpleTarget<Bitmap> {
        private final Handler handler;
        private final int index;
        private Bitmap resource;
        private final long targetTime;

        public DelayTarget(Handler handler, int n2, long l2) {
            this.handler = handler;
            this.index = n2;
            this.targetTime = l2;
        }

        public Bitmap getResource() {
            return this.resource;
        }

        @Override
        public void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
            this.resource = bitmap;
            bitmap = this.handler.obtainMessage(1, (Object)this);
            this.handler.sendMessageAtTime((Message)bitmap, this.targetTime);
        }
    }

    public static interface FrameCallback {
        public void onFrameReady(int var1);
    }

    private class FrameLoaderCallback
    implements Handler.Callback {
        public static final int MSG_CLEAR = 2;
        public static final int MSG_DELAY = 1;

        private FrameLoaderCallback() {
        }

        public boolean handleMessage(Message object) {
            if (object.what == 1) {
                object = (DelayTarget)object.obj;
                GifFrameLoader.this.onFrameReady((DelayTarget)object);
                return true;
            }
            if (object.what == 2) {
                Glide.clear((DelayTarget)object.obj);
            }
            return false;
        }
    }

    static class FrameSignature
    implements Key {
        private final UUID uuid;

        public FrameSignature() {
            this(UUID.randomUUID());
        }

        FrameSignature(UUID uUID) {
            this.uuid = uUID;
        }

        @Override
        public boolean equals(Object object) {
            if (object instanceof FrameSignature) {
                return ((FrameSignature)object).uuid.equals(this.uuid);
            }
            return false;
        }

        @Override
        public int hashCode() {
            return this.uuid.hashCode();
        }

        @Override
        public void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

}

