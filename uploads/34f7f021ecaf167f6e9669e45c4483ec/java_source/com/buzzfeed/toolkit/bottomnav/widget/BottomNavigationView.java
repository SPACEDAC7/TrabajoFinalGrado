/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 */
package com.buzzfeed.toolkit.bottomnav.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.buzzfeed.toolkit.bottomnav.internal.BottomNavigationMenuView;
import com.buzzfeed.toolkit.bottomnav.internal.BottomNavigationPresenter;

public class BottomNavigationView
extends FrameLayout {
    private OnNavigationItemSelectedListener mListener;
    private final MenuBuilder mMenu;
    private final BottomNavigationMenuView mMenuView;
    private final BottomNavigationPresenter mPresenter = new BottomNavigationPresenter();

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mMenu = new MenuBuilder(context);
        this.mMenuView = new BottomNavigationMenuView(context);
        context = new FrameLayout.LayoutParams(-1, -1);
        context.gravity = 17;
        this.mMenuView.setLayoutParams((ViewGroup.LayoutParams)context);
        this.mPresenter.setBottomNavigationMenuView(this.mMenuView);
        this.mMenuView.setPresenter(this.mPresenter);
        this.mMenu.addMenuPresenter(this.mPresenter);
        this.mPresenter.initForMenu(this.getContext(), this.mMenu);
        this.addView((View)this.mMenuView, (ViewGroup.LayoutParams)context);
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

    @NonNull
    public Menu getMenu() {
        return this.mMenu;
    }

    public void setOnNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.mListener = onNavigationItemSelectedListener;
    }

    public void setSelected(int n2) {
        this.mMenuView.activateNewButton(n2);
    }

    public static interface OnNavigationItemSelectedListener {
        public boolean onNavigationItemSelected(@NonNull MenuItem var1);
    }

}

