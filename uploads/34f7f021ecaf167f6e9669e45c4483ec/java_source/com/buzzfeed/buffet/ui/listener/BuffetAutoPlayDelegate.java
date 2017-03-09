/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.TextureView
 */
package com.buzzfeed.buffet.ui.listener;

import android.support.v7.widget.RecyclerView;
import android.view.TextureView;
import com.buzzfeed.android.vcr.view.VCRMediaRecyclerView;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;

public class BuffetAutoPlayDelegate
implements VCRMediaRecyclerView.AutoPlayDelegate {
    @Override
    public String getContentUri(RecyclerView.ViewHolder viewHolder) {
        if ((viewHolder = (VideoCard)viewHolder).isAd()) {
            return null;
        }
        return NetworkUtil.convertHttpToHttps(WeaverVideoUtils.getHlsVideoContentUri(WeaverVideoUtils.getFirstVideoFromVideoContent(viewHolder.getVideoContent())));
    }

    @Override
    public TextureView getTextureView(RecyclerView.ViewHolder viewHolder) {
        return ((VideoCard)viewHolder).getTextureView();
    }

    @Override
    public boolean hasVideoContent(RecyclerView.ViewHolder viewHolder) {
        if ((viewHolder = (VideoCard)viewHolder).isAd()) {
            return false;
        }
        return WeaverVideoUtils.hasHlsVideoContent(WeaverVideoUtils.getFirstVideoFromVideoContent(viewHolder.getVideoContent()));
    }
}

