/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatWrapper;

public final class Variant
implements FormatWrapper {
    public final Format format;
    public final String url;

    public Variant(String string2, Format format) {
        this.url = string2;
        this.format = format;
    }

    @Override
    public Format getFormat() {
        return this.format;
    }
}

