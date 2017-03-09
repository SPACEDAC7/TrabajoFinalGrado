/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.sharebar;

import android.support.annotation.DrawableRes;
import com.buzzfeed.toolkit.util.ShareItemType;

public interface ShareBarItem {
    @DrawableRes
    public int getBackgroundDrawableResource();

    @DrawableRes
    public int getImageResource();

    public ShareItemType getShareType();
}

