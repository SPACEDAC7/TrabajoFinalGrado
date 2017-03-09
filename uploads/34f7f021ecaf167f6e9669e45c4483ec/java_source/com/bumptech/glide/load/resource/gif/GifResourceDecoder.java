/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.util.Log
 */
package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.gif.GifBitmapProvider;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableResource;
import com.bumptech.glide.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class GifResourceDecoder
implements ResourceDecoder<InputStream, GifDrawable> {
    private static final GifDecoderPool DECODER_POOL;
    private static final GifHeaderParserPool PARSER_POOL;
    private static final String TAG = "GifResourceDecoder";
    private final BitmapPool bitmapPool;
    private final Context context;
    private final GifDecoderPool decoderPool;
    private final GifHeaderParserPool parserPool;
    private final GifBitmapProvider provider;

    static {
        PARSER_POOL = new GifHeaderParserPool();
        DECODER_POOL = new GifDecoderPool();
    }

    public GifResourceDecoder(Context context) {
        this(context, Glide.get(context).getBitmapPool());
    }

    public GifResourceDecoder(Context context, BitmapPool bitmapPool) {
        this(context, bitmapPool, PARSER_POOL, DECODER_POOL);
    }

    GifResourceDecoder(Context context, BitmapPool bitmapPool, GifHeaderParserPool gifHeaderParserPool, GifDecoderPool gifDecoderPool) {
        this.context = context;
        this.bitmapPool = bitmapPool;
        this.decoderPool = gifDecoderPool;
        this.provider = new GifBitmapProvider(bitmapPool);
        this.parserPool = gifHeaderParserPool;
    }

    /*
     * Enabled aggressive block sorting
     */
    private GifDrawableResource decode(byte[] arrby, int n2, int n3, GifHeaderParser object, GifDecoder gifDecoder) {
        if ((object = object.parseHeader()).getNumFrames() <= 0 || object.getStatus() != 0 || (gifDecoder = this.decodeFirstFrame(gifDecoder, (GifHeader)object, arrby)) == null) {
            return null;
        }
        UnitTransformation<Bitmap> unitTransformation = UnitTransformation.get();
        return new GifDrawableResource(new GifDrawable(this.context, this.provider, this.bitmapPool, unitTransformation, n2, n3, (GifHeader)object, arrby, (Bitmap)gifDecoder));
    }

    private Bitmap decodeFirstFrame(GifDecoder gifDecoder, GifHeader gifHeader, byte[] arrby) {
        gifDecoder.setData(gifHeader, arrby);
        gifDecoder.advance();
        return gifDecoder.getNextFrame();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static byte[] inputStreamToBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            int n2;
            byte[] arrby = new byte[16384];
            while ((n2 = inputStream.read(arrby)) != -1) {
                byteArrayOutputStream.write(arrby, 0, n2);
            }
            byteArrayOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        }
        catch (IOException var0_1) {
            Log.w((String)"GifResourceDecoder", (String)"Error reading data from stream", (Throwable)var0_1);
            return byteArrayOutputStream.toByteArray();
        }
    }

    public GifDrawableResource decode(InputStream object, int n2, int n3) {
        Object object2 = GifResourceDecoder.inputStreamToBytes((InputStream)object);
        object = this.parserPool.obtain((byte[])object2);
        GifDecoder gifDecoder = this.decoderPool.obtain(this.provider);
        try {
            object2 = this.decode((byte[])object2, n2, n3, (GifHeaderParser)object, gifDecoder);
            return object2;
        }
        finally {
            this.parserPool.release((GifHeaderParser)object);
            this.decoderPool.release(gifDecoder);
        }
    }

    @Override
    public String getId() {
        return "";
    }

    static class GifDecoderPool {
        private final Queue<GifDecoder> pool = Util.createQueue(0);

        GifDecoderPool() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public GifDecoder obtain(GifDecoder.BitmapProvider bitmapProvider) {
            synchronized (this) {
                GifDecoder gifDecoder;
                GifDecoder gifDecoder2 = gifDecoder = this.pool.poll();
                if (gifDecoder != null) return gifDecoder2;
                return new GifDecoder(bitmapProvider);
            }
        }

        public void release(GifDecoder gifDecoder) {
            synchronized (this) {
                gifDecoder.clear();
                this.pool.offer(gifDecoder);
                return;
            }
        }
    }

    static class GifHeaderParserPool {
        private final Queue<GifHeaderParser> pool = Util.createQueue(0);

        GifHeaderParserPool() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public GifHeaderParser obtain(byte[] object) {
            synchronized (this) {
                GifHeaderParser gifHeaderParser;
                GifHeaderParser gifHeaderParser2 = gifHeaderParser = this.pool.poll();
                if (gifHeaderParser != null) return gifHeaderParser2.setData((byte[])object);
                gifHeaderParser2 = new GifHeaderParser();
                return gifHeaderParser2.setData((byte[])object);
            }
        }

        public void release(GifHeaderParser gifHeaderParser) {
            synchronized (this) {
                gifHeaderParser.clear();
                this.pool.offer(gifHeaderParser);
                return;
            }
        }
    }

}

