/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapperResource;
import com.bumptech.glide.util.ByteArrayPool;
import java.io.IOException;
import java.io.InputStream;

public class GifBitmapWrapperResourceDecoder
implements ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> {
    private static final ImageTypeParser DEFAULT_PARSER = new ImageTypeParser();
    private static final BufferedStreamFactory DEFAULT_STREAM_FACTORY = new BufferedStreamFactory();
    static final int MARK_LIMIT_BYTES = 2048;
    private final ResourceDecoder<ImageVideoWrapper, Bitmap> bitmapDecoder;
    private final BitmapPool bitmapPool;
    private final ResourceDecoder<InputStream, GifDrawable> gifDecoder;
    private String id;
    private final ImageTypeParser parser;
    private final BufferedStreamFactory streamFactory;

    public GifBitmapWrapperResourceDecoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder, ResourceDecoder<InputStream, GifDrawable> resourceDecoder2, BitmapPool bitmapPool) {
        this(resourceDecoder, resourceDecoder2, bitmapPool, DEFAULT_PARSER, DEFAULT_STREAM_FACTORY);
    }

    GifBitmapWrapperResourceDecoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder, ResourceDecoder<InputStream, GifDrawable> resourceDecoder2, BitmapPool bitmapPool, ImageTypeParser imageTypeParser, BufferedStreamFactory bufferedStreamFactory) {
        this.bitmapDecoder = resourceDecoder;
        this.gifDecoder = resourceDecoder2;
        this.bitmapPool = bitmapPool;
        this.parser = imageTypeParser;
        this.streamFactory = bufferedStreamFactory;
    }

    private GifBitmapWrapper decode(ImageVideoWrapper imageVideoWrapper, int n2, int n3, byte[] arrby) throws IOException {
        if (imageVideoWrapper.getStream() != null) {
            return this.decodeStream(imageVideoWrapper, n2, n3, arrby);
        }
        return this.decodeBitmapWrapper(imageVideoWrapper, n2, n3);
    }

    private GifBitmapWrapper decodeBitmapWrapper(ImageVideoWrapper object, int n2, int n3) throws IOException {
        Object var4_4 = null;
        Resource<Bitmap> resource = this.bitmapDecoder.decode((ImageVideoWrapper)object, n2, n3);
        object = var4_4;
        if (resource != null) {
            object = new GifBitmapWrapper(resource, null);
        }
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private GifBitmapWrapper decodeGifWrapper(InputStream object, int n2, int n3) throws IOException {
        Object var4_4 = null;
        Resource<GifDrawable> resource = this.gifDecoder.decode((InputStream)object, n2, n3);
        object = var4_4;
        if (resource == null) return object;
        object = resource.get();
        if (object.getFrameCount() <= 1) return new GifBitmapWrapper(new BitmapResource(object.getFirstFrame(), this.bitmapPool), null);
        return new GifBitmapWrapper(null, resource);
    }

    private GifBitmapWrapper decodeStream(ImageVideoWrapper imageVideoWrapper, int n2, int n3, byte[] object) throws IOException {
        InputStream inputStream = this.streamFactory.build(imageVideoWrapper.getStream(), (byte[])object);
        inputStream.mark(2048);
        Object object2 = this.parser.parse(inputStream);
        inputStream.reset();
        object = null;
        if (object2 == ImageHeaderParser.ImageType.GIF) {
            object = this.decodeGifWrapper(inputStream, n2, n3);
        }
        object2 = object;
        if (object == null) {
            object2 = this.decodeBitmapWrapper(new ImageVideoWrapper(inputStream, imageVideoWrapper.getFileDescriptor()), n2, n3);
        }
        return object2;
    }

    @Override
    public Resource<GifBitmapWrapper> decode(ImageVideoWrapper object, int n2, int n3) throws IOException {
        ByteArrayPool byteArrayPool = ByteArrayPool.get();
        byte[] arrby = byteArrayPool.getBytes();
        try {
            object = this.decode((ImageVideoWrapper)object, n2, n3, arrby);
            if (object != null) {
                return new GifBitmapWrapperResource((GifBitmapWrapper)object);
            }
        }
        finally {
            byteArrayPool.releaseBytes(arrby);
        }
        return null;
    }

    @Override
    public String getId() {
        if (this.id == null) {
            this.id = this.gifDecoder.getId() + this.bitmapDecoder.getId();
        }
        return this.id;
    }

    static class BufferedStreamFactory {
        BufferedStreamFactory() {
        }

        public InputStream build(InputStream inputStream, byte[] arrby) {
            return new RecyclableBufferedInputStream(inputStream, arrby);
        }
    }

    static class ImageTypeParser {
        ImageTypeParser() {
        }

        public ImageHeaderParser.ImageType parse(InputStream inputStream) throws IOException {
            return new ImageHeaderParser(inputStream).getType();
        }
    }

}

