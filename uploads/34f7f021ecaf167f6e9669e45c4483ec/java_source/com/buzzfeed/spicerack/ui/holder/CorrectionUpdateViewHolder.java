/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.view.View;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.CorrectionUpdateSpice;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.UIUtil;

public class CorrectionUpdateViewHolder
extends SpiceViewHolder {
    private TextView mCaptionText;
    private TextView mDescriptionText;

    public CorrectionUpdateViewHolder(View view) {
        super(view);
        this.mDescriptionText = (TextView)UIUtil.findView(view, R.id.spice_update_correction_description);
        this.mCaptionText = (TextView)UIUtil.findView(view, R.id.spice_update_correction_caption);
    }

    @Override
    public void populateFrom(Content object) {
        super.populateFrom((Content)object);
        object = (CorrectionUpdateSpice)object;
        this.setText(this.mDescriptionText, object.getDescription(), true);
        this.setText(this.mCaptionText, this.setDate(object.getPublishedTimestamp()), true);
    }
}

