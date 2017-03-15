/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.util.Assertions;

public class Format {
    public final int audioChannels;
    public final int audioSamplingRate;
    public final int bitrate;
    public final String codecs;
    public final float frameRate;
    public final int height;
    public final String id;
    public final String language;
    public final String mimeType;
    public final int width;

    public Format(String string2, String string3, int n2, int n3, float f2, int n4, int n5, int n6) {
        this(string2, string3, n2, n3, f2, n4, n5, n6, null);
    }

    public Format(String string2, String string3, int n2, int n3, float f2, int n4, int n5, int n6, String string4) {
        this(string2, string3, n2, n3, f2, n4, n5, n6, string4, null);
    }

    public Format(String string2, String string3, int n2, int n3, float f2, int n4, int n5, int n6, String string4, String string5) {
        this.id = Assertions.checkNotNull(string2);
        this.mimeType = string3;
        this.width = n2;
        this.height = n3;
        this.frameRate = f2;
        this.audioChannels = n4;
        this.audioSamplingRate = n5;
        this.bitrate = n6;
        this.language = string4;
        this.codecs = string5;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null || this.getClass() != object.getClass()) {
            return false;
        }
        return ((Format)object).id.equals(this.id);
    }

    public int hashCode() {
        return this.id.hashCode();
    }
}

