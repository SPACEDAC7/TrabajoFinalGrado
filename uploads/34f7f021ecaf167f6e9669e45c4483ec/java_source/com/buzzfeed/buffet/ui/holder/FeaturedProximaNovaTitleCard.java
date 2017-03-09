/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.AssetManager
 *  android.graphics.Typeface
 *  android.view.View
 *  android.widget.TextView
 *  uk.co.chrisjenx.calligraphy.TypefaceUtils
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.buffet.ui.holder.FeaturedCard;
import uk.co.chrisjenx.calligraphy.TypefaceUtils;

public class FeaturedProximaNovaTitleCard
extends FeaturedCard {
    public FeaturedProximaNovaTitleCard(View view) {
        super(view);
        this.mHeadline.setTypeface(TypefaceUtils.load((AssetManager)this.itemView.getContext().getAssets(), (String)"fonts/ProximaNova-Sbold.ttf"));
    }
}

