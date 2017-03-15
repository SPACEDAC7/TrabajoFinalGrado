/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.transition.Transition
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.view.KeyEvent
 *  android.view.MenuItem
 *  android.view.MotionEvent
 *  android.view.View
 *  android.widget.HeaderViewListAdapter
 *  android.widget.ListAdapter
 *  android.widget.PopupWindow
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.MenuAdapter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.widget.DropDownListView;
import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.MenuItemHoverListener;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class MenuPopupWindow
extends ListPopupWindow
implements MenuItemHoverListener {
    private static final String TAG = "MenuPopupWindow";
    private static Method sSetTouchModalMethod;
    private MenuItemHoverListener mHoverListener;

    static {
        try {
            sSetTouchModalMethod = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        }
        catch (NoSuchMethodException var0) {
            Log.i((String)"MenuPopupWindow", (String)"Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
    }

    @Override
    DropDownListView createDropDownListView(Context object, boolean bl) {
        object = new MenuDropDownListView((Context)object, bl);
        object.setHoverListener(this);
        return object;
    }

    @Override
    public void onItemHoverEnter(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        if (this.mHoverListener != null) {
            this.mHoverListener.onItemHoverEnter(menuBuilder, menuItem);
        }
    }

    @Override
    public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        if (this.mHoverListener != null) {
            this.mHoverListener.onItemHoverExit(menuBuilder, menuItem);
        }
    }

    public void setEnterTransition(Object object) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mPopup.setEnterTransition((Transition)object);
        }
    }

    public void setExitTransition(Object object) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mPopup.setExitTransition((Transition)object);
        }
    }

    public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
        this.mHoverListener = menuItemHoverListener;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setTouchModal(boolean bl) {
        if (sSetTouchModalMethod == null) return;
        try {
            sSetTouchModalMethod.invoke((Object)this.mPopup, bl);
            return;
        }
        catch (Exception var2_2) {
            Log.i((String)"MenuPopupWindow", (String)"Could not invoke setTouchModal() on PopupWindow. Oh well.");
            return;
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static class MenuDropDownListView
    extends DropDownListView {
        final int mAdvanceKey;
        private MenuItemHoverListener mHoverListener;
        private MenuItem mHoveredMenuItem;
        final int mRetreatKey;

        public MenuDropDownListView(Context context, boolean bl) {
            super(context, bl);
            context = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == context.getLayoutDirection()) {
                this.mAdvanceKey = 21;
                this.mRetreatKey = 22;
                return;
            }
            this.mAdvanceKey = 22;
            this.mRetreatKey = 21;
        }

        public void clearSelection() {
            this.setSelection(-1);
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean onHoverEvent(MotionEvent motionEvent) {
            if (this.mHoverListener != null) {
                MenuItem menuItem;
                int n2;
                Object object = this.getAdapter();
                if (object instanceof HeaderViewListAdapter) {
                    object = (HeaderViewListAdapter)object;
                    n2 = object.getHeadersCount();
                    object = (MenuAdapter)object.getWrappedAdapter();
                } else {
                    n2 = 0;
                    object = (MenuAdapter)((Object)object);
                }
                MenuItem menuItem2 = menuItem = null;
                if (motionEvent.getAction() != 10) {
                    int n3 = this.pointToPosition((int)motionEvent.getX(), (int)motionEvent.getY());
                    menuItem2 = menuItem;
                    if (n3 != -1) {
                        n2 = n3 - n2;
                        menuItem2 = menuItem;
                        if (n2 >= 0) {
                            menuItem2 = menuItem;
                            if (n2 < object.getCount()) {
                                menuItem2 = object.getItem(n2);
                            }
                        }
                    }
                }
                if ((menuItem = this.mHoveredMenuItem) != menuItem2) {
                    object = object.getAdapterMenu();
                    if (menuItem != null) {
                        this.mHoverListener.onItemHoverExit((MenuBuilder)object, menuItem);
                    }
                    this.mHoveredMenuItem = menuItem2;
                    if (menuItem2 != null) {
                        this.mHoverListener.onItemHoverEnter((MenuBuilder)object, menuItem2);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        public boolean onKeyDown(int n2, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView)this.getSelectedView();
            if (listMenuItemView != null && n2 == this.mAdvanceKey) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    this.performItemClick((View)listMenuItemView, this.getSelectedItemPosition(), this.getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView != null && n2 == this.mRetreatKey) {
                this.setSelection(-1);
                ((MenuAdapter)this.getAdapter()).getAdapterMenu().close(false);
                return true;
            }
            return super.onKeyDown(n2, keyEvent);
        }

        public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
            this.mHoverListener = menuItemHoverListener;
        }
    }

}

