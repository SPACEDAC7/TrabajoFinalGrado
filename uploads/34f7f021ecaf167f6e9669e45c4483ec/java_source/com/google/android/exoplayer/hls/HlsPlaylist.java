/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.hls;

public abstract class HlsPlaylist {
    public static final int TYPE_MASTER = 0;
    public static final int TYPE_MEDIA = 1;
    public final String baseUri;
    public final int type;

    protected HlsPlaylist(String string2, int n2) {
        this.baseUri = string2;
        this.type = n2;
    }
}

