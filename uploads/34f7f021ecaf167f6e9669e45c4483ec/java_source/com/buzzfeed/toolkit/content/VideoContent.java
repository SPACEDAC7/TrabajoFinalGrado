/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import android.support.annotation.Nullable;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import java.util.List;

public interface VideoContent
extends PostContent {
    @Nullable
    public WeaverEmbed.Show getShow();

    @Nullable
    public String getSourceUri();

    @Nullable
    public List<WeaverItem.Video> getVideos();

    public boolean isTrendingVideo();
}

