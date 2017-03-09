/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 */
package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.internal.BottomNavigationAnimationHelperBase;
import android.support.design.internal.BottomNavigationAnimationHelperIcs;
import android.support.design.internal.BottomNavigationItemView;
import android.support.design.internal.BottomNavigationPresenter;
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

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class BottomNavigationMenuView
extends ViewGroup
implements MenuView {
    private static final Pools.Pool<BottomNavigationItemView> sItemPool = new Pools.SynchronizedPool<BottomNavigationItemView>(5);
    private int mActiveButton = 0;
    private final int mActiveItemMaxWidth;
    private final BottomNavigationAnimationHelperBase mAnimationHelper;
    private BottomNavigationItemView[] mButtons;
    private final int mInactiveItemMaxWidth;
    private final int mInactiveItemMinWidth;
    private int mItemBackgroundRes;
    private final int mItemHeight;
    private ColorStateList mItemIconTint;
    private ColorStateList mItemTextColor;
    private MenuBuilder mMenu;
    private final View.OnClickListener mOnClickListener;
    private BottomNavigationPresenter mPresenter;
    private boolean mShiftingMode = true;
    private int[] mTempChildWidths;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context = this.getResources();
        this.mInactiveItemMaxWidth = context.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.mInactiveItemMinWidth = context.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.mActiveItemMaxWidth = context.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.mItemHeight = context.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        this.mAnimationHelper = Build.VERSION.SDK_INT >= 14 ? new BottomNavigationAnimationHelperIcs() : new BottomNavigationAnimationHelperBase();
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

    private void activateNewButton(int n2) {
        if (this.mActiveButton == n2) {
            return;
        }
        this.mAnimationHelper.beginDelayedTransition(this);
        this.mPresenter.setUpdateSuspended(true);
        this.mButtons[this.mActiveButton].setChecked(false);
        this.mButtons[n2].setChecked(true);
        this.mPresenter.setUpdateSuspended(false);
        this.mActiveButton = n2;
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView bottomNavigationItemView;
        BottomNavigationItemView bottomNavigationItemView2 = bottomNavigationItemView = sItemPool.acquire();
        if (bottomNavigationItemView == null) {
            bottomNavigationItemView2 = new BottomNavigationItemView(this.getContext());
        }
        return bottomNavigationItemView2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void buildMenuView() {
        if (this.mButtons != null) {
            for (BottomNavigationItemView bottomNavigationItemView : this.mButtons) {
                sItemPool.release(bottomNavigationItemView);
            }
        }
        this.removeAllViews();
        if (this.mMenu.size() == 0) {
            return;
        }
        this.mButtons = new BottomNavigationItemView[this.mMenu.size()];
        boolean bl = this.mMenu.size() > 3;
        this.mShiftingMode = bl;
        int n2 = 0;
        do {
            Object object;
            if (n2 >= this.mMenu.size()) {
                this.mActiveButton = Math.min(this.mMenu.size() - 1, this.mActiveButton);
                this.mMenu.getItem(this.mActiveButton).setChecked(true);
                return;
            }
            this.mPresenter.setUpdateSuspended(true);
            this.mMenu.getItem(n2).setCheckable(true);
            this.mPresenter.setUpdateSuspended(false);
            this.mButtons[n2] = object = this.getNewItem();
            object.setIconTintList(this.mItemIconTint);
            object.setTextColor(this.mItemTextColor);
            object.setItemBackground(this.mItemBackgroundRes);
            object.setShiftingMode(this.mShiftingMode);
            object.initialize((MenuItemImpl)this.mMenu.getItem(n2), 0);
            object.setItemPosition(n2);
            object.setOnClickListener(this.mOnClickListener);
            this.addView((View)object);
            ++n2;
        } while (true);
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.mItemIconTint;
    }

    public int getItemBackgroundRes() {
        return this.mItemBackgroundRes;
    }

    public ColorStateList getItemTextColor() {
        return this.mItemTextColor;
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
        int n4;
        int n5;
        int[] arrn;
        n3 = View.MeasureSpec.getSize((int)n2);
        int n6 = this.getChildCount();
        int n7 = View.MeasureSpec.makeMeasureSpec((int)this.mItemHeight, (int)1073741824);
        if (!this.mShiftingMode) {
            n2 = n6 == 0 ? 1 : n6;
            n5 = Math.min(n3 / n2, this.mActiveItemMaxWidth);
            n3 -= n5 * n6;
            for (n2 = 0; n2 < n6; ++n2) {
                this.mTempChildWidths[n2] = n5;
                n4 = n3;
                if (n3 > 0) {
                    arrn = this.mTempChildWidths;
                    arrn[n2] = arrn[n2] + 1;
                    n4 = n3 - 1;
                }
                n3 = n4;
            }
        } else {
            n2 = n6 - 1;
            n5 = Math.min(n3 - this.mInactiveItemMinWidth * n2, this.mActiveItemMaxWidth);
            int n8 = Math.min((n3 - n5) / n2, this.mInactiveItemMaxWidth);
            n3 = n3 - n5 - n8 * n2;
            for (n2 = 0; n2 < n6; ++n2) {
                arrn = this.mTempChildWidths;
                n4 = n2 == this.mActiveButton ? n5 : n8;
                arrn[n2] = n4;
                n4 = n3;
                if (n3 > 0) {
                    arrn = this.mTempChildWidths;
                    arrn[n2] = arrn[n2] + 1;
                    n4 = n3 - 1;
                }
                n3 = n4;
            }
        }
        n3 = 0;
        n2 = 0;
        do {
            if (n2 >= n6) {
                this.setMeasuredDimension(ViewCompat.resolveSizeAndState(n3, View.MeasureSpec.makeMeasureSpec((int)n3, (int)1073741824), 0), ViewCompat.resolveSizeAndState(this.mItemHeight, n7, 0));
                return;
            }
            arrn = this.getChildAt(n2);
            if (arrn.getVisibility() != 8) {
                arrn.measure(View.MeasureSpec.makeMeasureSpec((int)this.mTempChildWidths[n2], (int)1073741824), n7);
                arrn.getLayoutParams().width = arrn.getMeasuredWidth();
                n3 += arrn.getMeasuredWidth();
            }
            ++n2;
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setIconTintList(ColorStateList colorStateList) {
        this.mItemIconTint = colorStateList;
        if (this.mButtons == null) {
            return;
        }
        BottomNavigationItemView[] arrbottomNavigationItemView = this.mButtons;
        int n2 = arrbottomNavigationItemView.length;
        int n3 = 0;
        while (n3 < n2) {
            arrbottomNavigationItemView[n3].setIconTintList(colorStateList);
            ++n3;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setItemBackgroundRes(int n2) {
        this.mItemBackgroundRes = n2;
        if (this.mButtons == null) {
            return;
        }
        BottomNavigationItemView[] arrbottomNavigationItemView = this.mButtons;
        int n3 = arrbottomNavigationItemView.length;
        int n4 = 0;
        while (n4 < n3) {
            arrbottomNavigationItemView[n4].setItemBackground(n2);
            ++n4;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setItemTextColor(ColorStateList colorStateList) {
        this.mItemTextColor = colorStateList;
        if (this.mButtons == null) {
            return;
        }
        BottomNavigationItemView[] arrbottomNavigationItemView = this.mButtons;
        int n2 = arrbottomNavigationItemView.length;
        int n3 = 0;
        while (n3 < n2) {
            arrbottomNavigationItemView[n3].setTextColor(colorStateList);
            ++n3;
        }
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
            this.mButtons[n3].initialize((MenuItemImpl)this.mMenu.getItem(n3), 0);
            this.mPresenter.setUpdateSuspended(false);
            ++n3;
        }
    }

}

