/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Parcelable
 *  android.view.ViewGroup
 */
package android.support.design.internal;

import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.ViewGroup;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class BottomNavigationPresenter
implements MenuPresenter {
    private MenuBuilder mMenu;
    private BottomNavigationMenuView mMenuView;
    private boolean mUpdateSuspended = false;

    @Override
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override
    public boolean flagActionItems() {
        return false;
    }

    @Override
    public int getId() {
        return -1;
    }

    @Override
    public MenuView getMenuView(ViewGroup viewGroup) {
        return this.mMenuView;
    }

    @Override
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.mMenuView.initialize(this.mMenu);
        this.mMenu = menuBuilder;
    }

    @Override
    public void onCloseMenu(MenuBuilder menuBuilder, boolean bl) {
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void setBottomNavigationMenuView(BottomNavigationMenuView bottomNavigationMenuView) {
        this.mMenuView = bottomNavigationMenuView;
    }

    @Override
    public void setCallback(MenuPresenter.Callback callback) {
    }

    public void setUpdateSuspended(boolean bl) {
        this.mUpdateSuspended = bl;
    }

    @Override
    public void updateMenuView(boolean bl) {
        if (this.mUpdateSuspended) {
            return;
        }
        if (bl) {
            this.mMenuView.buildMenuView();
            return;
        }
        this.mMenuView.updateMenuView();
    }
}

