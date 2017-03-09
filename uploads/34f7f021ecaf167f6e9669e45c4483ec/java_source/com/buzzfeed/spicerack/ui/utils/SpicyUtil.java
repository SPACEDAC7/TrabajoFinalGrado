/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  com.google.android.youtube.player.YouTubeApiServiceUtil
 *  com.google.android.youtube.player.YouTubeInitializationResult
 */
package com.buzzfeed.spicerack.ui.utils;

import android.content.Context;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.google.android.youtube.player.YouTubeApiServiceUtil;
import com.google.android.youtube.player.YouTubeInitializationResult;

public class SpicyUtil {
    public static int calculateTopOffset(Context context, int n2) {
        return n2 - UIUtil.getActionBarHeight(context);
    }

    public static boolean isYoutubeSubbuzzAndYoutubeAvailable(SubBuzz subBuzz, Context context) {
        if (subBuzz.isYoutube() && SpicyUtil.youTubeApiServiceIsAvailable(context)) {
            return true;
        }
        return false;
    }

    public static boolean youTubeApiServiceIsAvailable(Context context) {
        String string2 = LogUtil.makeLogTag(SpicyUtil.class) + ".youTubeApiServiceIsAvailable";
        context = YouTubeApiServiceUtil.isYouTubeApiServiceAvailable((Context)context);
        LogUtil.d(string2, "youTubeApiServiceIsAvailable check: " + context.toString());
        if (context.name().equals(YouTubeInitializationResult.SUCCESS.name()) || context.name().equals(YouTubeInitializationResult.NETWORK_ERROR.name())) {
            return true;
        }
        return false;
    }
}

