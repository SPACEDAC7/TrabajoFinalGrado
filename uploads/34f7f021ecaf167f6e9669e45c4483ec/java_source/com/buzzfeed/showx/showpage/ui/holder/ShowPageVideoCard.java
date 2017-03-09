/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.showx.showpage.ui.holder;

import android.view.View;
import com.buzzfeed.buffet.ui.holder.VideoCard;

public class ShowPageVideoCard
extends VideoCard {
    public ShowPageVideoCard(View view) {
        super(view);
    }

    @Override
    protected void updateIcons() {
        this.setShowAvatarVisibility(false);
        this.setAudioIconVisibility(true);
    }
}

