/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Rect
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.spicerack.ui.view;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.experiment.FixedShareBarVariant;
import com.buzzfeed.spicerack.ui.view.FixedShareBar;
import com.buzzfeed.spicerack.ui.view.SpicyLayoutManager;
import com.buzzfeed.spicerack.ui.view.SpicyRecyclerView;
import com.buzzfeed.spicerack.ui.view.SpicyView;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionSender;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;

public class BlankHeaderSpicyView
extends SpicyView {
    public BlankHeaderSpicyView(Context context) {
        super(context);
    }

    public BlankHeaderSpicyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BlankHeaderSpicyView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    @Override
    protected void initView() {
        BlankHeaderSpicyView.inflate((Context)this.getContext(), (int)R.layout.blank_header_spicy_view, (ViewGroup)this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onSharedElementTransitionEnd() {
        if (this.mRecyclerView == null || this.mSpicyLayoutManager == null) {
            return;
        }
        this.mSpicyLayoutManager.setScrollEnabled(true);
    }

    @Override
    public void populateHeader(PostContent postContent, SharedTransitionSender sharedTransitionSender) {
        if (this.mPopulatedHeader) {
            return;
        }
        this.mPopulatedHeader = true;
        this.buildListFromPostContent(postContent);
        this.dismissLoading();
        this.onSharedElementTransitionEnd();
    }

    @Override
    public void setFixedShareBarVariant(FixedShareBarVariant fixedShareBarVariant, FixedShareBar.FixedShareBarListener fixedShareBarListener) {
    }

    @Override
    public void setHeaderImageInfo(Stack<String> stack, boolean bl, boolean bl2) {
    }

    @Override
    protected void setupHeader() {
        this.mRecyclerView.addItemDecoration(new RecyclerView.ItemDecoration(){

            @Override
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                if (recyclerView.getChildLayoutPosition(view) == 0) {
                    rect.top = UIUtil.getActionBarHeight(BlankHeaderSpicyView.this.getContext());
                }
            }
        });
    }

}

