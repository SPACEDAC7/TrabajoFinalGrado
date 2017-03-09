/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.ImageView
 */
package com.buzzfeed.buffet.ui.listener;

import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.VideoContent;
import java.util.Stack;

public interface BuffetEventListener {
    public void onBreakingNewsLinkClicked(FlowItem var1, String var2);

    public void onCellClicked(FlowItem var1, int var2, @Nullable ImageView var3, Stack<String> var4, boolean var5);

    public void onGetRecipeClicked(String var1);

    public void onNewsPackageClicked(PackageContent var1, PostContent var2, int var3, int var4, @Nullable ImageView var5, Stack<String> var6, boolean var7);

    public void onShareClicked(FlowItem var1, int var2);

    public void onShowImageClicked(VideoContent var1);

    public void onVideoReloadClicked();
}

