/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.BaseAdapter
 */
package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class MenuAdapter
extends BaseAdapter {
    static final int ITEM_LAYOUT = R.layout.abc_popup_menu_item_layout;
    MenuBuilder mAdapterMenu;
    private int mExpandedIndex = -1;
    private boolean mForceShowIcon;
    private final LayoutInflater mInflater;
    private final boolean mOverflowOnly;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean bl) {
        this.mOverflowOnly = bl;
        this.mInflater = layoutInflater;
        this.mAdapterMenu = menuBuilder;
        this.findExpandedIndex();
    }

    void findExpandedIndex() {
        MenuItemImpl menuItemImpl = this.mAdapterMenu.getExpandedItem();
        if (menuItemImpl != null) {
            ArrayList<MenuItemImpl> arrayList = this.mAdapterMenu.getNonActionItems();
            int n2 = arrayList.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                if (arrayList.get(i2) != menuItemImpl) continue;
                this.mExpandedIndex = i2;
                return;
            }
        }
        this.mExpandedIndex = -1;
    }

    public MenuBuilder getAdapterMenu() {
        return this.mAdapterMenu;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int getCount() {
        ArrayList<MenuItemImpl> arrayList = this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
        if (this.mExpandedIndex < 0) {
            return arrayList.size();
        }
        return arrayList.size() - 1;
    }

    public boolean getForceShowIcon() {
        return this.mForceShowIcon;
    }

    /*
     * Enabled aggressive block sorting
     */
    public MenuItemImpl getItem(int n2) {
        ArrayList<MenuItemImpl> arrayList = this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
        int n3 = n2;
        if (this.mExpandedIndex >= 0) {
            n3 = n2;
            if (n2 >= this.mExpandedIndex) {
                n3 = n2 + 1;
            }
        }
        return arrayList.get(n3);
    }

    public long getItemId(int n2) {
        return n2;
    }

    public View getView(int n2, View object, ViewGroup viewGroup) {
        View view = object;
        if (object == null) {
            view = this.mInflater.inflate(ITEM_LAYOUT, viewGroup, false);
        }
        object = (MenuView.ItemView)view;
        if (this.mForceShowIcon) {
            ((ListMenuItemView)view).setForceShowIcon(true);
        }
        object.initialize(this.getItem(n2), 0);
        return view;
    }

    public void notifyDataSetChanged() {
        this.findExpandedIndex();
        super.notifyDataSetChanged();
    }

    public void setForceShowIcon(boolean bl) {
        this.mForceShowIcon = bl;
    }
}

