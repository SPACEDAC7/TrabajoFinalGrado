/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.ads.model;

import com.buzzfeed.ads.data.VideoResponse;
import com.buzzfeed.ads.video.TraffickingParameters;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.VideoAdContent;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public class VideoAd
implements VideoAdContent {
    private TraffickingParameters mTraffickingParameters;
    private VideoResponse mVideo;
    private String mVideoUrl;
    private UUID uuid = UUID.randomUUID();

    @Override
    public float getAspectRatio() {
        return WeaverVideoUtils.getAspectRatioFromString(this.mVideo.data.video.aspectRatio);
    }

    public int getBuzzId() {
        return this.mTraffickingParameters.getBuzzId();
    }

    @Override
    public String getBylinePrefix() {
        return "";
    }

    @Override
    public String getContentUri() {
        if (this.isValid()) {
            String string2 = null;
            for (VideoResponse.Rendition rendition : this.mVideo.data.video.renditions) {
                if (rendition.name.equals("low")) {
                    this.mVideoUrl = rendition.url;
                }
                if (!rendition.name.equals("high")) continue;
                string2 = rendition.url;
            }
            if (this.mVideoUrl == null) {
                this.mVideoUrl = string2;
            }
        }
        return this.mVideoUrl;
    }

    @Override
    public String getCoverImage() {
        return this.mVideo.data.video.thumbnailUrl;
    }

    @Override
    public long getDuration() {
        return this.mVideo.data.video.duration;
    }

    @Override
    public String getFlowId() {
        return String.valueOf(this.uuid.getMostSignificantBits());
    }

    @Override
    public String getId() {
        if (this.mTraffickingParameters != null) {
            return String.valueOf(this.mTraffickingParameters.getVideoId());
        }
        return null;
    }

    @Override
    public String getShareUrl() {
        return this.mVideo.data.video.buzzfeedVideoUrl;
    }

    @Override
    public String getShowAvatar() {
        return this.mVideo.data.video.show.avatarImageUrl;
    }

    @Override
    public String getSponsorDisplayName() {
        return this.mVideo.data.video.brand.name;
    }

    @Override
    public String getSponsorUserImageUrl() {
        return this.mVideo.data.video.brand.imageUrl;
    }

    @Override
    public String getTitle() {
        return this.mVideo.data.video.title;
    }

    public int getVideoId() {
        if (this.mTraffickingParameters != null) {
            return this.mTraffickingParameters.getVideoId();
        }
        return 0;
    }

    @Override
    public boolean isBackfillAd() {
        return false;
    }

    @Override
    public boolean isValid() {
        if (this.mVideo == null || this.mVideo.data == null || this.mVideo.data.video == null || this.mVideo.data.video.brand == null || this.mTraffickingParameters == null || this.mVideo.data.video.renditions.isEmpty()) {
            return false;
        }
        return true;
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }

    @Override
    public String promotionType() {
        return this.mVideo.data.video.promotionType;
    }

    public void setTraffickingParameters(TraffickingParameters traffickingParameters) {
        this.mTraffickingParameters = traffickingParameters;
    }

    public void setVideo(VideoResponse videoResponse) {
        this.mVideo = videoResponse;
    }
}

