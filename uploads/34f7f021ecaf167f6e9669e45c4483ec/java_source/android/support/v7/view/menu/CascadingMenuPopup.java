/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Rect
 *  android.os.Handler
 *  android.os.Parcelable
 *  android.os.SystemClock
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.KeyEvent
 *  android.view.LayoutInflater
 *  android.view.MenuItem
 *  android.view.SubMenu
 *  android.view.View
 *  android.view.View$OnKeyListener
 *  android.view.ViewGroup
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnGlobalLayoutListener
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.FrameLayout
 *  android.widget.HeaderViewListAdapter
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.PopupWindow
 *  android.widget.PopupWindow$OnDismissListener
 *  android.widget.TextView
 */
package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuAdapter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPopup;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.MenuItemHoverListener;
import android.support.v7.widget.MenuPopupWindow;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class CascadingMenuPopup
extends MenuPopup
implements MenuPresenter,
View.OnKeyListener,
PopupWindow.OnDismissListener {
    static final int HORIZ_POSITION_LEFT = 0;
    static final int HORIZ_POSITION_RIGHT = 1;
    static final int SUBMENU_TIMEOUT_MS = 200;
    private View mAnchorView;
    private final Context mContext;
    private int mDropDownGravity;
    private boolean mForceShowIcon;
    private final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener;
    private boolean mHasXOffset;
    private boolean mHasYOffset;
    private int mLastPosition;
    private final MenuItemHoverListener mMenuItemHoverListener;
    private final int mMenuMaxWidth;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private final List<MenuBuilder> mPendingMenus = new LinkedList<MenuBuilder>();
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private MenuPresenter.Callback mPresenterCallback;
    private int mRawDropDownGravity;
    boolean mShouldCloseImmediately;
    private boolean mShowTitle;
    final List<CascadingMenuInfo> mShowingMenus = new ArrayList<CascadingMenuInfo>();
    View mShownAnchorView;
    final Handler mSubMenuHoverHandler;
    private ViewTreeObserver mTreeObserver;
    private int mXOffset;
    private int mYOffset;

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int n2, @StyleRes int n3, boolean bl) {
        this.mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onGlobalLayout() {
                if (!CascadingMenuPopup.this.isShowing() || CascadingMenuPopup.this.mShowingMenus.size() <= 0 || CascadingMenuPopup.this.mShowingMenus.get((int)0).window.isModal()) return;
                {
                    Object object = CascadingMenuPopup.this.mShownAnchorView;
                    if (object == null || !object.isShown()) {
                        CascadingMenuPopup.this.dismiss();
                        return;
                    } else {
                        object = CascadingMenuPopup.this.mShowingMenus.iterator();
                        while (object.hasNext()) {
                            ((CascadingMenuInfo)object.next()).window.show();
                        }
                    }
                }
            }
        };
        this.mMenuItemHoverListener = new MenuItemHoverListener(){

            /*
             * Unable to fully structure code
             * Enabled aggressive block sorting
             * Lifted jumps to return sites
             */
            @Override
            public void onItemHoverEnter(@NonNull MenuBuilder var1_1, @NonNull MenuItem var2_2) {
                CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages((Object)null);
                var6_3 = -1;
                var4_4 = 0;
                var7_5 = CascadingMenuPopup.this.mShowingMenus.size();
                do {
                    var5_6 = var6_3;
                    if (var4_4 >= var7_5) ** GOTO lbl10
                    if (var1_1 == CascadingMenuPopup.this.mShowingMenus.get((int)var4_4).menu) {
                        var5_6 = var4_4;
lbl10: // 2 sources:
                        if (var5_6 != -1) break;
                        return;
                    }
                    ++var4_4;
                } while (true);
                var4_4 = var5_6 + 1;
                var3_7 = var4_4 < CascadingMenuPopup.this.mShowingMenus.size() ? CascadingMenuPopup.this.mShowingMenus.get(var4_4) : null;
                var2_2 = new Runnable((MenuItem)var2_2, var1_1){
                    final /* synthetic */ MenuItem val$item;
                    final /* synthetic */ MenuBuilder val$menu;

                    @Override
                    public void run() {
                        if (var3_7 != null) {
                            CascadingMenuPopup.this.mShouldCloseImmediately = true;
                            var3_7.menu.close(false);
                            CascadingMenuPopup.this.mShouldCloseImmediately = false;
                        }
                        if (this.val$item.isEnabled() && this.val$item.hasSubMenu()) {
                            this.val$menu.performItemAction(this.val$item, 0);
                        }
                    }
                };
                var8_8 = SystemClock.uptimeMillis();
                CascadingMenuPopup.this.mSubMenuHoverHandler.postAtTime((Runnable)var2_2, (Object)var1_1, var8_8 + 200);
            }

            @Override
            public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
                CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages((Object)menuBuilder);
            }

        };
        this.mRawDropDownGravity = 0;
        this.mDropDownGravity = 0;
        this.mContext = context;
        this.mAnchorView = view;
        this.mPopupStyleAttr = n2;
        this.mPopupStyleRes = n3;
        this.mOverflowOnly = bl;
        this.mForceShowIcon = false;
        this.mLastPosition = this.getInitialMenuPosition();
        context = context.getResources();
        this.mMenuMaxWidth = Math.max(context.getDisplayMetrics().widthPixels / 2, context.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.mSubMenuHoverHandler = new Handler();
    }

    private MenuPopupWindow createPopupWindow() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.mContext, null, this.mPopupStyleAttr, this.mPopupStyleRes);
        menuPopupWindow.setHoverListener(this.mMenuItemHoverListener);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.mAnchorView);
        menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
        menuPopupWindow.setModal(true);
        return menuPopupWindow;
    }

    private int findIndexOfAddedMenu(@NonNull MenuBuilder menuBuilder) {
        int n2 = this.mShowingMenus.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            if (menuBuilder != this.mShowingMenus.get((int)i2).menu) continue;
            return i2;
        }
        return -1;
    }

    private MenuItem findMenuItemForSubmenu(@NonNull MenuBuilder menuBuilder, @NonNull MenuBuilder menuBuilder2) {
        int n2 = menuBuilder.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            MenuItem menuItem = menuBuilder.getItem(i2);
            if (!menuItem.hasSubMenu() || menuBuilder2 != menuItem.getSubMenu()) continue;
            return menuItem;
        }
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Nullable
    private View findParentViewForSubmenu(@NonNull CascadingMenuInfo var1_1, @NonNull MenuBuilder var2_2) {
        if ((var2_2 = this.findMenuItemForSubmenu(var1_1.menu, var2_2)) == null) {
            return null;
        }
        var3_3 = var1_1.getListView();
        var1_1 = var3_3.getAdapter();
        if (var1_1 instanceof HeaderViewListAdapter) {
            var1_1 = (HeaderViewListAdapter)var1_1;
            var5_4 = var1_1.getHeadersCount();
            var1_1 = (MenuAdapter)var1_1.getWrappedAdapter();
        } else {
            var5_4 = 0;
            var1_1 = (MenuAdapter)var1_1;
        }
        var7_5 = -1;
        var4_6 = 0;
        var8_7 = var1_1.getCount();
        do {
            var6_8 = var7_5;
            if (var4_6 >= var8_7) ** GOTO lbl20
            if (var2_2 == var1_1.getItem(var4_6)) {
                var6_8 = var4_6;
lbl20: // 2 sources:
                if (var6_8 == -1) return null;
                var4_6 = var6_8 + var5_4 - var3_3.getFirstVisiblePosition();
                if (var4_6 < 0) return null;
                if (var4_6 >= var3_3.getChildCount()) return null;
                return var3_3.getChildAt(var4_6);
            }
            ++var4_6;
        } while (true);
    }

    private int getInitialMenuPosition() {
        int n2 = 1;
        if (ViewCompat.getLayoutDirection(this.mAnchorView) == 1) {
            n2 = 0;
        }
        return n2;
    }

    private int getNextMenuPosition(int n2) {
        ListView listView = this.mShowingMenus.get(this.mShowingMenus.size() - 1).getListView();
        int[] arrn = new int[2];
        listView.getLocationOnScreen(arrn);
        Rect rect = new Rect();
        this.mShownAnchorView.getWindowVisibleDisplayFrame(rect);
        if (this.mLastPosition == 1) {
            if (arrn[0] + listView.getWidth() + n2 > rect.right) {
                return 0;
            }
            return 1;
        }
        if (arrn[0] - n2 < 0) {
            return 1;
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showMenu(@NonNull MenuBuilder menuBuilder) {
        Object object;
        LayoutInflater layoutInflater = LayoutInflater.from((Context)this.mContext);
        Object object2 = new MenuAdapter(menuBuilder, layoutInflater, this.mOverflowOnly);
        if (!this.isShowing() && this.mForceShowIcon) {
            object2.setForceShowIcon(true);
        } else if (this.isShowing()) {
            object2.setForceShowIcon(MenuPopup.shouldPreserveIconSpacing(menuBuilder));
        }
        int n2 = CascadingMenuPopup.measureIndividualMenuWidth((ListAdapter)object2, null, this.mContext, this.mMenuMaxWidth);
        MenuPopupWindow menuPopupWindow = this.createPopupWindow();
        menuPopupWindow.setAdapter((ListAdapter)object2);
        menuPopupWindow.setContentWidth(n2);
        menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
        if (this.mShowingMenus.size() > 0) {
            object2 = this.mShowingMenus.get(this.mShowingMenus.size() - 1);
            object = this.findParentViewForSubmenu((CascadingMenuInfo)object2, menuBuilder);
        } else {
            object2 = null;
            object = null;
        }
        if (object != null) {
            menuPopupWindow.setTouchModal(false);
            menuPopupWindow.setEnterTransition(null);
            int n3 = this.getNextMenuPosition(n2);
            int n4 = n3 == 1 ? 1 : 0;
            this.mLastPosition = n3;
            int[] arrn = new int[2];
            object.getLocationInWindow(arrn);
            int n5 = object2.window.getHorizontalOffset() + arrn[0];
            n3 = object2.window.getVerticalOffset();
            int n6 = arrn[1];
            n4 = (this.mDropDownGravity & 5) == 5 ? (n4 != 0 ? n5 + n2 : n5 - object.getWidth()) : (n4 != 0 ? n5 + object.getWidth() : n5 - n2);
            menuPopupWindow.setHorizontalOffset(n4);
            menuPopupWindow.setVerticalOffset(n3 + n6);
        } else {
            if (this.mHasXOffset) {
                menuPopupWindow.setHorizontalOffset(this.mXOffset);
            }
            if (this.mHasYOffset) {
                menuPopupWindow.setVerticalOffset(this.mYOffset);
            }
            menuPopupWindow.setEpicenterBounds(this.getEpicenterBounds());
        }
        object = new CascadingMenuInfo(menuPopupWindow, menuBuilder, this.mLastPosition);
        this.mShowingMenus.add((CascadingMenuInfo)object);
        menuPopupWindow.show();
        if (object2 == null && this.mShowTitle && menuBuilder.getHeaderTitle() != null) {
            object2 = menuPopupWindow.getListView();
            object = (FrameLayout)layoutInflater.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup)object2, false);
            layoutInflater = (TextView)object.findViewById(16908310);
            object.setEnabled(false);
            layoutInflater.setText(menuBuilder.getHeaderTitle());
            object2.addHeaderView((View)object, (Object)null, false);
            menuPopupWindow.show();
        }
    }

    @Override
    public void addMenu(MenuBuilder menuBuilder) {
        menuBuilder.addMenuPresenter(this, this.mContext);
        if (this.isShowing()) {
            this.showMenu(menuBuilder);
            return;
        }
        this.mPendingMenus.add(menuBuilder);
    }

    @Override
    protected boolean closeMenuOnSubMenuOpened() {
        return false;
    }

    @Override
    public void dismiss() {
        int n2 = this.mShowingMenus.size();
        if (n2 > 0) {
            CascadingMenuInfo[] arrcascadingMenuInfo = this.mShowingMenus.toArray(new CascadingMenuInfo[n2]);
            --n2;
            while (n2 >= 0) {
                CascadingMenuInfo cascadingMenuInfo = arrcascadingMenuInfo[n2];
                if (cascadingMenuInfo.window.isShowing()) {
                    cascadingMenuInfo.window.dismiss();
                }
                --n2;
            }
        }
    }

    @Override
    public boolean flagActionItems() {
        return false;
    }

    @Override
    public ListView getListView() {
        if (this.mShowingMenus.isEmpty()) {
            return null;
        }
        return this.mShowingMenus.get(this.mShowingMenus.size() - 1).getListView();
    }

    @Override
    public boolean isShowing() {
        if (this.mShowingMenus.size() > 0 && this.mShowingMenus.get((int)0).window.isShowing()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onCloseMenu(MenuBuilder menuBuilder, boolean bl) {
        int n2 = this.findIndexOfAddedMenu(menuBuilder);
        if (n2 < 0) {
            return;
        }
        int n3 = n2 + 1;
        if (n3 < this.mShowingMenus.size()) {
            this.mShowingMenus.get((int)n3).menu.close(false);
        }
        CascadingMenuInfo cascadingMenuInfo = this.mShowingMenus.remove(n2);
        cascadingMenuInfo.menu.removeMenuPresenter(this);
        if (this.mShouldCloseImmediately) {
            cascadingMenuInfo.window.setExitTransition(null);
            cascadingMenuInfo.window.setAnimationStyle(0);
        }
        cascadingMenuInfo.window.dismiss();
        n2 = this.mShowingMenus.size();
        this.mLastPosition = n2 > 0 ? this.mShowingMenus.get((int)(n2 - 1)).position : this.getInitialMenuPosition();
        if (n2 != 0) {
            if (!bl) return;
            this.mShowingMenus.get((int)0).menu.close(false);
            return;
        }
        this.dismiss();
        if (this.mPresenterCallback != null) {
            this.mPresenterCallback.onCloseMenu(menuBuilder, true);
        }
        if (this.mTreeObserver != null) {
            if (this.mTreeObserver.isAlive()) {
                this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
            }
            this.mTreeObserver = null;
        }
        this.mOnDismissListener.onDismiss();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onDismiss() {
        var2_1 = null;
        var3_2 = 0;
        var4_3 = this.mShowingMenus.size();
        do {
            var1_4 = var2_1;
            if (var3_2 >= var4_3) ** GOTO lbl-1000
            var1_4 = this.mShowingMenus.get(var3_2);
            if (!var1_4.window.isShowing()) lbl-1000: // 2 sources:
            {
                if (var1_4 == null) return;
                var1_4.menu.close(false);
                return;
            }
            ++var3_2;
        } while (true);
    }

    public boolean onKey(View view, int n2, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && n2 == 82) {
            this.dismiss();
            return true;
        }
        return false;
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override
    public Parcelable onSaveInstanceState() {
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.mShowingMenus) {
            if (subMenuBuilder != cascadingMenuInfo.menu) continue;
            cascadingMenuInfo.getListView().requestFocus();
            return true;
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        this.addMenu(subMenuBuilder);
        if (this.mPresenterCallback == null) return true;
        {
            this.mPresenterCallback.onOpenSubMenu(subMenuBuilder);
            return true;
        }
    }

    @Override
    public void setAnchorView(@NonNull View view) {
        if (this.mAnchorView != view) {
            this.mAnchorView = view;
            this.mDropDownGravity = GravityCompat.getAbsoluteGravity(this.mRawDropDownGravity, ViewCompat.getLayoutDirection(this.mAnchorView));
        }
    }

    @Override
    public void setCallback(MenuPresenter.Callback callback) {
        this.mPresenterCallback = callback;
    }

    @Override
    public void setForceShowIcon(boolean bl) {
        this.mForceShowIcon = bl;
    }

    @Override
    public void setGravity(int n2) {
        if (this.mRawDropDownGravity != n2) {
            this.mRawDropDownGravity = n2;
            this.mDropDownGravity = GravityCompat.getAbsoluteGravity(n2, ViewCompat.getLayoutDirection(this.mAnchorView));
        }
    }

    @Override
    public void setHorizontalOffset(int n2) {
        this.mHasXOffset = true;
        this.mXOffset = n2;
    }

    @Override
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @Override
    public void setShowTitle(boolean bl) {
        this.mShowTitle = bl;
    }

    @Override
    public void setVerticalOffset(int n2) {
        this.mHasYOffset = true;
        this.mYOffset = n2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void show() {
        if (this.isShowing()) {
            return;
        }
        Iterator<MenuBuilder> iterator = this.mPendingMenus.iterator();
        while (iterator.hasNext()) {
            this.showMenu(iterator.next());
        }
        this.mPendingMenus.clear();
        this.mShownAnchorView = this.mAnchorView;
        if (this.mShownAnchorView == null) return;
        boolean bl = this.mTreeObserver == null;
        this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
        if (!bl) return;
        this.mTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
    }

    @Override
    public void updateMenuView(boolean bl) {
        Iterator<CascadingMenuInfo> iterator = this.mShowingMenus.iterator();
        while (iterator.hasNext()) {
            CascadingMenuPopup.toMenuAdapter(iterator.next().getListView().getAdapter()).notifyDataSetChanged();
        }
    }

    private static class CascadingMenuInfo {
        public final MenuBuilder menu;
        public final int position;
        public final MenuPopupWindow window;

        public CascadingMenuInfo(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int n2) {
            this.window = menuPopupWindow;
            this.menu = menuBuilder;
            this.position = n2;
        }

        public ListView getListView() {
            return this.window.getListView();
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    public static @interface HorizPosition {
    }

}

