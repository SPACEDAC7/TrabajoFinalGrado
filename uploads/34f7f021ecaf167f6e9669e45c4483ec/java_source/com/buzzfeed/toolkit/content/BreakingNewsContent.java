/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.Content;

public interface BreakingNewsContent
extends Content {
    public long getCreatedAt();

    public String getNewsAlert();

    public String getUrl();
}

