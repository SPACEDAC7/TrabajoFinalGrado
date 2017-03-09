/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.widget.Adapter
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.FrameLayout
 *  android.widget.HeaderViewListAdapter
 *  android.widget.ListAdapter
 *  android.widget.PopupWindow
 *  android.widget.PopupWindow$OnDismissListener
 */
package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.view.menu.MenuAdapter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.ShowableListMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

abstract class MenuPopup
implements ShowableListMenu,
MenuPresenter,
AdapterView.OnItemClickListener {
    private Rect mEpicenterBounds;

    MenuPopup() {
    }

    protected static int measureIndividualMenuWidth(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int n2) {
        int n3 = 0;
        ViewGroup viewGroup2 = null;
        int n4 = 0;
        int n5 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
        int n6 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
        int n7 = listAdapter.getCount();
        ViewGroup viewGroup3 = viewGroup;
        viewGroup = viewGroup2;
        for (int i2 = 0; i2 < n7; ++i2) {
            int n8 = listAdapter.getItemViewType(i2);
            int n9 = n4;
            if (n8 != n4) {
                n9 = n8;
                viewGroup = null;
            }
            viewGroup2 = viewGroup3;
            if (viewGroup3 == null) {
                viewGroup2 = new FrameLayout(context);
            }
            viewGroup = listAdapter.getView(i2, (View)viewGroup, viewGroup2);
            viewGroup.measure(n5, n6);
            n4 = viewGroup.getMeasuredWidth();
            if (n4 >= n2) {
                return n2;
            }
            n8 = n3;
            if (n4 > n3) {
                n8 = n4;
            }
            n4 = n9;
            n3 = n8;
            viewGroup3 = viewGroup2;
        }
        return n3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected static boolean shouldPreserveIconSpacing(MenuBuilder menuBuilder) {
        boolean bl = false;
        int n2 = menuBuilder.size();
        int n3 = 0;
        do {
            boolean bl2 = bl;
            if (n3 >= n2) return bl2;
            MenuItem menuItem = menuBuilder.getItem(n3);
            if (menuItem.isVisible() && menuItem.getIcon() != null) {
                return true;
            }
            ++n3;
        } while (true);
    }

    protected static MenuAdapter toMenuAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof HeaderViewListAdapter) {
            return (MenuAdapter)((HeaderViewListAdapter)listAdapter).getWrappedAdapter();
        }
        return (MenuAdapter)listAdapter;
    }

    public abstract void addMenu(MenuBuilder var1);

    protected boolean closeMenuOnSubMenuOpened() {
        return true;
    }

    @Override
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public Rect getEpicenterBounds() {
        return this.mEpicenterBounds;
    }

    @Override
    public int getId() {
        return 0;
    }

    @Override
    public MenuView getMenuView(ViewGroup viewGroup) {
        throw new UnsupportedOperationException("MenuPopups manage their own views");
    }

    @Override
    public void initForMenu(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onItemClick(AdapterView<?> object, View view, int n2, long l2) {
        view = (ListAdapter)object.getAdapter();
        object = MenuPopup.toMenuAdapter((ListAdapter)view).mAdapterMenu;
        view = (MenuItem)view.getItem(n2);
        n2 = this.closeMenuOnSubMenuOpened() ? 0 : 4;
        object.performItemAction((MenuItem)view, this, n2);
    }

    public abstract void setAnchorView(View var1);

    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    public abstract void setForceShowIcon(boolean var1);

    public abstract void setGravity(int var1);

    public abstract void setHorizontalOffset(int var1);

    public abstract void setOnDismissListener(PopupWindow.OnDismissListener var1);

    public abstract void setShowTitle(boolean var1);

    public abstract void setVerticalOffset(int var1);
}

