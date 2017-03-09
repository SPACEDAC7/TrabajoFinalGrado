/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.model.subbuzz;

import com.buzzfeed.toolkit.content.AuthorContent;
import java.io.Serializable;

public class Byline
implements AuthorContent,
Serializable {
    String avatar;
    String bio;
    String descriptionId;
    String descriptionVisual;
    String displayName;
    String email;
    String facebookPageUrl;
    String id;
    String title;
    String twitterPageUrl;
    String username;

    @Override
    public String getAvatar() {
        return this.avatar;
    }

    public String getBio() {
        return this.bio;
    }

    public String getDescriptionId() {
        return this.descriptionId;
    }

    public String getDescriptionVisual() {
        return this.descriptionVisual;
    }

    @Override
    public String getDisplayName() {
        return this.displayName;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFacebookPageUrl() {
        return this.facebookPageUrl;
    }

    public String getId() {
        return this.id;
    }

    @Override
    public String getTitle() {
        return this.title;
    }

    public String getTwitterPageUrl() {
        return this.twitterPageUrl;
    }

    public String getUsername() {
        return this.username;
    }
}

