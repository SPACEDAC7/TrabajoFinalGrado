/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.OriginalKey;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

class EngineKey
implements Key {
    private static final String EMPTY_LOG_STRING = "";
    private final ResourceDecoder cacheDecoder;
    private final ResourceDecoder decoder;
    private final ResourceEncoder encoder;
    private int hashCode;
    private final int height;
    private final String id;
    private Key originalKey;
    private final Key signature;
    private final Encoder sourceEncoder;
    private String stringKey;
    private final ResourceTranscoder transcoder;
    private final Transformation transformation;
    private final int width;

    public EngineKey(String string2, Key key, int n2, int n3, ResourceDecoder resourceDecoder, ResourceDecoder resourceDecoder2, Transformation transformation, ResourceEncoder resourceEncoder, ResourceTranscoder resourceTranscoder, Encoder encoder) {
        this.id = string2;
        this.signature = key;
        this.width = n2;
        this.height = n3;
        this.cacheDecoder = resourceDecoder;
        this.decoder = resourceDecoder2;
        this.transformation = transformation;
        this.encoder = resourceEncoder;
        this.transcoder = resourceTranscoder;
        this.sourceEncoder = encoder;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean equals(Object object) {
        boolean bl = false;
        if (this == object) {
            return true;
        }
        boolean bl2 = bl;
        if (object == null) return bl2;
        bl2 = bl;
        if (this.getClass() != object.getClass()) return bl2;
        object = (EngineKey)object;
        bl2 = bl;
        if (!this.id.equals(object.id)) return bl2;
        bl2 = bl;
        if (!this.signature.equals(object.signature)) return bl2;
        bl2 = bl;
        if (this.height != object.height) return bl2;
        bl2 = bl;
        if (this.width != object.width) return bl2;
        boolean bl3 = this.transformation == null;
        boolean bl4 = object.transformation == null;
        bl2 = bl;
        if (bl3 ^ bl4) return bl2;
        if (this.transformation != null) {
            bl2 = bl;
            if (!this.transformation.getId().equals(object.transformation.getId())) return bl2;
        }
        bl3 = this.decoder == null;
        bl4 = object.decoder == null;
        bl2 = bl;
        if (bl3 ^ bl4) return bl2;
        if (this.decoder != null) {
            bl2 = bl;
            if (!this.decoder.getId().equals(object.decoder.getId())) return bl2;
        }
        bl3 = this.cacheDecoder == null;
        bl4 = object.cacheDecoder == null;
        bl2 = bl;
        if (bl3 ^ bl4) return bl2;
        if (this.cacheDecoder != null) {
            bl2 = bl;
            if (!this.cacheDecoder.getId().equals(object.cacheDecoder.getId())) return bl2;
        }
        bl3 = this.encoder == null;
        bl4 = object.encoder == null;
        bl2 = bl;
        if (bl3 ^ bl4) return bl2;
        if (this.encoder != null) {
            bl2 = bl;
            if (!this.encoder.getId().equals(object.encoder.getId())) return bl2;
        }
        bl3 = this.transcoder == null;
        bl4 = object.transcoder == null;
        bl2 = bl;
        if (bl3 ^ bl4) return bl2;
        if (this.transcoder != null) {
            bl2 = bl;
            if (!this.transcoder.getId().equals(object.transcoder.getId())) return bl2;
        }
        bl3 = this.sourceEncoder == null;
        bl4 = object.sourceEncoder == null;
        bl2 = bl;
        if (bl3 ^ bl4) return bl2;
        if (this.sourceEncoder == null) return true;
        bl2 = bl;
        if (!this.sourceEncoder.getId().equals(object.sourceEncoder.getId())) return bl2;
        return true;
    }

    public Key getOriginalKey() {
        if (this.originalKey == null) {
            this.originalKey = new OriginalKey(this.id, this.signature);
        }
        return this.originalKey;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int hashCode() {
        int n2 = 0;
        if (this.hashCode != 0) return this.hashCode;
        this.hashCode = this.id.hashCode();
        this.hashCode = this.hashCode * 31 + this.signature.hashCode();
        this.hashCode = this.hashCode * 31 + this.width;
        int n3 = this.hashCode = this.hashCode * 31 + this.height;
        int n4 = this.cacheDecoder != null ? this.cacheDecoder.getId().hashCode() : 0;
        n3 = this.hashCode = n4 + n3 * 31;
        n4 = this.decoder != null ? this.decoder.getId().hashCode() : 0;
        n3 = this.hashCode = n4 + n3 * 31;
        n4 = this.transformation != null ? this.transformation.getId().hashCode() : 0;
        n3 = this.hashCode = n4 + n3 * 31;
        n4 = this.encoder != null ? this.encoder.getId().hashCode() : 0;
        n3 = this.hashCode = n4 + n3 * 31;
        n4 = this.transcoder != null ? this.transcoder.getId().hashCode() : 0;
        n3 = this.hashCode = n4 + n3 * 31;
        n4 = n2;
        if (this.sourceEncoder != null) {
            n4 = this.sourceEncoder.getId().hashCode();
        }
        this.hashCode = n3 * 31 + n4;
        return this.hashCode;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        if (this.stringKey == null) {
            StringBuilder stringBuilder = new StringBuilder().append("EngineKey{").append(this.id).append('+').append(this.signature).append("+[").append(this.width).append('x').append(this.height).append("]+").append('\'');
            String string2 = this.cacheDecoder != null ? this.cacheDecoder.getId() : "";
            stringBuilder = stringBuilder.append(string2).append('\'').append('+').append('\'');
            string2 = this.decoder != null ? this.decoder.getId() : "";
            stringBuilder = stringBuilder.append(string2).append('\'').append('+').append('\'');
            string2 = this.transformation != null ? this.transformation.getId() : "";
            stringBuilder = stringBuilder.append(string2).append('\'').append('+').append('\'');
            string2 = this.encoder != null ? this.encoder.getId() : "";
            stringBuilder = stringBuilder.append(string2).append('\'').append('+').append('\'');
            string2 = this.transcoder != null ? this.transcoder.getId() : "";
            stringBuilder = stringBuilder.append(string2).append('\'').append('+').append('\'');
            string2 = this.sourceEncoder != null ? this.sourceEncoder.getId() : "";
            this.stringKey = stringBuilder.append(string2).append('\'').append('}').toString();
        }
        return this.stringKey;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        Object object = ByteBuffer.allocate(8).putInt(this.width).putInt(this.height).array();
        this.signature.updateDiskCacheKey(messageDigest);
        messageDigest.update(this.id.getBytes("UTF-8"));
        messageDigest.update((byte[])object);
        object = this.cacheDecoder != null ? this.cacheDecoder.getId() : "";
        messageDigest.update(object.getBytes("UTF-8"));
        object = this.decoder != null ? this.decoder.getId() : "";
        messageDigest.update(object.getBytes("UTF-8"));
        object = this.transformation != null ? this.transformation.getId() : "";
        messageDigest.update(object.getBytes("UTF-8"));
        object = this.encoder != null ? this.encoder.getId() : "";
        messageDigest.update(object.getBytes("UTF-8"));
        object = this.sourceEncoder != null ? this.sourceEncoder.getId() : "";
        messageDigest.update(object.getBytes("UTF-8"));
    }
}

