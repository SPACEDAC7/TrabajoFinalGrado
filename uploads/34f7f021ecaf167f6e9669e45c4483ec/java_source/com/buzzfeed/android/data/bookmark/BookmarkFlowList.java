/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.data.bookmark;

import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowList;

public class BookmarkFlowList
extends FlowList {
    @Override
    protected String getId(Content content) {
        return content.getId();
    }
}

