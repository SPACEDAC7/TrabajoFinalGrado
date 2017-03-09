/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.Content;

public interface AdContent
extends Content {
    public String getBylinePrefix();

    public String getSponsorDisplayName();

    public String getSponsorUserImageUrl();

    public boolean isBackfillAd();
}

