/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.text.TextUtils
 */
package com.buzzfeed.android.navigation;

import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.ui.buffet.fragment.BuffetFragment;
import com.buzzfeed.android.ui.buffet.fragment.BuffetTabFragment;
import com.buzzfeed.android.ui.explore.ExploreFragment;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public class NavigationItem {
    public List<Feed> feeds = Collections.emptyList();
    @DrawableRes
    public int iconResId;
    public String id;
    @StringRes
    public int titleResId;
    public ContainerType type;

    public NavigationItem(String string2, @StringRes int n2, @DrawableRes int n3, ContainerType containerType) {
        this.id = string2;
        this.titleResId = n2;
        this.iconResId = n3;
        this.type = containerType;
    }

    public NavigationItem(String string2, @StringRes int n2, @DrawableRes int n3, ContainerType containerType, List<Feed> list) {
        this.id = string2;
        this.titleResId = n2;
        this.iconResId = n3;
        this.type = containerType;
        this.feeds = list;
    }

    public static enum ContainerType {
        BUFFET(BuffetFragment.class, "KEY_FEED"),
        BUFFET_TAB(BuffetTabFragment.class, "KEY_FEED"),
        EXPLORE(ExploreFragment.class, null);
        
        private final Class<? extends Fragment> classToLaunch;
        private final String feedArgumentKey;

        private ContainerType(Class<? extends Fragment> class_, String string3) {
            this.classToLaunch = class_;
            this.feedArgumentKey = string3;
        }

        @Nullable
        public Bundle buildFragmentArgsForFeed(Feed feed) {
            if (!this.isFeedContentSupported()) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putSerializable(this.feedArgumentKey, (Serializable)feed);
            return bundle;
        }

        public Class getClassToLaunch() {
            return this.classToLaunch;
        }

        public boolean isFeedContentSupported() {
            if (!TextUtils.isEmpty((CharSequence)this.feedArgumentKey)) {
                return true;
            }
            return false;
        }
    }

}

