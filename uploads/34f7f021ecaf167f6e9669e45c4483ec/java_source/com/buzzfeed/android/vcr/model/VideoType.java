/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.android.vcr.model;

import android.text.TextUtils;
import com.buzzfeed.toolkit.util.LogUtil;

public enum VideoType {
    NONE,
    HLS,
    OTHER;
    
    private static final String TAG;

    static {
        TAG = LogUtil.makeLogTag(VideoType.class);
    }

    private VideoType() {
    }

    public static VideoType inferContentType(String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return NONE;
        }
        if (string2.endsWith(".mpd")) {
            LogUtil.d(TAG, "MPEG-DASH is not currently supported.");
            return NONE;
        }
        if (string2.endsWith(".ism")) {
            LogUtil.d(TAG, "Microsoft SmoothStreaming is not currently supported.");
            return NONE;
        }
        if (string2.endsWith(".m3u8")) {
            return HLS;
        }
        return OTHER;
    }
}

