/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.spicerack.ui.holder;

import android.view.View;
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.spicerack.ui.view.SpicyWebView;
import com.buzzfeed.toolkit.content.Content;

public class FallBackViewHolder
extends BaseViewHolder {
    public FallBackViewHolder(View view) {
        super(view);
    }

    @Override
    public void populateFrom(Content content) {
        content = (SpiceItem)content;
        ((SpicyWebView)this.itemView).populateFrom((SpiceItem)content);
    }
}

