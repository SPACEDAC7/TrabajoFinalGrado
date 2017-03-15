/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.os.IBinder
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.SparseBooleanArray
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.SubMenu
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewParent
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R;
import android.support.v7.transition.ActionBarTransition;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.BaseMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPopup;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.ForwardingListener;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;

class ActionMenuPresenter
extends BaseMenuPresenter
implements ActionProvider.SubUiVisibilityListener {
    private static final String TAG = "ActionMenuPresenter";
    private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
    ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    OverflowMenuButton mOverflowButton;
    OverflowPopup mOverflowPopup;
    private Drawable mPendingOverflowIcon;
    private boolean mPendingOverflowIconSet;
    private ActionMenuPopupCallback mPopupCallback;
    final PopupPresenterCallback mPopupPresenterCallback;
    OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private View mScrapActionButtonView;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.mPopupPresenterCallback = new PopupPresenterCallback();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private View findViewForItem(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup)this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int n2 = viewGroup.getChildCount();
        int n3 = 0;
        while (n3 < n2) {
            View view = viewGroup.getChildAt(n3);
            if (view instanceof MenuView.ItemView) {
                View view2 = view;
                if (((MenuView.ItemView)view).getItemData() == menuItem) return view2;
            }
            ++n3;
        }
        return null;
    }

    @Override
    public void bindItemView(MenuItemImpl object, MenuView.ItemView itemView) {
        itemView.initialize((MenuItemImpl)object, 0);
        object = (ActionMenuView)this.mMenuView;
        itemView = (ActionMenuItemView)itemView;
        itemView.setItemInvoker((MenuBuilder.ItemInvoker)object);
        if (this.mPopupCallback == null) {
            this.mPopupCallback = new ActionMenuPopupCallback();
        }
        itemView.setPopupCallback(this.mPopupCallback);
    }

    public boolean dismissPopupMenus() {
        return this.hideOverflowMenu() | this.hideSubMenus();
    }

    @Override
    public boolean filterLeftoverView(ViewGroup viewGroup, int n2) {
        if (viewGroup.getChildAt(n2) == this.mOverflowButton) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, n2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean flagActionItems() {
        if (this.mMenu != null) {
            var1_1 = this.mMenu.getVisibleItems();
            var13_2 = var1_1.size();
        } else {
            var1_1 = null;
            var13_2 = 0;
        }
        var6_3 = this.mMaxItems;
        var15_4 = this.mActionItemWidthLimit;
        var16_5 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
        var2_6 = (ViewGroup)this.mMenuView;
        var7_7 = 0;
        var9_8 = 0;
        var12_9 = 0;
        var10_10 = 0;
        for (var8_11 = 0; var8_11 < var13_2; ++var8_11) {
            var3_12 = var1_1.get(var8_11);
            if (var3_12.requiresActionButton()) {
                ++var7_7;
            } else if (var3_12.requestsActionButton()) {
                ++var9_8;
            } else {
                var10_10 = 1;
            }
            var11_13 = var6_3;
            if (this.mExpandedActionViewsExclusive) {
                var11_13 = var6_3;
                if (var3_12.isActionViewExpanded()) {
                    var11_13 = 0;
                }
            }
            var6_3 = var11_13;
        }
        var8_11 = var6_3;
        if (!this.mReserveOverflow) ** GOTO lbl37
        if (var10_10 != 0) ** GOTO lbl-1000
        var8_11 = var6_3;
        if (var7_7 + var9_8 > var6_3) lbl-1000: // 2 sources:
        {
            var8_11 = var6_3 - 1;
        }
lbl37: // 4 sources:
        var8_11 -= var7_7;
        var3_12 = this.mActionButtonGroups;
        var3_12.clear();
        var14_14 = 0;
        var7_7 = 0;
        if (this.mStrictWidthLimit) {
            var7_7 = var15_4 / this.mMinCellSize;
            var6_3 = this.mMinCellSize;
            var14_14 = this.mMinCellSize + var15_4 % var6_3 / var7_7;
        }
        var6_3 = 0;
        var10_10 = var15_4;
        var15_4 = var6_3;
        var6_3 = var12_9;
        while (var15_4 < var13_2) {
            var4_15 = var1_1.get(var15_4);
            if (var4_15.requiresActionButton()) {
                var5_16 = this.getItemView(var4_15, this.mScrapActionButtonView, var2_6);
                if (this.mScrapActionButtonView == null) {
                    this.mScrapActionButtonView = var5_16;
                }
                if (this.mStrictWidthLimit) {
                    var7_7 -= ActionMenuView.measureChildForCells((View)var5_16, var14_14, var7_7, var16_5, 0);
                } else {
                    var5_16.measure(var16_5, var16_5);
                }
                var11_13 = var5_16.getMeasuredWidth();
                var9_8 = var10_10 - var11_13;
                var10_10 = var6_3;
                if (var6_3 == 0) {
                    var10_10 = var11_13;
                }
                if ((var6_3 = var4_15.getGroupId()) != 0) {
                    var3_12.put(var6_3, true);
                }
                var4_15.setIsActionButton(true);
                var6_3 = var10_10;
            } else if (var4_15.requestsActionButton()) {
                var17_17 = var4_15.getGroupId();
                var20_20 = var3_12.get(var17_17);
                var18_19 = !(var8_11 <= 0 && var20_20 == false || var10_10 <= 0 || this.mStrictWidthLimit != false && var7_7 <= 0) ? 1 : 0;
                var12_9 = var7_7;
                var11_13 = var6_3;
                var19_18 = var18_19;
                var9_8 = var10_10;
                if (var18_19 != 0) {
                    var5_16 = this.getItemView(var4_15, this.mScrapActionButtonView, var2_6);
                    if (this.mScrapActionButtonView == null) {
                        this.mScrapActionButtonView = var5_16;
                    }
                    if (this.mStrictWidthLimit) {
                        var11_13 = ActionMenuView.measureChildForCells((View)var5_16, var14_14, var7_7, var16_5, 0);
                        var7_7 = var9_8 = var7_7 - var11_13;
                        if (var11_13 == 0) {
                            var18_19 = 0;
                            var7_7 = var9_8;
                        }
                    } else {
                        var5_16.measure(var16_5, var16_5);
                    }
                    var12_9 = var5_16.getMeasuredWidth();
                    var9_8 = var10_10 - var12_9;
                    var11_13 = var6_3;
                    if (var6_3 == 0) {
                        var11_13 = var12_9;
                    }
                    if (this.mStrictWidthLimit) {
                        var6_3 = var9_8 >= 0 ? 1 : 0;
                        var19_18 = var18_19 & var6_3;
                        var12_9 = var7_7;
                    } else {
                        var6_3 = var9_8 + var11_13 > 0 ? 1 : 0;
                        var19_18 = var18_19 & var6_3;
                        var12_9 = var7_7;
                    }
                }
                if (var19_18 != 0 && var17_17 != 0) {
                    var3_12.put(var17_17, true);
                    var6_3 = var8_11;
                } else {
                    var6_3 = var8_11;
                    if (var20_20) {
                        var3_12.put(var17_17, false);
                        var7_7 = 0;
                        do {
                            var6_3 = var8_11;
                            if (var7_7 >= var15_4) break;
                            var5_16 = var1_1.get(var7_7);
                            var6_3 = var8_11;
                            if (var5_16.getGroupId() == var17_17) {
                                var6_3 = var8_11;
                                if (var5_16.isActionButton()) {
                                    var6_3 = var8_11 + 1;
                                }
                                var5_16.setIsActionButton(false);
                            }
                            ++var7_7;
                            var8_11 = var6_3;
                        } while (true);
                    }
                }
                var8_11 = var6_3;
                if (var19_18 != 0) {
                    var8_11 = var6_3 - 1;
                }
                var4_15.setIsActionButton((boolean)var19_18);
                var7_7 = var12_9;
                var6_3 = var11_13;
            } else {
                var4_15.setIsActionButton(false);
                var9_8 = var10_10;
            }
            ++var15_4;
            var10_10 = var9_8;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public View getItemView(MenuItemImpl object, View view, ViewGroup viewGroup) {
        View view2 = object.getActionView();
        if (view2 == null || object.hasCollapsibleActionView()) {
            view2 = super.getItemView((MenuItemImpl)object, view, viewGroup);
        }
        int n2 = object.isActionViewExpanded() ? 8 : 0;
        view2.setVisibility(n2);
        object = (ActionMenuView)viewGroup;
        view = view2.getLayoutParams();
        if (!object.checkLayoutParams((ViewGroup.LayoutParams)view)) {
            view2.setLayoutParams((ViewGroup.LayoutParams)object.generateLayoutParams((ViewGroup.LayoutParams)view));
        }
        return view2;
    }

    @Override
    public MenuView getMenuView(ViewGroup object) {
        MenuView menuView = this.mMenuView;
        if (menuView != (object = super.getMenuView((ViewGroup)object))) {
            ((ActionMenuView)object).setPresenter(this);
        }
        return object;
    }

    public Drawable getOverflowIcon() {
        if (this.mOverflowButton != null) {
            return this.mOverflowButton.getDrawable();
        }
        if (this.mPendingOverflowIconSet) {
            return this.mPendingOverflowIcon;
        }
        return null;
    }

    public boolean hideOverflowMenu() {
        if (this.mPostedOpenRunnable != null && this.mMenuView != null) {
            ((View)this.mMenuView).removeCallbacks((Runnable)this.mPostedOpenRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        }
        OverflowPopup overflowPopup = this.mOverflowPopup;
        if (overflowPopup != null) {
            overflowPopup.dismiss();
            return true;
        }
        return false;
    }

    public boolean hideSubMenus() {
        if (this.mActionButtonPopup != null) {
            this.mActionButtonPopup.dismiss();
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void initForMenu(@NonNull Context object, @Nullable MenuBuilder menuBuilder) {
        super.initForMenu((Context)object, menuBuilder);
        menuBuilder = object.getResources();
        object = ActionBarPolicy.get((Context)object);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = object.showsOverflowMenuButton();
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = object.getEmbeddedMenuWidthLimit();
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = object.getMaxActionButtons();
        }
        int n2 = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
                if (this.mPendingOverflowIconSet) {
                    this.mOverflowButton.setImageDrawable(this.mPendingOverflowIcon);
                    this.mPendingOverflowIcon = null;
                    this.mPendingOverflowIconSet = false;
                }
                int n3 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
                this.mOverflowButton.measure(n3, n3);
            }
            n2 -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = n2;
        this.mMinCellSize = (int)(56.0f * menuBuilder.getDisplayMetrics().density);
        this.mScrapActionButtonView = null;
    }

    public boolean isOverflowMenuShowPending() {
        if (this.mPostedOpenRunnable != null || this.isOverflowMenuShowing()) {
            return true;
        }
        return false;
    }

    public boolean isOverflowMenuShowing() {
        if (this.mOverflowPopup != null && this.mOverflowPopup.isShowing()) {
            return true;
        }
        return false;
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    @Override
    public void onCloseMenu(MenuBuilder menuBuilder, boolean bl) {
        this.dismissPopupMenus();
        super.onCloseMenu(menuBuilder, bl);
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mMaxItemsSet) {
            this.mMaxItems = ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        }
        if (this.mMenu != null) {
            this.mMenu.onItemsChanged(true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            return;
        }
        parcelable = (SavedState)parcelable;
        if (parcelable.openSubMenuId <= 0) return;
        parcelable = this.mMenu.findItem(parcelable.openSubMenuId);
        if (parcelable == null) return;
        this.onSubMenuSelected((SubMenuBuilder)parcelable.getSubMenu());
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.mOpenSubMenuId;
        return savedState;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onSubMenuSelected(SubMenuBuilder var1_1) {
        if (!var1_1.hasVisibleItems()) {
            return false;
        }
        var2_2 = var1_1;
        while (var2_2.getParentMenu() != this.mMenu) {
            var2_2 = (SubMenuBuilder)var2_2.getParentMenu();
        }
        if ((var2_2 = this.findViewForItem(var2_2.getItem())) == null) return false;
        this.mOpenSubMenuId = var1_1.getItem().getItemId();
        var7_3 = false;
        var5_4 = var1_1.size();
        var4_5 = 0;
        do {
            var6_7 = var7_3;
            if (var4_5 >= var5_4) ** GOTO lbl18
            var3_6 = var1_1.getItem(var4_5);
            if (var3_6.isVisible() && var3_6.getIcon() != null) {
                var6_7 = true;
lbl18: // 2 sources:
                this.mActionButtonPopup = new ActionButtonSubmenu(this.mContext, var1_1, (View)var2_2);
                this.mActionButtonPopup.setForceShowIcon(var6_7);
                this.mActionButtonPopup.show();
                super.onSubMenuSelected(var1_1);
                return true;
            }
            ++var4_5;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onSubUiVisibilityChanged(boolean bl) {
        if (bl) {
            super.onSubMenuSelected(null);
            return;
        } else {
            if (this.mMenu == null) return;
            {
                this.mMenu.close(false);
                return;
            }
        }
    }

    public void setExpandedActionViewsExclusive(boolean bl) {
        this.mExpandedActionViewsExclusive = bl;
    }

    public void setItemLimit(int n2) {
        this.mMaxItems = n2;
        this.mMaxItemsSet = true;
    }

    public void setMenuView(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.initialize(this.mMenu);
    }

    public void setOverflowIcon(Drawable drawable2) {
        if (this.mOverflowButton != null) {
            this.mOverflowButton.setImageDrawable(drawable2);
            return;
        }
        this.mPendingOverflowIconSet = true;
        this.mPendingOverflowIcon = drawable2;
    }

    public void setReserveOverflow(boolean bl) {
        this.mReserveOverflow = bl;
        this.mReserveOverflowSet = true;
    }

    public void setWidthLimit(int n2, boolean bl) {
        this.mWidthLimit = n2;
        this.mStrictWidthLimit = bl;
        this.mWidthLimitSet = true;
    }

    @Override
    public boolean shouldIncludeItem(int n2, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public boolean showOverflowMenu() {
        if (this.mReserveOverflow && !this.isOverflowMenuShowing() && this.mMenu != null && this.mMenuView != null && this.mPostedOpenRunnable == null && !this.mMenu.getNonActionItems().isEmpty()) {
            this.mPostedOpenRunnable = new OpenOverflowRunnable(new OverflowPopup(this.mContext, this.mMenu, (View)this.mOverflowButton, true));
            ((View)this.mMenuView).post((Runnable)this.mPostedOpenRunnable);
            super.onSubMenuSelected(null);
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void updateMenuView(boolean var1_1) {
        var2_2 = (ViewGroup)((View)this.mMenuView).getParent();
        if (var2_2 != null) {
            ActionBarTransition.beginDelayedTransition(var2_2);
        }
        super.updateMenuView(var1_1);
        ((View)this.mMenuView).requestLayout();
        if (this.mMenu != null) {
            var2_2 = this.mMenu.getActionItems();
            var5_3 = var2_2.size();
            for (var4_4 = 0; var4_4 < var5_3; ++var4_4) {
                var3_5 = var2_2.get(var4_4).getSupportActionProvider();
                if (var3_5 == null) continue;
                var3_5.setSubUiVisibilityListener(this);
            }
        }
        var2_2 = this.mMenu != null ? this.mMenu.getNonActionItems() : null;
        var4_4 = var5_3 = 0;
        if (!this.mReserveOverflow) ** GOTO lbl-1000
        var4_4 = var5_3;
        if (var2_2 != null) {
            var4_4 = var2_2.size();
            var4_4 = var4_4 == 1 ? (!((MenuItemImpl)var2_2.get(0)).isActionViewExpanded() ? 1 : 0) : (var4_4 > 0 ? 1 : 0);
        }
        if (var4_4 != 0) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
            }
            if ((var2_2 = (ViewGroup)this.mOverflowButton.getParent()) != this.mMenuView) {
                if (var2_2 != null) {
                    var2_2.removeView((View)this.mOverflowButton);
                }
                var2_2 = (ActionMenuView)this.mMenuView;
                var2_2.addView((View)this.mOverflowButton, (ViewGroup.LayoutParams)var2_2.generateOverflowButtonLayoutParams());
            }
        } else if (this.mOverflowButton != null && this.mOverflowButton.getParent() == this.mMenuView) {
            ((ViewGroup)this.mMenuView).removeView((View)this.mOverflowButton);
        }
        ((ActionMenuView)this.mMenuView).setOverflowReserved(this.mReserveOverflow);
    }

    private class ActionButtonSubmenu
    extends MenuPopupHelper {
        /*
         * Enabled aggressive block sorting
         */
        public ActionButtonSubmenu(Context object, SubMenuBuilder subMenuBuilder, View view) {
            super((Context)object, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl)subMenuBuilder.getItem()).isActionButton()) {
                object = ActionMenuPresenter.this.mOverflowButton == null ? (View)ActionMenuPresenter.this.mMenuView : ActionMenuPresenter.this.mOverflowButton;
                this.setAnchorView((View)object);
            }
            this.setPresenterCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        @Override
        protected void onDismiss() {
            ActionMenuPresenter.this.mActionButtonPopup = null;
            ActionMenuPresenter.this.mOpenSubMenuId = 0;
            super.onDismiss();
        }
    }

    private class ActionMenuPopupCallback
    extends ActionMenuItemView.PopupCallback {
        ActionMenuPopupCallback() {
        }

        @Override
        public ShowableListMenu getPopup() {
            if (ActionMenuPresenter.this.mActionButtonPopup != null) {
                return ActionMenuPresenter.this.mActionButtonPopup.getPopup();
            }
            return null;
        }
    }

    private class OpenOverflowRunnable
    implements Runnable {
        private OverflowPopup mPopup;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.mPopup = overflowPopup;
        }

        @Override
        public void run() {
            View view;
            if (ActionMenuPresenter.this.mMenu != null) {
                ActionMenuPresenter.this.mMenu.changeMenuMode();
            }
            if ((view = (View)ActionMenuPresenter.this.mMenuView) != null && view.getWindowToken() != null && this.mPopup.tryShow()) {
                ActionMenuPresenter.this.mOverflowPopup = this.mPopup;
            }
            ActionMenuPresenter.this.mPostedOpenRunnable = null;
        }
    }

    private class OverflowMenuButton
    extends AppCompatImageView
    implements ActionMenuView.ActionMenuChildView {
        private final float[] mTempPts;

        public OverflowMenuButton(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            this.mTempPts = new float[2];
            this.setClickable(true);
            this.setFocusable(true);
            this.setVisibility(0);
            this.setEnabled(true);
            this.setOnTouchListener((View.OnTouchListener)new ForwardingListener((View)this, ActionMenuPresenter.this){
                final /* synthetic */ ActionMenuPresenter val$this$0;

                @Override
                public ShowableListMenu getPopup() {
                    if (ActionMenuPresenter.this.mOverflowPopup == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.mOverflowPopup.getPopup();
                }

                @Override
                public boolean onForwardingStarted() {
                    ActionMenuPresenter.this.showOverflowMenu();
                    return true;
                }

                @Override
                public boolean onForwardingStopped() {
                    if (ActionMenuPresenter.this.mPostedOpenRunnable != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.hideOverflowMenu();
                    return true;
                }
            });
        }

        @Override
        public boolean needsDividerAfter() {
            return false;
        }

        @Override
        public boolean needsDividerBefore() {
            return false;
        }

        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            this.playSoundEffect(0);
            ActionMenuPresenter.this.showOverflowMenu();
            return true;
        }

        protected boolean setFrame(int n2, int n3, int n4, int n5) {
            boolean bl = super.setFrame(n2, n3, n4, n5);
            Drawable drawable2 = this.getDrawable();
            Drawable drawable3 = this.getBackground();
            if (drawable2 != null && drawable3 != null) {
                int n6 = this.getWidth();
                n3 = this.getHeight();
                n2 = Math.max(n6, n3) / 2;
                int n7 = this.getPaddingLeft();
                int n8 = this.getPaddingRight();
                n4 = this.getPaddingTop();
                n5 = this.getPaddingBottom();
                n6 = (n6 + (n7 - n8)) / 2;
                n3 = (n3 + (n4 - n5)) / 2;
                DrawableCompat.setHotspotBounds(drawable3, n6 - n2, n3 - n2, n6 + n2, n3 + n2);
            }
            return bl;
        }

    }

    private class OverflowPopup
    extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean bl) {
            super(context, menuBuilder, view, bl, R.attr.actionOverflowMenuStyle);
            this.setGravity(8388613);
            this.setPresenterCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        @Override
        protected void onDismiss() {
            if (ActionMenuPresenter.this.mMenu != null) {
                ActionMenuPresenter.this.mMenu.close();
            }
            ActionMenuPresenter.this.mOverflowPopup = null;
            super.onDismiss();
        }
    }

    private class PopupPresenterCallback
    implements MenuPresenter.Callback {
        PopupPresenterCallback() {
        }

        @Override
        public void onCloseMenu(MenuBuilder menuBuilder, boolean bl) {
            MenuPresenter.Callback callback;
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            if ((callback = ActionMenuPresenter.this.getCallback()) != null) {
                callback.onCloseMenu(menuBuilder, bl);
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder)menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback == null) return false;
            return callback.onOpenSubMenu(menuBuilder);
        }
    }

    private static class SavedState
    implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>(){

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        };
        public int openSubMenuId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int n2) {
            parcel.writeInt(this.openSubMenuId);
        }

    }

}

