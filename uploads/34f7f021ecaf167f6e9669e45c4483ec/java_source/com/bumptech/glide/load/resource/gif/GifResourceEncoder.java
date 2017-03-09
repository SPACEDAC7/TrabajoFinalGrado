/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.util.Log
 */
package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifencoder.AnimatedGifEncoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifBitmapProvider;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.OutputStream;

public class GifResourceEncoder
implements ResourceEncoder<GifDrawable> {
    private static final Factory FACTORY = new Factory();
    private static final String TAG = "GifEncoder";
    private final BitmapPool bitmapPool;
    private final Factory factory;
    private final GifDecoder.BitmapProvider provider;

    public GifResourceEncoder(BitmapPool bitmapPool) {
        this(bitmapPool, FACTORY);
    }

    GifResourceEncoder(BitmapPool bitmapPool, Factory factory) {
        this.bitmapPool = bitmapPool;
        this.provider = new GifBitmapProvider(bitmapPool);
        this.factory = factory;
    }

    private GifDecoder decodeHeaders(byte[] arrby) {
        Object object = this.factory.buildParser();
        object.setData(arrby);
        object = object.parseHeader();
        GifDecoder gifDecoder = this.factory.buildDecoder(this.provider);
        gifDecoder.setData((GifHeader)object, arrby);
        gifDecoder.advance();
        return gifDecoder;
    }

    private Resource<Bitmap> getTransformedFrame(Bitmap object, Transformation<Bitmap> object2, GifDrawable gifDrawable) {
        if (!(object = this.factory.buildFrameResource((Bitmap)object, this.bitmapPool)).equals(object2 = object2.transform(object, gifDrawable.getIntrinsicWidth(), gifDrawable.getIntrinsicHeight()))) {
            object.recycle();
        }
        return object2;
    }

    private boolean writeDataDirect(byte[] arrby, OutputStream outputStream) {
        try {
            outputStream.write(arrby);
            return true;
        }
        catch (IOException var1_2) {
            if (Log.isLoggable((String)"GifEncoder", (int)3)) {
                Log.d((String)"GifEncoder", (String)"Failed to write data to output stream in GifResourceEncoder", (Throwable)var1_2);
            }
            return false;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean encode(Resource<GifDrawable> object, OutputStream resource) {
        boolean bl;
        boolean bl2;
        long l2 = LogTime.getLogTime();
        Transformation<Bitmap> transformation = (object = (GifDrawable)object.get()).getFrameTransformation();
        if (transformation instanceof UnitTransformation) {
            return this.writeDataDirect(object.getData(), (OutputStream)((Object)resource));
        }
        GifDecoder gifDecoder = this.decodeHeaders(object.getData());
        AnimatedGifEncoder animatedGifEncoder = this.factory.buildEncoder();
        if (!animatedGifEncoder.start((OutputStream)((Object)resource))) {
            return false;
        }
        for (int i2 = 0; i2 < gifDecoder.getFrameCount(); ++i2) {
            block7 : {
                resource = this.getTransformedFrame(gifDecoder.getNextFrame(), transformation, (GifDrawable)object);
                bl2 = animatedGifEncoder.addFrame(resource.get());
                if (bl2) break block7;
                resource.recycle();
                return false;
            }
            try {
                animatedGifEncoder.setDelay(gifDecoder.getDelay(gifDecoder.getCurrentFrameIndex()));
                gifDecoder.advance();
                continue;
            }
            finally {
                resource.recycle();
            }
        }
        bl2 = bl = animatedGifEncoder.finish();
        if (!Log.isLoggable((String)"GifEncoder", (int)2)) return bl2;
        Log.v((String)"GifEncoder", (String)("Encoded gif with " + gifDecoder.getFrameCount() + " frames and " + object.getData().length + " bytes in " + LogTime.getElapsedMillis(l2) + " ms"));
        return bl;
    }

    @Override
    public String getId() {
        return "";
    }

    static class Factory {
        Factory() {
        }

        public GifDecoder buildDecoder(GifDecoder.BitmapProvider bitmapProvider) {
            return new GifDecoder(bitmapProvider);
        }

        public AnimatedGifEncoder buildEncoder() {
            return new AnimatedGifEncoder();
        }

        public Resource<Bitmap> buildFrameResource(Bitmap bitmap, BitmapPool bitmapPool) {
            return new BitmapResource(bitmap, bitmapPool);
        }

        public GifHeaderParser buildParser() {
            return new GifHeaderParser();
        }
    }

}

