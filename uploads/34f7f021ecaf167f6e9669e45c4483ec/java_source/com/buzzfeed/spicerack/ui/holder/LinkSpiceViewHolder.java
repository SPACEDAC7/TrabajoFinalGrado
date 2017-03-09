/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.text.TextUtils
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.LinkSpice;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;

public class LinkSpiceViewHolder
extends SpiceViewHolder {
    private static final String PREPENDED_URI = "www.";
    private static final String TAG = LinkSpiceViewHolder.class.getSimpleName();
    private TextView mCaptionText;
    private TextView mDescriptionText;

    public LinkSpiceViewHolder(View view) {
        super(view);
        this.mCaptionText = (TextView)UIUtil.findView(view, R.id.spice_link_caption);
        this.mDescriptionText = (TextView)UIUtil.findView(view, R.id.spice_link_description);
        this.mHeader = (TextView)UIUtil.findView(view, R.id.spice_link_header);
    }

    @Nullable
    private String getBaseUrl(String string2) {
        String string3;
        string2 = string3 = Uri.parse((String)string2).getHost();
        if (string3 != null) {
            string2 = string3;
            if (string3.startsWith("www.")) {
                string2 = string3.substring("www.".length());
            }
        }
        return string2;
    }

    private String makeLink(String string2, String string3) {
        if (TextUtils.isEmpty((CharSequence)string3)) {
            return this.makeLinkMarkdown(string2, this.getBaseUrl(string2));
        }
        return this.makeLinkMarkdown(string2, string3);
    }

    private String makeLinkMarkdown(String string2, String string3) {
        return "[" + string3 + "](" + string2 + ")";
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void populateFrom(Content object) {
        String string2 = (object = (LinkSpice)object).getLink();
        String string3 = this.getBaseUrl(string2);
        if (string3 != null) {
            this.setText(this.mHeader, this.makeLink(string2, object.getHeader()), true);
            this.setText(this.mCaptionText, string3, true);
        } else {
            LogUtil.e(TAG, "cannot display link with invalid url: " + string2);
            this.setText(this.mHeader, object.getHeader(), true);
            this.mCaptionText.setVisibility(8);
        }
        if (TextUtils.isEmpty((CharSequence)object.getDescription())) {
            this.mDescriptionText.setVisibility(8);
            return;
        }
        this.setText(this.mDescriptionText, object.getDescription(), true);
    }
}

