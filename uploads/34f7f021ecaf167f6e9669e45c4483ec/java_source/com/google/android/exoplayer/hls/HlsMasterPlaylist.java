/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.Variant;
import java.util.Collections;
import java.util.List;

public final class HlsMasterPlaylist
extends HlsPlaylist {
    public final List<Variant> audios;
    public final String muxedAudioLanguage;
    public final String muxedCaptionLanguage;
    public final List<Variant> subtitles;
    public final List<Variant> variants;

    public HlsMasterPlaylist(String string2, List<Variant> list, List<Variant> list2, List<Variant> list3, String string3, String string4) {
        super(string2, 0);
        this.variants = Collections.unmodifiableList(list);
        this.audios = Collections.unmodifiableList(list2);
        this.subtitles = Collections.unmodifiableList(list3);
        this.muxedAudioLanguage = string3;
        this.muxedCaptionLanguage = string4;
    }
}

