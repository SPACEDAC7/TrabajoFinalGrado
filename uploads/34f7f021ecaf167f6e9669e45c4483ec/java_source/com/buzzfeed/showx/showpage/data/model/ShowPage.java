/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.showx.showpage.data.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import java.util.Collections;
import java.util.List;

public class ShowPage {
    @NonNull
    public List<FlowItem> flowList = Collections.emptyList();
    public int pageNumber;
    @Nullable
    public WeaverEmbed.Show show;
}

