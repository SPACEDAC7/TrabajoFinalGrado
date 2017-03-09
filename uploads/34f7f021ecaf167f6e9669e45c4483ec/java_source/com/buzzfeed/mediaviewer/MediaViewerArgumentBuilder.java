/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcelable
 */
package com.buzzfeed.mediaviewer;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;

public abstract class MediaViewerArgumentBuilder<T extends MediaViewerArgumentBuilder> {
    public static final String KEY_ASPECT_RATIO = "KEY_ASPECT_RATIO";
    public static final String KEY_AVATAR_URL = "KEY_AVATAR_URL";
    public static final String KEY_CONTENT_ID = "KEY_CONTENT_ID";
    public static final String KEY_CONTENT_URI = "KEY_CONTENT_URI";
    public static final String KEY_COVER_IMAGE_URL = "KEY_COVER_IMAGE";
    public static final String KEY_DURATION = "KEY_DURATION";
    public static final String KEY_INITIAL_PLAYBACK_REASON = "KEY_INITIAL_PLAYBACK_REASON";
    public static final String KEY_RECIPE_CLICK_INTENT = "KEY_RECIPE_CLICK_INTENT";
    public static final String KEY_REFERRER_FEED_POSITION = "KEY_REFERRER_FEED_POSITION";
    public static final String KEY_REFERRER_SCREEN = "KEY_REFERRER_SCREEN";
    public static final String KEY_SHOW_CLICK_INTENT = "KEY_SHOW_CLICK_INTENT";
    public static final String KEY_SHOW_ID = "KEY_SHOW_ID";
    public static final String KEY_SOURCE_URI = "KEY_SOURCE_URL";
    public static final String KEY_START_POSITION = "KEY_START_POSITION";
    public static final String KEY_VIDEO_TITLE = "KEY_VIDEO_TITLE";
    protected Bundle mExtras = new Bundle();

    public T aspectRatio(float f2) {
        this.mExtras.putFloat("KEY_ASPECT_RATIO", f2);
        return (T)this;
    }

    public T avatarUrl(String string2) {
        this.mExtras.putString("KEY_AVATAR_URL", string2);
        return (T)this;
    }

    public T contentId(String string2) {
        this.mExtras.putString("KEY_CONTENT_ID", string2);
        return (T)this;
    }

    public T contentUri(String string2) {
        this.mExtras.putString("KEY_CONTENT_URI", string2);
        return (T)this;
    }

    public T coverImageUrl(Serializable serializable) {
        this.mExtras.putSerializable("KEY_COVER_IMAGE", serializable);
        return (T)this;
    }

    public T duration(long l2) {
        this.mExtras.putLong("KEY_DURATION", l2);
        return (T)this;
    }

    public T initialPlaybackReason(String string2) {
        this.mExtras.putString("KEY_INITIAL_PLAYBACK_REASON", string2);
        return (T)this;
    }

    public T recipeClickIntent(Intent intent) {
        this.mExtras.putParcelable("KEY_RECIPE_CLICK_INTENT", (Parcelable)intent);
        return (T)this;
    }

    public T referrerFeedPosition(int n2) {
        this.mExtras.putInt("KEY_REFERRER_FEED_POSITION", n2);
        return (T)this;
    }

    public T referrerScreen(String string2) {
        this.mExtras.putString("KEY_REFERRER_SCREEN", string2);
        return (T)this;
    }

    public T showClickIntent(Intent intent) {
        this.mExtras.putParcelable("KEY_SHOW_CLICK_INTENT", (Parcelable)intent);
        return (T)this;
    }

    public T showId(String string2) {
        this.mExtras.putString("KEY_SHOW_ID", string2);
        return (T)this;
    }

    public T sourceUri(String string2) {
        this.mExtras.putString("KEY_SOURCE_URL", string2);
        return (T)this;
    }

    public T startPosition(long l2) {
        this.mExtras.putLong("KEY_START_POSITION", l2);
        return (T)this;
    }

    public T videoTitle(String string2) {
        this.mExtras.putString("KEY_VIDEO_TITLE", string2);
        return (T)this;
    }
}

