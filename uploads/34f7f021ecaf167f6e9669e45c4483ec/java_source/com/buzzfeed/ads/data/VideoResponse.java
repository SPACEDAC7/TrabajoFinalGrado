/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.ads.data;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;

public class VideoResponse {
    public Data data;

    public class Brand {
        @SerializedName(value="id")
        public int id;
        @SerializedName(value="image_url")
        public String imageUrl;
        @SerializedName(value="name")
        public String name;
    }

    public class Data {
        public Video video;
    }

    public class Rendition {
        @SerializedName(value="name")
        public String name;
        @SerializedName(value="url")
        public String url;
    }

    public class Show {
        @SerializedName(value="avatar_image_url")
        public String avatarImageUrl;
        @SerializedName(value="brand")
        public Object brand;
        @SerializedName(value="brand_id")
        public Object brandId;
        @SerializedName(value="cover_photo_url")
        public String coverPhotoUrl;
        @SerializedName(value="description")
        public String description;
        @SerializedName(value="double_width_cover_url")
        public String doubleWidthCoverUrl;
        @SerializedName(value="id")
        public int id;
        @SerializedName(value="name")
        public String name;
        @SerializedName(value="promotion_type")
        public Object promotionType;
        @SerializedName(value="size")
        public int size;
        @SerializedName(value="title")
        public String title;
    }

    public class Video {
        @SerializedName(value="aspect_ratio")
        public String aspectRatio;
        @SerializedName(value="brand")
        public Brand brand;
        @SerializedName(value="buzz_id")
        public int buzzId;
        @SerializedName(value="buzzfeed_video_url")
        public String buzzfeedVideoUrl;
        @SerializedName(value="default_thumbnail_url")
        public String defaultThumbnailUrl;
        public String description;
        @SerializedName(value="duration")
        public int duration;
        @Expose
        @SerializedName(value="height")
        public int height;
        @SerializedName(value="id")
        public Integer id;
        @SerializedName(value="input_url")
        public String inputUrl;
        @SerializedName(value="is_promoted")
        public boolean isPromoted;
        @SerializedName(value="promotion_type")
        public String promotionType;
        @SerializedName(value="renditions")
        public List<Rendition> renditions;
        @SerializedName(value="show")
        public Show show;
        @SerializedName(value="thumbnail_url")
        public String thumbnailUrl;
        @SerializedName(value="title")
        public String title;
        @SerializedName(value="width")
        public int width;
    }

}

