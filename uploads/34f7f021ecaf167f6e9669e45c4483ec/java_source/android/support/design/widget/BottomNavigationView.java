/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.TypedValue
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.design.internal.BottomNavigationMenu;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.internal.BottomNavigationPresenter;
import android.support.design.widget.ThemeUtils;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public class BottomNavigationView
extends FrameLayout {
    private static final int[] CHECKED_STATE_SET = new int[]{16842912};
    private static final int[] DISABLED_STATE_SET = new int[]{-16842910};
    private OnNavigationItemSelectedListener mListener;
    private final MenuBuilder mMenu;
    private MenuInflater mMenuInflater;
    private final BottomNavigationMenuView mMenuView;
    private final BottomNavigationPresenter mPresenter = new BottomNavigationPresenter();

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public BottomNavigationView(Context context, AttributeSet object, int n2) {
        super(context, (AttributeSet)object, n2);
        ThemeUtils.checkAppCompatTheme(context);
        this.mMenu = new BottomNavigationMenu(context);
        this.mMenuView = new BottomNavigationMenuView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.mMenuView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.mPresenter.setBottomNavigationMenuView(this.mMenuView);
        this.mMenuView.setPresenter(this.mPresenter);
        this.mMenu.addMenuPresenter(this.mPresenter);
        this.mPresenter.initForMenu(this.getContext(), this.mMenu);
        object = TintTypedArray.obtainStyledAttributes(context, (AttributeSet)object, R.styleable.BottomNavigationView, n2, R.style.Widget_Design_BottomNavigationView);
        if (object.hasValue(R.styleable.BottomNavigationView_itemIconTint)) {
            this.mMenuView.setIconTintList(object.getColorStateList(R.styleable.BottomNavigationView_itemIconTint));
        } else {
            this.mMenuView.setIconTintList(this.createDefaultColorStateList(16842808));
        }
        if (object.hasValue(R.styleable.BottomNavigationView_itemTextColor)) {
            this.mMenuView.setItemTextColor(object.getColorStateList(R.styleable.BottomNavigationView_itemTextColor));
        } else {
            this.mMenuView.setItemTextColor(this.createDefaultColorStateList(16842808));
        }
        if (object.hasValue(R.styleable.BottomNavigationView_elevation)) {
            ViewCompat.setElevation((View)this, object.getDimensionPixelSize(R.styleable.BottomNavigationView_elevation, 0));
        }
        n2 = object.getResourceId(R.styleable.BottomNavigationView_itemBackground, 0);
        this.mMenuView.setItemBackgroundRes(n2);
        if (object.hasValue(R.styleable.BottomNavigationView_menu)) {
            this.inflateMenu(object.getResourceId(R.styleable.BottomNavigationView_menu, 0));
        }
        object.recycle();
        this.addView((View)this.mMenuView, (ViewGroup.LayoutParams)layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            this.addCompatibilityTopDivider(context);
        }
        this.mMenu.setCallback(new MenuBuilder.Callback(){

            @Override
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                if (BottomNavigationView.this.mListener != null && !BottomNavigationView.this.mListener.onNavigationItemSelected(menuItem)) {
                    return true;
                }
                return false;
            }

            @Override
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
    }

    private void addCompatibilityTopDivider(Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-1, this.getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
        this.addView(view);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private ColorStateList createDefaultColorStateList(int n2) {
        int[] arrn = new int[]();
        if (!this.getContext().getTheme().resolveAttribute(n2, (TypedValue)arrn, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(this.getContext(), arrn.resourceId);
        if (!this.getContext().getTheme().resolveAttribute(R.attr.colorPrimary, (TypedValue)arrn, true)) return null;
        n2 = arrn.data;
        int n3 = colorStateList.getDefaultColor();
        arrn = DISABLED_STATE_SET;
        int[] arrn2 = CHECKED_STATE_SET;
        int[] arrn3 = EMPTY_STATE_SET;
        int n4 = colorStateList.getColorForState(DISABLED_STATE_SET, n3);
        return new ColorStateList((int[][])new int[][]{arrn, arrn2, arrn3}, new int[]{n4, n2, n3});
    }

    private MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            this.mMenuInflater = new SupportMenuInflater(this.getContext());
        }
        return this.mMenuInflater;
    }

    @DrawableRes
    public int getItemBackgroundResource() {
        return this.mMenuView.getItemBackgroundRes();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.mMenuView.getIconTintList();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.mMenuView.getItemTextColor();
    }

    public int getMaxItemCount() {
        return 5;
    }

    @NonNull
    public Menu getMenu() {
        return this.mMenu;
    }

    public void inflateMenu(int n2) {
        this.mPresenter.setUpdateSuspended(true);
        this.getMenuInflater().inflate(n2, (Menu)this.mMenu);
        this.mPresenter.setUpdateSuspended(false);
        this.mPresenter.updateMenuView(true);
    }

    public void setItemBackgroundResource(@DrawableRes int n2) {
        this.mMenuView.setItemBackgroundRes(n2);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.mMenuView.setIconTintList(colorStateList);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.mMenuView.setItemTextColor(colorStateList);
    }

    public void setOnNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.mListener = onNavigationItemSelectedListener;
    }

    public static interface OnNavigationItemSelectedListener {
        public boolean onNavigationItemSelected(@NonNull MenuItem var1);
    }

}

