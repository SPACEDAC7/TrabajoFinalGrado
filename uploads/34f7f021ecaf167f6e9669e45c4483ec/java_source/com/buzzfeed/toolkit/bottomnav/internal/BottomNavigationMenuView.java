/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.AttributeSet
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 */
package com.buzzfeed.toolkit.bottomnav.internal;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.util.Pools;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.bottomnav.internal.BottomNavigationItemView;
import com.buzzfeed.toolkit.bottomnav.internal.BottomNavigationPresenter;

public class BottomNavigationMenuView
extends FrameLayout
implements MenuView {
    private static final Pools.Pool<BottomNavigationItemView> sItemPool = new Pools.SynchronizedPool<BottomNavigationItemView>(5);
    private int mActiveButton = 0;
    private final int mActiveItemMaxWidth;
    private BottomNavigationItemView[] mButtons;
    private final int mItemHeight;
    private MenuBuilder mMenu;
    private final View.OnClickListener mOnClickListener;
    private BottomNavigationPresenter mPresenter;
    private int[] mTempChildWidths;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context = this.getResources();
        this.mActiveItemMaxWidth = context.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.mItemHeight = context.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        this.mOnClickListener = new View.OnClickListener(){

            public void onClick(View object) {
                object = (BottomNavigationItemView)object;
                int n2 = object.getItemPosition();
                if (!BottomNavigationMenuView.this.mMenu.performItemAction(object.getItemData(), BottomNavigationMenuView.this.mPresenter, 0)) {
                    BottomNavigationMenuView.this.activateNewButton(n2);
                }
            }
        };
        this.mTempChildWidths = new int[5];
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView bottomNavigationItemView;
        BottomNavigationItemView bottomNavigationItemView2 = bottomNavigationItemView = sItemPool.acquire();
        if (bottomNavigationItemView == null) {
            bottomNavigationItemView2 = new BottomNavigationItemView(this.getContext());
        }
        return bottomNavigationItemView2;
    }

    public void activateNewButton(int n2) {
        if (this.mActiveButton == n2) {
            return;
        }
        this.mMenu.getItem(this.mActiveButton).setChecked(false);
        this.mMenu.getItem(n2).setChecked(true);
        this.mActiveButton = n2;
    }

    public void buildMenuView() {
        if (this.mButtons != null) {
            for (Object object : this.mButtons) {
                sItemPool.release((BottomNavigationItemView)((LinearLayout.LayoutParams)object));
            }
        }
        this.removeAllViews();
        if (this.mMenu.size() == 0) {
            this.mButtons = null;
            return;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0f);
        this.mButtons = new BottomNavigationItemView[this.mMenu.size()];
        for (int i2 = 0; i2 < this.mMenu.size(); ++i2) {
            Object object;
            this.mPresenter.setUpdateSuspended(true);
            this.mMenu.getItem(i2).setCheckable(true);
            this.mPresenter.setUpdateSuspended(false);
            this.mButtons[i2] = object = this.getNewItem();
            object.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
            object.initialize((MenuItemImpl)this.mMenu.getItem(i2), 0);
            object.setItemPosition(i2);
            object.setOnClickListener(this.mOnClickListener);
            this.addView((View)object);
        }
        this.mActiveButton = Math.min(this.mMenu.size() - 1, this.mActiveButton);
        this.mMenu.getItem(this.mActiveButton).setChecked(true);
    }

    @Override
    public int getWindowAnimations() {
        return 0;
    }

    @Override
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        int n6 = this.getChildCount();
        n4 -= n2;
        n5 -= n3;
        n3 = 0;
        n2 = 0;
        while (n2 < n6) {
            View view = this.getChildAt(n2);
            if (view.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection((View)this) == 1) {
                    view.layout(n4 - n3 - view.getMeasuredWidth(), 0, n4 - n3, n5);
                } else {
                    view.layout(n3, 0, view.getMeasuredWidth() + n3, n5);
                }
                n3 += view.getMeasuredWidth();
            }
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int[] arrn;
        n3 = View.MeasureSpec.getSize((int)n2);
        int n4 = this.getChildCount();
        int n5 = View.MeasureSpec.makeMeasureSpec((int)this.mItemHeight, (int)1073741824);
        n2 = n4 == 0 ? 1 : n4;
        int n6 = Math.min(n3 / n2, this.mActiveItemMaxWidth);
        n3 -= n6 * n4;
        for (n2 = 0; n2 < n4; ++n2) {
            this.mTempChildWidths[n2] = n6;
            int n7 = n3;
            if (n3 > 0) {
                arrn = this.mTempChildWidths;
                arrn[n2] = arrn[n2] + 1;
                n7 = n3 - 1;
            }
            n3 = n7;
        }
        n3 = 0;
        n2 = 0;
        do {
            if (n2 >= n4) {
                this.setMeasuredDimension(ViewCompat.resolveSizeAndState(n3, View.MeasureSpec.makeMeasureSpec((int)n3, (int)1073741824), 0), ViewCompat.resolveSizeAndState(this.mItemHeight, n5, 0));
                return;
            }
            arrn = this.getChildAt(n2);
            if (arrn.getVisibility() != 8) {
                arrn.measure(View.MeasureSpec.makeMeasureSpec((int)this.mTempChildWidths[n2], (int)1073741824), n5);
                arrn.getLayoutParams().width = arrn.getMeasuredWidth();
                n3 += arrn.getMeasuredWidth();
            }
            ++n2;
        } while (true);
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.mPresenter = bottomNavigationPresenter;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void updateMenuView() {
        int n2 = this.mMenu.size();
        if (n2 != this.mButtons.length) {
            this.buildMenuView();
            return;
        }
        int n3 = 0;
        while (n3 < n2) {
            this.mPresenter.setUpdateSuspended(true);
            if (this.mMenu.getItem(n3).isChecked()) {
                this.mActiveButton = n3;
            }
            this.mButtons[n3].initialize((MenuItemImpl)this.mMenu.getItem(n3), 0);
            this.mPresenter.setUpdateSuspended(false);
            ++n3;
        }
    }

}

