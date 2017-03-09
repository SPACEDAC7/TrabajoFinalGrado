/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.file;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.StreamEncoder;
import com.bumptech.glide.load.resource.NullResourceEncoder;
import com.bumptech.glide.load.resource.file.FileDecoder;
import com.bumptech.glide.provider.DataLoadProvider;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class StreamFileDataLoadProvider
implements DataLoadProvider<InputStream, File> {
    private static final ErrorSourceDecoder ERROR_DECODER = new ErrorSourceDecoder();
    private final ResourceDecoder<File, File> cacheDecoder = new FileDecoder();
    private final Encoder<InputStream> encoder = new StreamEncoder();

    @Override
    public ResourceDecoder<File, File> getCacheDecoder() {
        return this.cacheDecoder;
    }

    @Override
    public ResourceEncoder<File> getEncoder() {
        return NullResourceEncoder.get();
    }

    @Override
    public ResourceDecoder<InputStream, File> getSourceDecoder() {
        return ERROR_DECODER;
    }

    @Override
    public Encoder<InputStream> getSourceEncoder() {
        return this.encoder;
    }

    private static class ErrorSourceDecoder
    implements ResourceDecoder<InputStream, File> {
        private ErrorSourceDecoder() {
        }

        @Override
        public Resource<File> decode(InputStream inputStream, int n2, int n3) {
            throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
        }

        @Override
        public String getId() {
            return "";
        }
    }

}

