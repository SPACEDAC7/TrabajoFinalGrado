/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.showx.showpage.data.model;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.io.Serializable;

public enum ShowPageItemType {
    SHOW_SUBSCRIBE,
    SHOW_VIDEO,
    SHOW_VIDEO_FIXED_HEIGHT;
    

    private ShowPageItemType() {
    }

    public static ShowPageItemType fromInt(int n2) {
        return ShowPageItemType.values()[n2];
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static ShowPageItemType getItemTypeFromVideoContent(@NonNull Context context, @NonNull VideoContent serializable) {
        EZUtil.checkNotNull(context, "Context must not be null.");
        EZUtil.checkNotNull(serializable, "VideoContent must not be null.");
        WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(serializable);
        if (!WeaverVideoUtils.isPortraitVideo(video) && !WeaverVideoUtils.isTabletAndTallVideo(context, video)) return SHOW_VIDEO;
        return SHOW_VIDEO_FIXED_HEIGHT;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean hasVideoItemType(@Nullable FlowItem flowItem) {
        if (flowItem == null || TextUtils.isEmpty((CharSequence)flowItem.getType())) {
            return false;
        }
        ShowPageItemType[] arrshowPageItemType = ShowPageItemType.values();
        int n2 = arrshowPageItemType.length;
        int n3 = 0;
        while (n3 < n2) {
            ShowPageItemType showPageItemType = arrshowPageItemType[n3];
            if (showPageItemType != SHOW_SUBSCRIBE && showPageItemType.name().equals(flowItem.getType())) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    public static int toInt(@NonNull String string2) {
        return ShowPageItemType.valueOf(string2).ordinal();
    }
}

