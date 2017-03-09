/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.widget.ProgressBar
 */
package com.buzzfeed.spicerack.ui.holder;

import android.view.View;
import android.widget.ProgressBar;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.toolkit.util.UIUtil;

public class LoadingSpiceViewHolder
extends BaseViewHolder {
    private ProgressBar mProgressBar;

    public LoadingSpiceViewHolder(View view) {
        super(view);
        this.mProgressBar = (ProgressBar)UIUtil.findView(view, R.id.loading_view);
    }

    public void hide() {
        this.mProgressBar.setVisibility(4);
    }
}

