/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.ImageView
 */
package com.buzzfeed.showx.showpage.listener;

import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.buzzfeed.showx.showpage.listener.ShowPageBuffetEventListener;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.VideoContent;
import java.util.Stack;

public abstract class ShowPageBuffetEventListenerImpl
implements ShowPageBuffetEventListener {
    @Override
    public boolean isSubscribedToShow() {
        return false;
    }

    @Override
    public void onBreakingNewsLinkClicked(FlowItem flowItem, String string2) {
    }

    @Override
    public void onCellClicked(FlowItem flowItem, int n2, @Nullable ImageView imageView, Stack<String> stack, boolean bl) {
    }

    @Override
    public void onGetRecipeClicked(String string2) {
    }

    @Override
    public void onNewsPackageClicked(PackageContent packageContent, PostContent postContent, int n2, int n3, @Nullable ImageView imageView, Stack<String> stack, boolean bl) {
    }

    @Override
    public void onShareClicked(FlowItem flowItem, int n2) {
    }

    @Override
    public void onShowImageClicked(VideoContent videoContent) {
    }

    @Override
    public void onSubscribeButtonClicked() {
    }

    @Override
    public void onVideoReloadClicked() {
    }
}

