/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.view.View;
import android.widget.ImageView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.YoutubeSpice;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.utils.SpicyGlideUtils;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;

public class YouTubeSpiceViewHolder
extends SpiceViewHolder {
    private String TAG = LogUtil.makeLogTag(YouTubeSpiceViewHolder.class);
    private SpicyEventListener mSpicyEventListener;
    private YoutubeSpice mVideoSpice;

    public YouTubeSpiceViewHolder(View view, SpicyEventListener spicyEventListener) {
        super(view);
        this.mSpicyEventListener = spicyEventListener;
    }

    @Override
    public void populateFrom(Content content) {
        super.populateFrom(content);
        String string2 = this.TAG + ".populateFrom";
        this.mVideoSpice = (YoutubeSpice)((Object)content);
        LogUtil.d(string2, "Initializing YouTube player");
        content = (ImageView)UIUtil.findView(this.itemView, R.id.spice_youtube_video_thumbnail);
        content.post(new Runnable((ImageView)content){
            final /* synthetic */ ImageView val$thumbnailImage;

            @Override
            public void run() {
                SpicyGlideUtils.loadImageStack(YouTubeSpiceViewHolder.this.mVideoSpice.getYoutubeThumbnailUrls(), this.val$thumbnailImage, this.val$thumbnailImage.getWidth());
            }
        });
        UIUtil.findView(this.itemView, R.id.spice_youtube_click_container).setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (YouTubeSpiceViewHolder.this.mSpicyEventListener != null) {
                    YouTubeSpiceViewHolder.this.mSpicyEventListener.playYoutube(YouTubeSpiceViewHolder.this.mVideoSpice.getSourceId());
                }
            }
        });
    }

}

