/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.Html
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.RelativeLayout
 *  android.widget.TextView
 */
package com.buzzfeed.toolkit.author.ui.view;

import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.UIUtil;

public class AuthorMoreBylineView
extends RelativeLayout {
    private TextView mAuthorDescriptionTextView;
    private TextView mMoreAuthorsTextView;

    public AuthorMoreBylineView(Context context) {
        super(context);
        this.init();
    }

    public AuthorMoreBylineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public AuthorMoreBylineView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    private void init() {
        AuthorMoreBylineView.inflate((Context)this.getContext(), (int)R.layout.author_byline_more, (ViewGroup)this);
        this.mMoreAuthorsTextView = (TextView)UIUtil.findView((View)this, R.id.byline_more_text);
        this.mAuthorDescriptionTextView = (TextView)UIUtil.findView((View)this, R.id.byline_description);
    }

    public void populateFrom(String string2, String string3) {
        this.mMoreAuthorsTextView.setText((CharSequence)Html.fromHtml((String)string2));
        this.mAuthorDescriptionTextView.setText((CharSequence)string3);
        this.setClickable(true);
    }
}

