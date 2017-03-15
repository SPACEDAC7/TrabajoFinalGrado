/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  com.google.android.exoplayer.chunk.VideoFormatSelectorUtil
 */
package com.google.android.exoplayer.hls;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import com.google.android.exoplayer.hls.Variant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class DefaultHlsTrackSelector
implements HlsTrackSelector {
    private static final int TYPE_AUDIO = 1;
    private static final int TYPE_DEFAULT = 0;
    private static final int TYPE_SUBTITLE = 2;
    private final Context context;
    private final int type;

    private DefaultHlsTrackSelector(Context context, int n2) {
        this.context = context;
        this.type = n2;
    }

    public static DefaultHlsTrackSelector newAudioInstance() {
        return new DefaultHlsTrackSelector(null, 1);
    }

    public static DefaultHlsTrackSelector newDefaultInstance(Context context) {
        return new DefaultHlsTrackSelector(context, 0);
    }

    public static DefaultHlsTrackSelector newSubtitleInstance() {
        return new DefaultHlsTrackSelector(null, 2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean variantHasExplicitCodecWithPrefix(Variant object, String string2) {
        object = object.format.codecs;
        if (TextUtils.isEmpty((CharSequence)object)) {
            return false;
        }
        object = object.split("(\\s*,\\s*)|(\\s*$)");
        int n2 = 0;
        while (n2 < object.length) {
            if (object[n2].startsWith(string2)) {
                return true;
            }
            ++n2;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void selectTracks(HlsMasterPlaylist hlsMasterPlaylist, HlsTrackSelector.Output output) throws IOException {
        ArrayList<Variant> arrayList;
        int n2;
        Variant[] arrvariant;
        Variant[] arrvariant2;
        if (this.type != 1 && this.type != 2) {
            arrvariant = new Variant[]();
            arrvariant2 = VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay((Context)this.context, hlsMasterPlaylist.variants, (String[])null, (boolean)false);
            for (n2 = 0; n2 < arrvariant2.length; ++n2) {
                arrvariant.add((Variant)hlsMasterPlaylist.variants.get(arrvariant2[n2]));
            }
            arrvariant2 = new ArrayList();
            arrayList = new ArrayList<Variant>();
        } else {
            List<Variant> list = this.type == 1 ? hlsMasterPlaylist.audios : hlsMasterPlaylist.subtitles;
            if (list != null && !list.isEmpty()) {
                int n3 = 0;
                while (n3 < list.size()) {
                    output.fixedTrack(hlsMasterPlaylist, list.get(n3));
                    ++n3;
                }
                return;
            }
            return;
        }
        for (n2 = 0; n2 < arrvariant.size(); ++n2) {
            Variant variant = (Variant)arrvariant.get(n2);
            if (variant.format.height > 0 || DefaultHlsTrackSelector.variantHasExplicitCodecWithPrefix(variant, "avc")) {
                arrvariant2.add(variant);
                continue;
            }
            if (!DefaultHlsTrackSelector.variantHasExplicitCodecWithPrefix(variant, "mp4a")) continue;
            arrayList.add(variant);
        }
        if (arrvariant2.isEmpty()) {
            arrvariant2 = arrvariant;
            if (arrayList.size() < arrvariant.size()) {
                arrvariant.removeAll(arrayList);
                arrvariant2 = arrvariant;
            }
        }
        if (arrvariant2.size() > 1) {
            arrvariant = new Variant[arrvariant2.size()];
            arrvariant2.toArray(arrvariant);
            output.adaptiveTrack(hlsMasterPlaylist, arrvariant);
        }
        n2 = 0;
        while (n2 < arrvariant2.size()) {
            output.fixedTrack(hlsMasterPlaylist, (Variant)arrvariant2.get(n2));
            ++n2;
        }
    }
}

