/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.DeviceUtil;
import java.io.Serializable;
import java.util.List;

public final class WeaverVideoUtils {
    private static final float DEFAULT_ASPECT_RATIO = 1.7777778f;
    private static final String KEY_ENCODING_HLS = "hls";
    private static final String KEY_SHOW_ID_TASTY = "tasty";
    public static final String KEY_TYPE_VIDEO = "video";
    private static final float PORTRAIT_ASPECT_RATIO = 0.5625f;
    private static final float TABLET_CHANGE_ASPECT_RATIO = 1.3333334f;

    private WeaverVideoUtils() {
    }

    public static boolean ensureVideoContent(VideoContent videoContent) {
        if (videoContent != null && videoContent.getVideos() != null && !videoContent.getVideos().isEmpty()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static float getAspectRatioFromString(String arrstring) {
        if (TextUtils.isEmpty((CharSequence)arrstring)) return 1.7777778f;
        if (!arrstring.contains(":")) {
            return 1.7777778f;
        }
        arrstring = arrstring.split(":");
        float f2 = Float.valueOf(arrstring[0]).floatValue();
        float f3 = Float.valueOf(arrstring[1]).floatValue();
        if (f2 <= 0.0f) return 1.7777778f;
        if (f3 <= 0.0f) return 1.7777778f;
        return f2 / f3;
    }

    public static float getAspectRatioFromVideo(WeaverItem.Video video) {
        if (video == null) {
            return 1.7777778f;
        }
        return WeaverVideoUtils.getAspectRatioFromString(video.getAspectRatio());
    }

    @Nullable
    public static WeaverItem.Video getFirstVideoFromVideoContent(VideoContent videoContent) {
        if (!WeaverVideoUtils.ensureVideoContent(videoContent)) {
            return null;
        }
        return videoContent.getVideos().get(0);
    }

    @Nullable
    private static WeaverItem.Video.Encoding getHlsEncoding(WeaverItem.Video object) {
        if (object == null || object.getEncodings() == null) {
            return null;
        }
        for (WeaverItem.Video.Encoding encoding : object.getEncodings()) {
            if (!TextUtils.equals((CharSequence)"hls", (CharSequence)encoding.getEncoding())) continue;
            return encoding;
        }
        return null;
    }

    @Nullable
    public static String getHlsVideoContentUri(WeaverItem.Video serializable) {
        if ((serializable = WeaverVideoUtils.getHlsEncoding(serializable)) != null) {
            return serializable.getUrl();
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static BuffetType getVideoSpecificBuffetType(Context context, VideoContent serializable) {
        if (!WeaverVideoUtils.ensureVideoContent(serializable)) {
            return BuffetType.VIDEO_DEFAULT;
        }
        WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(serializable);
        if (!WeaverVideoUtils.isPortraitVideo(video) && !WeaverVideoUtils.isTabletAndTallVideo(context, video)) return BuffetType.VIDEO_DEFAULT;
        return BuffetType.VIDEO_FIXED_HEIGHT;
    }

    public static boolean hasHlsVideoContent(WeaverItem.Video video) {
        if (!TextUtils.isEmpty((CharSequence)WeaverVideoUtils.getHlsVideoContentUri(video))) {
            return true;
        }
        return false;
    }

    public static boolean hasTastySpecificShowContent(@Nullable WeaverEmbed.Show show) {
        if (show != null && !TextUtils.isEmpty((CharSequence)show.getId()) && show.getId().toLowerCase().contains("tasty")) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean hasVideoItemType(@Nullable FlowItem object) {
        if (object == null || TextUtils.isEmpty((CharSequence)object.getType()) || !(object = object.getType()).equals(BuffetType.VIDEO_DEFAULT.name()) && !object.equals(BuffetType.VIDEO_FIXED_HEIGHT.name())) {
            return false;
        }
        return true;
    }

    public static boolean isPortraitVideo(WeaverItem.Video video) {
        if (Float.compare(WeaverVideoUtils.getAspectRatioFromVideo(video), 0.5625f) <= 0) {
            return true;
        }
        return false;
    }

    public static boolean isTabletAndTallVideo(Context context, WeaverItem.Video video) {
        if (DeviceUtil.isTablet(context) && WeaverVideoUtils.getAspectRatioFromVideo(video) <= 1.3333334f) {
            return true;
        }
        return false;
    }
}

