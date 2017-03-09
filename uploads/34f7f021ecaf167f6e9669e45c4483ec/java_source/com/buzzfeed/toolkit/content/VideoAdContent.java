/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.AdContent;

public interface VideoAdContent
extends AdContent {
    public float getAspectRatio();

    public String getContentUri();

    public String getCoverImage();

    public long getDuration();

    public String getShareUrl();

    public String getShowAvatar();

    public String getTitle();

    @Override
    public boolean isValid();

    public String promotionType();
}

