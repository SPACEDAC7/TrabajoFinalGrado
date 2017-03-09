/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.android.ui.explore.holder;

import android.support.annotation.Nullable;
import android.view.View;
import com.buzzfeed.android.ui.explore.listener.ExploreUserActionListener;
import com.buzzfeed.toolkit.ui.holder.BaseViewHolder;

public abstract class ExploreItemViewHolder<M>
extends BaseViewHolder<M> {
    @Nullable
    private ExploreUserActionListener mUserActionListener;

    ExploreItemViewHolder(View view) {
        super(view);
    }

    @Nullable
    ExploreUserActionListener getUserActionListener() {
        return this.mUserActionListener;
    }

    public void setUserActionListener(@Nullable ExploreUserActionListener exploreUserActionListener) {
        this.mUserActionListener = exploreUserActionListener;
    }
}

