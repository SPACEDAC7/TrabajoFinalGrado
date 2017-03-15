/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.ContextThemeWrapper
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewDebug
 *  android.view.ViewDebug$ExportedProperty
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ViewUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
extends LinearLayoutCompat
implements MenuBuilder.ItemInvoker,
MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private MenuPresenter.Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    MenuBuilder.Callback mMenuBuilderCallback;
    private int mMinCellSize;
    OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int)(56.0f * f2);
        this.mGeneratedItemPadding = (int)(4.0f * f2);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static int measureChildForCells(View var0, int var1_1, int var2_2, int var3_3, int var4_4) {
        var6_5 = (LayoutParams)var0.getLayoutParams();
        var8_6 = View.MeasureSpec.makeMeasureSpec((int)(View.MeasureSpec.getSize((int)var3_3) - var4_4), (int)View.MeasureSpec.getMode((int)var3_3));
        var5_7 = var0 instanceof ActionMenuItemView != false ? (ActionMenuItemView)var0 : null;
        var4_4 = var5_7 != null && var5_7.hasText() != false ? 1 : 0;
        var3_3 = var7_8 = 0;
        if (var2_2 <= 0) ** GOTO lbl20
        if (var4_4 == 0) ** GOTO lbl-1000
        var3_3 = var7_8;
        if (var2_2 >= 2) lbl-1000: // 2 sources:
        {
            var0.measure(View.MeasureSpec.makeMeasureSpec((int)(var1_1 * var2_2), (int)Integer.MIN_VALUE), var8_6);
            var7_8 = var0.getMeasuredWidth();
            var2_2 = var3_3 = var7_8 / var1_1;
            if (var7_8 % var1_1 != 0) {
                var2_2 = var3_3 + 1;
            }
            var3_3 = var2_2;
            if (var4_4 != 0) {
                var3_3 = var2_2;
                if (var2_2 < 2) {
                    var3_3 = 2;
                }
            }
        }
lbl20: // 8 sources:
        var9_9 = var6_5.isOverflowButton == false && var4_4 != 0;
        var6_5.expandable = var9_9;
        var6_5.cellsUsed = var3_3;
        var0.measure(View.MeasureSpec.makeMeasureSpec((int)(var3_3 * var1_1), (int)1073741824), var8_6);
        return var3_3;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void onMeasureExactFormat(int var1_1, int var2_2) {
        block39 : {
            var20_3 = View.MeasureSpec.getMode((int)var2_2);
            var1_1 = View.MeasureSpec.getSize((int)var1_1);
            var19_4 = View.MeasureSpec.getSize((int)var2_2);
            var8_5 = this.getPaddingLeft();
            var9_6 = this.getPaddingRight();
            var25_7 = this.getPaddingTop() + this.getPaddingBottom();
            var21_8 = ActionMenuView.getChildMeasureSpec((int)var2_2, (int)var25_7, (int)-2);
            var22_9 = var1_1 - (var8_5 + var9_6);
            var1_1 = var22_9 / this.mMinCellSize;
            var2_2 = this.mMinCellSize;
            if (var1_1 == 0) {
                this.setMeasuredDimension(var22_9, 0);
                return;
            }
            var23_10 = this.mMinCellSize + var22_9 % var2_2 / var1_1;
            var8_5 = 0;
            var11_11 = 0;
            var10_12 = 0;
            var12_13 = 0;
            var9_6 = 0;
            var27_14 = 0;
            var24_15 = this.getChildCount();
            for (var13_16 = 0; var13_16 < var24_15; ++var13_16) {
                var6_18 = this.getChildAt(var13_16);
                if (var6_18.getVisibility() == 8) {
                    var29_26 = var27_14;
                    var14_20 = var9_6;
                } else {
                    var33_17 = var6_18 instanceof ActionMenuItemView;
                    var15_21 = var12_13 + 1;
                    if (var33_17) {
                        var6_18.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
                    }
                    var7_19 = (LayoutParams)var6_18.getLayoutParams();
                    var7_19.expanded = false;
                    var7_19.extraPixels = 0;
                    var7_19.cellsUsed = 0;
                    var7_19.expandable = false;
                    var7_19.leftMargin = 0;
                    var7_19.rightMargin = 0;
                    var33_17 = var33_17 != false && ((ActionMenuItemView)var6_18).hasText() != false;
                    var7_19.preventEdgeOffset = var33_17;
                    var2_2 = var7_19.isOverflowButton != false ? 1 : var1_1;
                    var26_25 = ActionMenuView.measureChildForCells((View)var6_18, var23_10, var2_2, var21_8, var25_7);
                    var16_23 = Math.max(var11_11, var26_25);
                    var2_2 = var10_12;
                    if (var7_19.expandable) {
                        var2_2 = var10_12 + 1;
                    }
                    if (var7_19.isOverflowButton) {
                        var9_6 = 1;
                    }
                    var17_22 = var1_1 - var26_25;
                    var18_24 = Math.max(var8_5, var6_18.getMeasuredHeight());
                    var1_1 = var17_22;
                    var10_12 = var2_2;
                    var14_20 = var9_6;
                    var11_11 = var16_23;
                    var8_5 = var18_24;
                    var29_26 = var27_14;
                    var12_13 = var15_21;
                    if (var26_25 == 1) {
                        var29_26 = var27_14 | (long)(1 << var13_16);
                        var1_1 = var17_22;
                        var10_12 = var2_2;
                        var14_20 = var9_6;
                        var11_11 = var16_23;
                        var8_5 = var18_24;
                        var12_13 = var15_21;
                    }
                }
                var9_6 = var14_20;
                var27_14 = var29_26;
            }
            var13_16 = var9_6 != 0 && var12_13 == 2 ? 1 : 0;
            var2_2 = 0;
            var14_20 = var1_1;
            do {
                var29_26 = var27_14;
                if (var10_12 <= 0) ** GOTO lbl106
                var29_26 = var27_14;
                if (var14_20 <= 0) ** GOTO lbl106
                var15_21 = Integer.MAX_VALUE;
                var31_27 = 0;
                var18_24 = 0;
                for (var16_23 = 0; var16_23 < var24_15; ++var16_23) {
                    var6_18 = (LayoutParams)this.getChildAt(var16_23).getLayoutParams();
                    if (!var6_18.expandable) {
                        var29_26 = var31_27;
                        var1_1 = var18_24;
                        var17_22 = var15_21;
                    } else if (var6_18.cellsUsed < var15_21) {
                        var17_22 = var6_18.cellsUsed;
                        var29_26 = 1 << var16_23;
                        var1_1 = 1;
                    } else {
                        var17_22 = var15_21;
                        var1_1 = var18_24;
                        var29_26 = var31_27;
                        if (var6_18.cellsUsed == var15_21) {
                            var29_26 = var31_27 | (long)(1 << var16_23);
                            var1_1 = var18_24 + 1;
                            var17_22 = var15_21;
                        }
                    }
                    var15_21 = var17_22;
                    var18_24 = var1_1;
                    var31_27 = var29_26;
                }
                var27_14 |= var31_27;
                if (var18_24 <= var14_20) ** GOTO lbl158
                var29_26 = var27_14;
lbl106: // 3 sources:
                var1_1 = var9_6 == 0 && var12_13 == 1 ? 1 : 0;
                var9_6 = var2_2;
                if (var14_20 <= 0) ** GOTO lbl155
                var9_6 = var2_2;
                if (var29_26 == 0) ** GOTO lbl155
                if (var14_20 < var12_13 - 1 || var1_1 != 0) ** GOTO lbl-1000
                var9_6 = var2_2;
                if (var11_11 > 1) lbl-1000: // 2 sources:
                {
                    var4_29 = var5_28 = (float)Long.bitCount(var29_26);
                    if (var1_1 == 0) {
                        var3_30 = var5_28;
                        if ((1 & var29_26) != 0) {
                            var3_30 = var5_28;
                            if (!((LayoutParams)this.getChildAt((int)0).getLayoutParams()).preventEdgeOffset) {
                                var3_30 = var5_28 - 0.5f;
                            }
                        }
                        var4_29 = var3_30;
                        if (((long)(1 << var24_15 - 1) & var29_26) != 0) {
                            var4_29 = var3_30;
                            if (!((LayoutParams)this.getChildAt((int)(var24_15 - 1)).getLayoutParams()).preventEdgeOffset) {
                                var4_29 = var3_30 - 0.5f;
                            }
                        }
                    }
                    var9_6 = var4_29 > 0.0f ? (int)((float)(var14_20 * var23_10) / var4_29) : 0;
                    for (var10_12 = 0; var10_12 < var24_15; ++var10_12) {
                        if (((long)(1 << var10_12) & var29_26) == 0) {
                            var1_1 = var2_2;
                        } else {
                            var6_18 = this.getChildAt(var10_12);
                            var7_19 = (LayoutParams)var6_18.getLayoutParams();
                            if (var6_18 instanceof ActionMenuItemView) {
                                var7_19.extraPixels = var9_6;
                                var7_19.expanded = true;
                                if (var10_12 == 0 && !var7_19.preventEdgeOffset) {
                                    var7_19.leftMargin = (- var9_6) / 2;
                                }
                                var1_1 = 1;
                            } else if (var7_19.isOverflowButton) {
                                var7_19.extraPixels = var9_6;
                                var7_19.expanded = true;
                                var7_19.rightMargin = (- var9_6) / 2;
                                var1_1 = 1;
                            } else {
                                if (var10_12 != 0) {
                                    var7_19.leftMargin = var9_6 / 2;
                                }
                                var1_1 = var2_2;
                                if (var10_12 != var24_15 - 1) {
                                    var7_19.rightMargin = var9_6 / 2;
                                    var1_1 = var2_2;
                                }
                            }
                        }
                        var2_2 = var1_1;
                    }
                    var9_6 = var2_2;
                }
lbl155: // 5 sources:
                if (var9_6 != 0) {
                    break;
                }
                break block39;
lbl158: // 2 sources:
                for (var1_1 = 0; var1_1 < var24_15; ++var1_1) {
                    var6_18 = this.getChildAt(var1_1);
                    var7_19 = (LayoutParams)var6_18.getLayoutParams();
                    if (((long)(1 << var1_1) & var31_27) == 0) {
                        var2_2 = var14_20;
                        var29_26 = var27_14;
                        if (var7_19.cellsUsed == var15_21 + 1) {
                            var29_26 = var27_14 | (long)(1 << var1_1);
                            var2_2 = var14_20;
                        }
                    } else {
                        if (var13_16 != 0 && var7_19.preventEdgeOffset && var14_20 == 1) {
                            var6_18.setPadding(this.mGeneratedItemPadding + var23_10, 0, this.mGeneratedItemPadding, 0);
                        }
                        ++var7_19.cellsUsed;
                        var7_19.expanded = true;
                        var2_2 = var14_20 - 1;
                        var29_26 = var27_14;
                    }
                    var14_20 = var2_2;
                    var27_14 = var29_26;
                }
                var2_2 = 1;
            } while (true);
            for (var1_1 = 0; var1_1 < var24_15; ++var1_1) {
                var6_18 = this.getChildAt(var1_1);
                var7_19 = (LayoutParams)var6_18.getLayoutParams();
                if (!var7_19.expanded) continue;
                var6_18.measure(View.MeasureSpec.makeMeasureSpec((int)(var7_19.cellsUsed * var23_10 + var7_19.extraPixels), (int)1073741824), var21_8);
            }
        }
        var1_1 = var19_4;
        if (var20_3 != 1073741824) {
            var1_1 = var8_5;
        }
        this.setMeasuredDimension(var22_9, var1_1);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null && layoutParams instanceof LayoutParams) {
            return true;
        }
        return false;
    }

    public void dismissPopupMenus() {
        if (this.mPresenter != null) {
            this.mPresenter.dismissPopupMenus();
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override
    protected LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams object) {
        if (object == null) {
            return this.generateDefaultLayoutParams();
        }
        object = object instanceof LayoutParams ? new LayoutParams((LayoutParams)((Object)object)) : new LayoutParams((ViewGroup.LayoutParams)object);
        if (object.gravity <= 0) {
            object.gravity = 16;
        }
        return object;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams layoutParams = this.generateDefaultLayoutParams();
        layoutParams.isOverflowButton = true;
        return layoutParams;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Menu getMenu() {
        if (this.mMenu == null) {
            Object object = this.getContext();
            this.mMenu = new MenuBuilder((Context)object);
            this.mMenu.setCallback(new MenuBuilderCallback());
            this.mPresenter = new ActionMenuPresenter((Context)object);
            this.mPresenter.setReserveOverflow(true);
            ActionMenuPresenter actionMenuPresenter = this.mPresenter;
            object = this.mActionMenuPresenterCallback != null ? this.mActionMenuPresenterCallback : new ActionMenuPresenterCallback();
            actionMenuPresenter.setCallback((MenuPresenter.Callback)object);
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        this.getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int getWindowAnimations() {
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected boolean hasSupportDividerBeforeChildAt(int n2) {
        boolean bl;
        if (n2 == 0) {
            return false;
        }
        View view = this.getChildAt(n2 - 1);
        View view2 = this.getChildAt(n2);
        boolean bl2 = bl = false;
        if (n2 < this.getChildCount()) {
            bl2 = bl;
            if (view instanceof ActionMenuChildView) {
                bl2 = false | ((ActionMenuChildView)view).needsDividerAfter();
            }
        }
        bl = bl2;
        if (n2 <= 0) return bl;
        bl = bl2;
        if (!(view2 instanceof ActionMenuChildView)) return bl;
        return bl2 | ((ActionMenuChildView)view2).needsDividerBefore();
    }

    public boolean hideOverflowMenu() {
        if (this.mPresenter != null && this.mPresenter.hideOverflowMenu()) {
            return true;
        }
        return false;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean isOverflowMenuShowPending() {
        if (this.mPresenter != null && this.mPresenter.isOverflowMenuShowPending()) {
            return true;
        }
        return false;
    }

    public boolean isOverflowMenuShowing() {
        if (this.mPresenter != null && this.mPresenter.isOverflowMenuShowing()) {
            return true;
        }
        return false;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mPresenter != null) {
            this.mPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.dismissPopupMenus();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        View view;
        LayoutParams layoutParams;
        int n6;
        if (!this.mFormatItems) {
            super.onLayout(bl, n2, n3, n4, n5);
            return;
        }
        int n7 = this.getChildCount();
        int n8 = (n5 - n3) / 2;
        int n9 = this.getDividerWidth();
        int n10 = 0;
        n5 = 0;
        n3 = n4 - n2 - this.getPaddingRight() - this.getPaddingLeft();
        int n11 = 0;
        bl = ViewUtils.isLayoutRtl((View)this);
        for (n6 = 0; n6 < n7; ++n6) {
            int n12;
            view = this.getChildAt(n6);
            if (view.getVisibility() == 8) continue;
            layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.isOverflowButton) {
                int n13;
                n11 = n12 = view.getMeasuredWidth();
                if (this.hasSupportDividerBeforeChildAt(n6)) {
                    n11 = n12 + n9;
                }
                int n14 = view.getMeasuredHeight();
                if (bl) {
                    n12 = this.getPaddingLeft() + layoutParams.leftMargin;
                    n13 = n12 + n11;
                } else {
                    n13 = this.getWidth() - this.getPaddingRight() - layoutParams.rightMargin;
                    n12 = n13 - n11;
                }
                int n15 = n8 - n14 / 2;
                view.layout(n12, n15, n13, n15 + n14);
                n3 -= n11;
                n11 = 1;
                continue;
            }
            n12 = view.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            n12 = n3 - n12;
            n3 = n10 += n12;
            if (this.hasSupportDividerBeforeChildAt(n6)) {
                n3 = n10 + n9;
            }
            ++n5;
            n10 = n3;
            n3 = n12;
        }
        if (n7 == 1 && n11 == 0) {
            view = this.getChildAt(0);
            n3 = view.getMeasuredWidth();
            n5 = view.getMeasuredHeight();
            n2 = (n4 - n2) / 2 - n3 / 2;
            n4 = n8 - n5 / 2;
            view.layout(n2, n4, n2 + n3, n4 + n5);
            return;
        }
        n2 = n11 != 0 ? 0 : 1;
        n2 = (n2 = n5 - n2) > 0 ? n3 / n2 : 0;
        n5 = Math.max(0, n2);
        if (bl) {
            n3 = this.getWidth() - this.getPaddingRight();
            n2 = 0;
            while (n2 < n7) {
                view = this.getChildAt(n2);
                layoutParams = (LayoutParams)view.getLayoutParams();
                n4 = n3;
                if (view.getVisibility() != 8) {
                    if (layoutParams.isOverflowButton) {
                        n4 = n3;
                    } else {
                        n4 = view.getMeasuredWidth();
                        n6 = view.getMeasuredHeight();
                        n10 = n8 - n6 / 2;
                        view.layout(n3 - n4, n10, n3 -= layoutParams.rightMargin, n10 + n6);
                        n4 = n3 - (layoutParams.leftMargin + n4 + n5);
                    }
                }
                ++n2;
                n3 = n4;
            }
            return;
        }
        n3 = this.getPaddingLeft();
        n2 = 0;
        while (n2 < n7) {
            view = this.getChildAt(n2);
            layoutParams = (LayoutParams)view.getLayoutParams();
            n4 = n3;
            if (view.getVisibility() != 8) {
                if (layoutParams.isOverflowButton) {
                    n4 = n3;
                } else {
                    n4 = view.getMeasuredWidth();
                    n6 = view.getMeasuredHeight();
                    n10 = n8 - n6 / 2;
                    view.layout(n3, n10, (n3 += layoutParams.leftMargin) + n4, n10 + n6);
                    n4 = n3 + (layoutParams.rightMargin + n4 + n5);
                }
            }
            ++n2;
            n3 = n4;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onMeasure(int n2, int n3) {
        boolean bl = this.mFormatItems;
        boolean bl2 = View.MeasureSpec.getMode((int)n2) == 1073741824;
        this.mFormatItems = bl2;
        if (bl != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int n4 = View.MeasureSpec.getSize((int)n2);
        if (this.mFormatItems && this.mMenu != null && n4 != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = n4;
            this.mMenu.onItemsChanged(true);
        }
        int n5 = this.getChildCount();
        if (this.mFormatItems && n5 > 0) {
            this.onMeasureExactFormat(n2, n3);
            return;
        }
        n4 = 0;
        do {
            if (n4 >= n5) {
                super.onMeasure(n2, n3);
                return;
            }
            LayoutParams layoutParams = (LayoutParams)this.getChildAt(n4).getLayoutParams();
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
            ++n4;
        } while (true);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public MenuBuilder peekMenu() {
        return this.mMenu;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setExpandedActionViewsExclusive(boolean bl) {
        this.mPresenter.setExpandedActionViewsExclusive(bl);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.mActionMenuPresenterCallback = callback;
        this.mMenuBuilderCallback = callback2;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable2) {
        this.getMenu();
        this.mPresenter.setOverflowIcon(drawable2);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setOverflowReserved(boolean bl) {
        this.mReserveOverflow = bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setPopupTheme(@StyleRes int n2) {
        if (this.mPopupTheme == n2) return;
        this.mPopupTheme = n2;
        if (n2 == 0) {
            this.mPopupContext = this.getContext();
            return;
        }
        this.mPopupContext = new ContextThemeWrapper(this.getContext(), n2);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
        this.mPresenter.setMenuView(this);
    }

    public boolean showOverflowMenu() {
        if (this.mPresenter != null && this.mPresenter.showOverflowMenu()) {
            return true;
        }
        return false;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static interface ActionMenuChildView {
        public boolean needsDividerAfter();

        public boolean needsDividerBefore();
    }

    private class ActionMenuPresenterCallback
    implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override
        public void onCloseMenu(MenuBuilder menuBuilder, boolean bl) {
        }

        @Override
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }
    }

    public static class LayoutParams
    extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty
        public int cellsUsed;
        @ViewDebug.ExportedProperty
        public boolean expandable;
        boolean expanded;
        @ViewDebug.ExportedProperty
        public int extraPixels;
        @ViewDebug.ExportedProperty
        public boolean isOverflowButton;
        @ViewDebug.ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
            this.isOverflowButton = false;
        }

        LayoutParams(int n2, int n3, boolean bl) {
            super(n2, n3);
            this.isOverflowButton = bl;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams)layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private class MenuBuilderCallback
    implements MenuBuilder.Callback {
        MenuBuilderCallback() {
        }

        @Override
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (ActionMenuView.this.mOnMenuItemClickListener != null && ActionMenuView.this.mOnMenuItemClickListener.onMenuItemClick(menuItem)) {
                return true;
            }
            return false;
        }

        @Override
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (ActionMenuView.this.mMenuBuilderCallback != null) {
                ActionMenuView.this.mMenuBuilderCallback.onMenuModeChange(menuBuilder);
            }
        }
    }

    public static interface OnMenuItemClickListener {
        public boolean onMenuItemClick(MenuItem var1);
    }

}

