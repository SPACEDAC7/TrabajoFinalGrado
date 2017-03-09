/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public class WeaverEmbed {
    private List<Show> shows = Collections.emptyList();

    public List<Show> getShows() {
        return this.shows;
    }

    public boolean hasShows() {
        if (this.shows != null && !this.shows.isEmpty()) {
            return true;
        }
        return false;
    }

    public static class Show
    implements Serializable {
        @SerializedName(value="background_image_url")
        private String backgroundImageUrl;
        private String description;
        private String id;
        private String name;
        @SerializedName(value="thumbnail_url")
        private String thumbnailUrl;

        @Nullable
        public String getBackgroundImageUrl() {
            return this.backgroundImageUrl;
        }

        @Nullable
        public String getDescription() {
            return this.description;
        }

        @Nullable
        public String getId() {
            return this.id;
        }

        @Nullable
        public String getName() {
            return this.name;
        }

        @Nullable
        public String getThumbnailUrl() {
            return this.thumbnailUrl;
        }
    }

}

