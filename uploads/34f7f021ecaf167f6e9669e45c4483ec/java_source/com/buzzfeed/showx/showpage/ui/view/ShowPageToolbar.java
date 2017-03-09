/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.TextView
 */
package com.buzzfeed.showx.showpage.ui.view;

import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.buzzfeed.showx.R;
import com.buzzfeed.toolkit.util.UIUtil;

public class ShowPageToolbar
extends Toolbar {
    private TextView mTitleTextView;

    public ShowPageToolbar(Context context) {
        super(context);
        this.initialize();
    }

    public ShowPageToolbar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public ShowPageToolbar(Context context, @Nullable AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    private void initialize() {
        ShowPageToolbar.inflate((Context)this.getContext(), (int)this.getLayoutResourceId(), (ViewGroup)this);
        this.mTitleTextView = (TextView)UIUtil.findView((View)this, R.id.toolbar_title);
    }

    @LayoutRes
    protected int getLayoutResourceId() {
        return R.layout.toolbar_actionbar_default;
    }

    @Override
    public void setTitle(@StringRes int n2) {
        super.setTitle("");
        this.mTitleTextView.setText(n2);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        super.setTitle("");
        this.mTitleTextView.setText(charSequence);
    }

    public void setTitleTextAlpha(@FloatRange(from=0.0, to=1.0) float f2) {
        this.mTitleTextView.setAlpha(f2);
    }

    @Override
    public void setTitleTextAppearance(Context context, @StyleRes int n2) {
        this.mTitleTextView.setTextAppearance(context, n2);
    }

    @Override
    public void setTitleTextColor(@ColorInt int n2) {
        this.mTitleTextView.setTextColor(n2);
    }
}

