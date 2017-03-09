/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.text.TextUtils
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.buzzfeed.android.vcr.R;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.ExtractorRendererBuilder;
import com.buzzfeed.android.vcr.player.HlsRendererBuilder;
import com.buzzfeed.android.vcr.player.RendererBuilder;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.exoplayer.util.Util;

final class RendererBuilderFactory {
    private static final String TAG = LogUtil.makeLogTag(RendererBuilderFactory.class);

    RendererBuilderFactory() {
    }

    public static RendererBuilder getRendererBuilder(Context context, String string2, VideoType videoType) {
        return RendererBuilderFactory.getRendererBuilder(context, string2, videoType, 0);
    }

    public static RendererBuilder getRendererBuilder(Context context, String string2, VideoType videoType, long l2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("contentUri cant be null or empty.");
        }
        String string3 = Util.getUserAgent(context, context.getString(R.string.module_title));
        LogUtil.d(TAG, "Generating RendererBuilder: uri=" + string2 + " with contentType=" + (Object)((Object)videoType) + ", peakBitrate=" + l2);
        switch (.$SwitchMap$com$buzzfeed$android$vcr$model$VideoType[videoType.ordinal()]) {
            default: {
                throw new IllegalStateException("Unsupported type: " + (Object)Uri.parse((String)string2) + " with type " + (Object)((Object)videoType));
            }
            case 1: {
                return new HlsRendererBuilder(context, string3, string2, l2);
            }
            case 2: 
        }
        return new ExtractorRendererBuilder(context, string3, Uri.parse((String)string2));
    }

}

