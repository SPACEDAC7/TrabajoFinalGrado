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
import com.buzzfeed.spicerack.data.model.subbuzz.TextSpice;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.UIUtil;

public class TextSpiceViewHolder
extends SpiceViewHolder {
    TextView mDescription;

    public TextSpiceViewHolder(View view) {
        super(view);
        this.mDescription = (TextView)UIUtil.findView(view, R.id.spice_text_description);
    }

    @Override
    public void populateFrom(Content object) {
        super.populateFrom((Content)object);
        if (object instanceof TextSpice) {
            object = (TextSpice)object;
            this.setText(this.mDescription, object.getDescription(), true);
        }
    }
}

