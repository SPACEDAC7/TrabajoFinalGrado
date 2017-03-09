/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.UIUtil;

public abstract class SpiceViewHolder
extends BaseViewHolder {
    protected TextView mHeader;

    public SpiceViewHolder(View view) {
        super(view);
        this.mHeader = (TextView)UIUtil.findView(view, R.id.spice_component_header);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void populateFrom(Content object) {
        if (object instanceof SubBuzz) {
            String string2;
            SubBuzz subBuzz = (SubBuzz)object;
            object = string2 = subBuzz.getHeader();
            if (subBuzz.getNumber() > 0) {
                object = "" + subBuzz.getNumber() + "\\. ";
                if (!TextUtils.isEmpty((CharSequence)string2)) {
                    object = (String)object + string2;
                }
            }
            this.setText(this.mHeader, (String)object, true);
        }
    }
}

