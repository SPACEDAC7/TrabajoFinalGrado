/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.Layout
 *  android.text.TextUtils
 *  android.text.TextUtils$TruncateAt
 *  android.util.AttributeSet
 *  android.view.ContextThemeWrapper
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewParent
 *  android.widget.ImageButton
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.AppCompatImageButton;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.RtlSpacingHelper;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.ToolbarWidgetWrapper;
import android.support.v7.widget.ViewUtils;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class Toolbar
extends ViewGroup {
    private static final String TAG = "Toolbar";
    private MenuPresenter.Callback mActionMenuPresenterCallback;
    int mButtonGravity;
    ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private Drawable mCollapseIcon;
    private boolean mCollapsible;
    private int mContentInsetEndWithActions;
    private int mContentInsetStartWithNavigation;
    private RtlSpacingHelper mContentInsets;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    View mExpandedActionView;
    private ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private int mGravity = 8388627;
    private final ArrayList<View> mHiddenViews = new ArrayList();
    private ImageView mLogoView;
    private int mMaxButtonHeight;
    private MenuBuilder.Callback mMenuBuilderCallback;
    private ActionMenuView mMenuView;
    private final ActionMenuView.OnMenuItemClickListener mMenuViewItemClickListener;
    private ImageButton mNavButtonView;
    OnMenuItemClickListener mOnMenuItemClickListener;
    private ActionMenuPresenter mOuterActionMenuPresenter;
    private Context mPopupContext;
    private int mPopupTheme;
    private final Runnable mShowOverflowMenuRunnable;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private int mSubtitleTextColor;
    private TextView mSubtitleTextView;
    private final int[] mTempMargins = new int[2];
    private final ArrayList<View> mTempViews = new ArrayList();
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private int mTitleTextColor;
    private TextView mTitleTextView;
    private ToolbarWidgetWrapper mWrapper;

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context object, @Nullable AttributeSet object2, int n2) {
        int n3;
        super((Context)object, (AttributeSet)object2, n2);
        this.mMenuViewItemClickListener = new ActionMenuView.OnMenuItemClickListener(){

            @Override
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (Toolbar.this.mOnMenuItemClickListener != null) {
                    return Toolbar.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.mShowOverflowMenuRunnable = new Runnable(){

            @Override
            public void run() {
                Toolbar.this.showOverflowMenu();
            }
        };
        object = TintTypedArray.obtainStyledAttributes(this.getContext(), (AttributeSet)object2, R.styleable.Toolbar, n2, 0);
        this.mTitleTextAppearance = object.getResourceId(R.styleable.Toolbar_titleTextAppearance, 0);
        this.mSubtitleTextAppearance = object.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.mGravity = object.getInteger(R.styleable.Toolbar_android_gravity, this.mGravity);
        this.mButtonGravity = object.getInteger(R.styleable.Toolbar_buttonGravity, 48);
        n2 = n3 = object.getDimensionPixelOffset(R.styleable.Toolbar_titleMargin, 0);
        if (object.hasValue(R.styleable.Toolbar_titleMargins)) {
            n2 = object.getDimensionPixelOffset(R.styleable.Toolbar_titleMargins, n3);
        }
        this.mTitleMarginBottom = n2;
        this.mTitleMarginTop = n2;
        this.mTitleMarginEnd = n2;
        this.mTitleMarginStart = n2;
        n2 = object.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
        if (n2 >= 0) {
            this.mTitleMarginStart = n2;
        }
        if ((n2 = object.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1)) >= 0) {
            this.mTitleMarginEnd = n2;
        }
        if ((n2 = object.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1)) >= 0) {
            this.mTitleMarginTop = n2;
        }
        if ((n2 = object.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1)) >= 0) {
            this.mTitleMarginBottom = n2;
        }
        this.mMaxButtonHeight = object.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
        n2 = object.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        n3 = object.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int n4 = object.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0);
        int n5 = object.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0);
        this.ensureContentInsets();
        this.mContentInsets.setAbsolute(n4, n5);
        if (n2 != Integer.MIN_VALUE || n3 != Integer.MIN_VALUE) {
            this.mContentInsets.setRelative(n2, n3);
        }
        this.mContentInsetStartWithNavigation = object.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.mContentInsetEndWithActions = object.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.mCollapseIcon = object.getDrawable(R.styleable.Toolbar_collapseIcon);
        this.mCollapseDescription = object.getText(R.styleable.Toolbar_collapseContentDescription);
        object2 = object.getText(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty((CharSequence)object2)) {
            this.setTitle((CharSequence)object2);
        }
        if (!TextUtils.isEmpty((CharSequence)(object2 = object.getText(R.styleable.Toolbar_subtitle)))) {
            this.setSubtitle((CharSequence)object2);
        }
        this.mPopupContext = this.getContext();
        this.setPopupTheme(object.getResourceId(R.styleable.Toolbar_popupTheme, 0));
        object2 = object.getDrawable(R.styleable.Toolbar_navigationIcon);
        if (object2 != null) {
            this.setNavigationIcon((Drawable)object2);
        }
        if (!TextUtils.isEmpty((CharSequence)(object2 = object.getText(R.styleable.Toolbar_navigationContentDescription)))) {
            this.setNavigationContentDescription((CharSequence)object2);
        }
        if ((object2 = object.getDrawable(R.styleable.Toolbar_logo)) != null) {
            this.setLogo((Drawable)object2);
        }
        if (!TextUtils.isEmpty((CharSequence)(object2 = object.getText(R.styleable.Toolbar_logoDescription)))) {
            this.setLogoDescription((CharSequence)object2);
        }
        if (object.hasValue(R.styleable.Toolbar_titleTextColor)) {
            this.setTitleTextColor(object.getColor(R.styleable.Toolbar_titleTextColor, -1));
        }
        if (object.hasValue(R.styleable.Toolbar_subtitleTextColor)) {
            this.setSubtitleTextColor(object.getColor(R.styleable.Toolbar_subtitleTextColor, -1));
        }
        object.recycle();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addCustomViewsWithGravity(List<View> list, int n2) {
        boolean bl = true;
        if (ViewCompat.getLayoutDirection((View)this) != 1) {
            bl = false;
        }
        int n3 = this.getChildCount();
        int n4 = GravityCompat.getAbsoluteGravity(n2, ViewCompat.getLayoutDirection((View)this));
        list.clear();
        if (bl) {
            n2 = n3 - 1;
            do {
                if (n2 < 0) {
                    return;
                }
                View view = this.getChildAt(n2);
                LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                if (layoutParams.mViewType == 0 && this.shouldLayout(view) && this.getChildHorizontalGravity(layoutParams.gravity) == n4) {
                    list.add(view);
                }
                --n2;
            } while (true);
        }
        n2 = 0;
        while (n2 < n3) {
            View view = this.getChildAt(n2);
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.mViewType == 0 && this.shouldLayout(view) && this.getChildHorizontalGravity(layoutParams.gravity) == n4) {
                list.add(view);
            }
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addSystemView(View view, boolean bl) {
        Object object = view.getLayoutParams();
        object = object == null ? this.generateDefaultLayoutParams() : (!this.checkLayoutParams((ViewGroup.LayoutParams)object) ? this.generateLayoutParams((ViewGroup.LayoutParams)object) : (LayoutParams)((Object)object));
        object.mViewType = 1;
        if (bl && this.mExpandedActionView != null) {
            view.setLayoutParams((ViewGroup.LayoutParams)object);
            this.mHiddenViews.add(view);
            return;
        }
        this.addView(view, (ViewGroup.LayoutParams)object);
    }

    private void ensureContentInsets() {
        if (this.mContentInsets == null) {
            this.mContentInsets = new RtlSpacingHelper();
        }
    }

    private void ensureLogoView() {
        if (this.mLogoView == null) {
            this.mLogoView = new AppCompatImageView(this.getContext());
        }
    }

    private void ensureMenu() {
        this.ensureMenuView();
        if (this.mMenuView.peekMenu() == null) {
            MenuBuilder menuBuilder = (MenuBuilder)this.mMenuView.getMenu();
            if (this.mExpandedMenuPresenter == null) {
                this.mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
            }
            this.mMenuView.setExpandedActionViewsExclusive(true);
            menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        }
    }

    private void ensureMenuView() {
        if (this.mMenuView == null) {
            this.mMenuView = new ActionMenuView(this.getContext());
            this.mMenuView.setPopupTheme(this.mPopupTheme);
            this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
            this.mMenuView.setMenuCallbacks(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
            LayoutParams layoutParams = this.generateDefaultLayoutParams();
            layoutParams.gravity = 8388613 | this.mButtonGravity & 112;
            this.mMenuView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
            this.addSystemView((View)this.mMenuView, false);
        }
    }

    private void ensureNavButtonView() {
        if (this.mNavButtonView == null) {
            this.mNavButtonView = new AppCompatImageButton(this.getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutParams = this.generateDefaultLayoutParams();
            layoutParams.gravity = 8388611 | this.mButtonGravity & 112;
            this.mNavButtonView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getChildHorizontalGravity(int n2) {
        int n3;
        int n4 = ViewCompat.getLayoutDirection((View)this);
        n2 = n3 = GravityCompat.getAbsoluteGravity(n2, n4) & 7;
        switch (n3) {
            default: {
                if (n4 != 1) return 3;
                n2 = 5;
            }
            case 1: 
            case 3: 
            case 5: {
                return n2;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getChildTop(View view, int n2) {
        int n3;
        int n4;
        int n5;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n6 = view.getMeasuredHeight();
        n2 = n2 > 0 ? (n6 - n2) / 2 : 0;
        switch (this.getChildVerticalGravity(layoutParams.gravity)) {
            default: {
                n5 = this.getPaddingTop();
                n2 = this.getPaddingBottom();
                n4 = this.getHeight();
                n3 = (n4 - n5 - n2 - n6) / 2;
                if (n3 >= layoutParams.topMargin) break;
                n2 = layoutParams.topMargin;
                return n5 + n2;
            }
            case 48: {
                return this.getPaddingTop() - n2;
            }
            case 80: {
                return this.getHeight() - this.getPaddingBottom() - n6 - layoutParams.bottomMargin - n2;
            }
        }
        n6 = n4 - n2 - n6 - n3 - n5;
        n2 = n3;
        if (n6 >= layoutParams.bottomMargin) return n5 + n2;
        n2 = Math.max(0, n3 - (layoutParams.bottomMargin - n6));
        return n5 + n2;
    }

    private int getChildVerticalGravity(int n2) {
        int n3;
        n2 = n3 = n2 & 112;
        switch (n3) {
            default: {
                n2 = this.mGravity & 112;
            }
            case 16: 
            case 48: 
            case 80: 
        }
        return n2;
    }

    private int getHorizontalMargins(View view) {
        view = (ViewGroup.MarginLayoutParams)view.getLayoutParams();
        return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams)view) + MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams)view);
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.getContext());
    }

    private int getVerticalMargins(View view) {
        view = (ViewGroup.MarginLayoutParams)view.getLayoutParams();
        return view.topMargin + view.bottomMargin;
    }

    private int getViewListMeasuredWidth(List<View> list, int[] view) {
        int n2 = view[0];
        int n3 = view[1];
        int n4 = 0;
        int n5 = list.size();
        for (int i2 = 0; i2 < n5; ++i2) {
            view = list.get(i2);
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            n2 = layoutParams.leftMargin - n2;
            n3 = layoutParams.rightMargin - n3;
            int n6 = Math.max(0, n2);
            int n7 = Math.max(0, n3);
            n2 = Math.max(0, - n2);
            n3 = Math.max(0, - n3);
            n4 += view.getMeasuredWidth() + n6 + n7;
        }
        return n4;
    }

    private boolean isChildOrHidden(View view) {
        if (view.getParent() == this || this.mHiddenViews.contains((Object)view)) {
            return true;
        }
        return false;
    }

    private static boolean isCustomView(View view) {
        if (((LayoutParams)view.getLayoutParams()).mViewType == 0) {
            return true;
        }
        return false;
    }

    private int layoutChildLeft(View view, int n2, int[] arrn, int n3) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n4 = layoutParams.leftMargin - arrn[0];
        arrn[0] = Math.max(0, - n4);
        n3 = this.getChildTop(view, n3);
        n4 = view.getMeasuredWidth();
        view.layout(n2, n3, (n2 += Math.max(0, n4)) + n4, view.getMeasuredHeight() + n3);
        return n2 + (layoutParams.rightMargin + n4);
    }

    private int layoutChildRight(View view, int n2, int[] arrn, int n3) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n4 = layoutParams.rightMargin - arrn[1];
        arrn[1] = Math.max(0, - n4);
        n3 = this.getChildTop(view, n3);
        n4 = view.getMeasuredWidth();
        view.layout(n2 - n4, n3, n2 -= Math.max(0, n4), view.getMeasuredHeight() + n3);
        return n2 - (layoutParams.leftMargin + n4);
    }

    private int measureChildCollapseMargins(View view, int n2, int n3, int n4, int n5, int[] arrn) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int n6 = marginLayoutParams.leftMargin - arrn[0];
        int n7 = marginLayoutParams.rightMargin - arrn[1];
        int n8 = Math.max(0, n6) + Math.max(0, n7);
        arrn[0] = Math.max(0, - n6);
        arrn[1] = Math.max(0, - n7);
        view.measure(Toolbar.getChildMeasureSpec((int)n2, (int)(this.getPaddingLeft() + this.getPaddingRight() + n8 + n3), (int)marginLayoutParams.width), Toolbar.getChildMeasureSpec((int)n4, (int)(this.getPaddingTop() + this.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + n5), (int)marginLayoutParams.height));
        return view.getMeasuredWidth() + n8;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void measureChildConstrained(View view, int n2, int n3, int n4, int n5, int n6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int n7 = Toolbar.getChildMeasureSpec((int)n2, (int)(this.getPaddingLeft() + this.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + n3), (int)marginLayoutParams.width);
        n3 = Toolbar.getChildMeasureSpec((int)n4, (int)(this.getPaddingTop() + this.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + n5), (int)marginLayoutParams.height);
        n4 = View.MeasureSpec.getMode((int)n3);
        n2 = n3;
        if (n4 != 1073741824) {
            n2 = n3;
            if (n6 >= 0) {
                n2 = n4 != 0 ? Math.min(View.MeasureSpec.getSize((int)n3), n6) : n6;
                n2 = View.MeasureSpec.makeMeasureSpec((int)n2, (int)1073741824);
            }
        }
        view.measure(n7, n2);
    }

    private void postShowOverflowMenu() {
        this.removeCallbacks(this.mShowOverflowMenuRunnable);
        this.post(this.mShowOverflowMenuRunnable);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean shouldCollapse() {
        if (!this.mCollapsible) {
            return false;
        }
        int n2 = this.getChildCount();
        int n3 = 0;
        while (n3 < n2) {
            View view = this.getChildAt(n3);
            if (this.shouldLayout(view) && view.getMeasuredWidth() > 0) {
                if (view.getMeasuredHeight() > 0) return false;
            }
            ++n3;
        }
        return true;
    }

    private boolean shouldLayout(View view) {
        if (view != null && view.getParent() == this && view.getVisibility() != 8) {
            return true;
        }
        return false;
    }

    void addChildrenForExpandedActionView() {
        for (int i2 = this.mHiddenViews.size() - 1; i2 >= 0; --i2) {
            this.addView(this.mHiddenViews.get(i2));
        }
        this.mHiddenViews.clear();
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean canShowOverflowMenu() {
        if (this.getVisibility() == 0 && this.mMenuView != null && this.mMenuView.isOverflowReserved()) {
            return true;
        }
        return false;
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (super.checkLayoutParams(layoutParams) && layoutParams instanceof LayoutParams) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void collapseActionView() {
        if (this.mExpandedMenuPresenter == null) {
            return;
        }
        MenuItemImpl menuItemImpl = this.mExpandedMenuPresenter.mCurrentExpandedItem;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    public void dismissPopupMenus() {
        if (this.mMenuView != null) {
            this.mMenuView.dismissPopupMenus();
        }
    }

    void ensureCollapseButtonView() {
        if (this.mCollapseButtonView == null) {
            this.mCollapseButtonView = new AppCompatImageButton(this.getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
            this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
            LayoutParams layoutParams = this.generateDefaultLayoutParams();
            layoutParams.gravity = 8388611 | this.mButtonGravity & 112;
            layoutParams.mViewType = 2;
            this.mCollapseButtonView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
            this.mCollapseButtonView.setOnClickListener(new View.OnClickListener(){

                public void onClick(View view) {
                    Toolbar.this.collapseActionView();
                }
            });
        }
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams)layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams)layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public int getContentInsetEnd() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.getEnd();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        if (this.mContentInsetEndWithActions != Integer.MIN_VALUE) {
            return this.mContentInsetEndWithActions;
        }
        return this.getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.getLeft();
        }
        return 0;
    }

    public int getContentInsetRight() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.getRight();
        }
        return 0;
    }

    public int getContentInsetStart() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.getStart();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        if (this.mContentInsetStartWithNavigation != Integer.MIN_VALUE) {
            return this.mContentInsetStartWithNavigation;
        }
        return this.getContentInsetStart();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int getCurrentContentInsetEnd() {
        boolean bl = false;
        if (this.mMenuView == null) return this.getContentInsetEnd();
        MenuBuilder menuBuilder = this.mMenuView.peekMenu();
        if (menuBuilder == null || !menuBuilder.hasVisibleItems()) return this.getContentInsetEnd();
        return Math.max(this.getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0));
    }

    public int getCurrentContentInsetLeft() {
        if (ViewCompat.getLayoutDirection((View)this) == 1) {
            return this.getCurrentContentInsetEnd();
        }
        return this.getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (ViewCompat.getLayoutDirection((View)this) == 1) {
            return this.getCurrentContentInsetStart();
        }
        return this.getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (this.getNavigationIcon() != null) {
            return Math.max(this.getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0));
        }
        return this.getContentInsetStart();
    }

    public Drawable getLogo() {
        if (this.mLogoView != null) {
            return this.mLogoView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        if (this.mLogoView != null) {
            return this.mLogoView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        this.ensureMenu();
        return this.mMenuView.getMenu();
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        if (this.mNavButtonView != null) {
            return this.mNavButtonView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        if (this.mNavButtonView != null) {
            return this.mNavButtonView.getDrawable();
        }
        return null;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        this.ensureMenu();
        return this.mMenuView.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    public CharSequence getSubtitle() {
        return this.mSubtitleText;
    }

    public CharSequence getTitle() {
        return this.mTitleText;
    }

    public int getTitleMarginBottom() {
        return this.mTitleMarginBottom;
    }

    public int getTitleMarginEnd() {
        return this.mTitleMarginEnd;
    }

    public int getTitleMarginStart() {
        return this.mTitleMarginStart;
    }

    public int getTitleMarginTop() {
        return this.mTitleMarginTop;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public DecorToolbar getWrapper() {
        if (this.mWrapper == null) {
            this.mWrapper = new ToolbarWidgetWrapper(this, true);
        }
        return this.mWrapper;
    }

    public boolean hasExpandedActionView() {
        if (this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.mCurrentExpandedItem != null) {
            return true;
        }
        return false;
    }

    public boolean hideOverflowMenu() {
        if (this.mMenuView != null && this.mMenuView.hideOverflowMenu()) {
            return true;
        }
        return false;
    }

    public void inflateMenu(@MenuRes int n2) {
        this.getMenuInflater().inflate(n2, this.getMenu());
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean isOverflowMenuShowPending() {
        if (this.mMenuView != null && this.mMenuView.isOverflowMenuShowPending()) {
            return true;
        }
        return false;
    }

    public boolean isOverflowMenuShowing() {
        if (this.mMenuView != null && this.mMenuView.isOverflowMenuShowing()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean isTitleTruncated() {
        Layout layout2;
        if (this.mTitleTextView == null || (layout2 = this.mTitleTextView.getLayout()) == null) {
            return false;
        }
        int n2 = layout2.getLineCount();
        int n3 = 0;
        while (n3 < n2) {
            if (layout2.getEllipsisCount(n3) > 0) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.removeCallbacks(this.mShowOverflowMenuRunnable);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        if (n2 == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean bl = super.onHoverEvent(motionEvent);
            if (n2 == 9 && !bl) {
                this.mEatingHover = true;
            }
        }
        if (n2 == 10 || n2 == 3) {
            this.mEatingHover = false;
        }
        return true;
    }

    /*
     * Exception decompiling
     */
    protected void onLayout(boolean var1_1, int var2_2, int var3_3, int var4_4, int var5_5) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:143)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:385)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.rebuildSwitches(SwitchReplacer.java:334)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:539)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4;
        int n5;
        int n6 = 0;
        int n7 = 0;
        int[] arrn = this.mTempMargins;
        if (ViewUtils.isLayoutRtl((View)this)) {
            n4 = 1;
            n5 = 0;
        } else {
            n4 = 0;
            n5 = 1;
        }
        int n8 = 0;
        if (this.shouldLayout((View)this.mNavButtonView)) {
            this.measureChildConstrained((View)this.mNavButtonView, n2, 0, n3, 0, this.mMaxButtonHeight);
            n8 = this.mNavButtonView.getMeasuredWidth() + this.getHorizontalMargins((View)this.mNavButtonView);
            n6 = Math.max(0, this.mNavButtonView.getMeasuredHeight() + this.getVerticalMargins((View)this.mNavButtonView));
            n7 = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState((View)this.mNavButtonView));
        }
        int n9 = n7;
        int n10 = n6;
        if (this.shouldLayout((View)this.mCollapseButtonView)) {
            this.measureChildConstrained((View)this.mCollapseButtonView, n2, 0, n3, 0, this.mMaxButtonHeight);
            n8 = this.mCollapseButtonView.getMeasuredWidth() + this.getHorizontalMargins((View)this.mCollapseButtonView);
            n10 = Math.max(n6, this.mCollapseButtonView.getMeasuredHeight() + this.getVerticalMargins((View)this.mCollapseButtonView));
            n9 = ViewUtils.combineMeasuredStates(n7, ViewCompat.getMeasuredState((View)this.mCollapseButtonView));
        }
        n7 = this.getCurrentContentInsetStart();
        int n11 = 0 + Math.max(n7, n8);
        arrn[n4] = Math.max(0, n7 - n8);
        n8 = 0;
        n7 = n9;
        n6 = n10;
        if (this.shouldLayout((View)this.mMenuView)) {
            this.measureChildConstrained((View)this.mMenuView, n2, n11, n3, 0, this.mMaxButtonHeight);
            n8 = this.mMenuView.getMeasuredWidth() + this.getHorizontalMargins((View)this.mMenuView);
            n6 = Math.max(n10, this.mMenuView.getMeasuredHeight() + this.getVerticalMargins((View)this.mMenuView));
            n7 = ViewUtils.combineMeasuredStates(n9, ViewCompat.getMeasuredState((View)this.mMenuView));
        }
        n9 = this.getCurrentContentInsetEnd();
        n4 = n11 + Math.max(n9, n8);
        arrn[n5] = Math.max(0, n9 - n8);
        n5 = n4;
        n9 = n7;
        n10 = n6;
        if (this.shouldLayout(this.mExpandedActionView)) {
            n5 = n4 + this.measureChildCollapseMargins(this.mExpandedActionView, n2, n4, n3, 0, arrn);
            n10 = Math.max(n6, this.mExpandedActionView.getMeasuredHeight() + this.getVerticalMargins(this.mExpandedActionView));
            n9 = ViewUtils.combineMeasuredStates(n7, ViewCompat.getMeasuredState(this.mExpandedActionView));
        }
        n7 = n5;
        n6 = n9;
        n8 = n10;
        if (this.shouldLayout((View)this.mLogoView)) {
            n7 = n5 + this.measureChildCollapseMargins((View)this.mLogoView, n2, n5, n3, 0, arrn);
            n8 = Math.max(n10, this.mLogoView.getMeasuredHeight() + this.getVerticalMargins((View)this.mLogoView));
            n6 = ViewUtils.combineMeasuredStates(n9, ViewCompat.getMeasuredState((View)this.mLogoView));
        }
        n11 = this.getChildCount();
        n5 = n8;
        n9 = n6;
        n8 = n7;
        for (n10 = 0; n10 < n11; ++n10) {
            View view = this.getChildAt(n10);
            n7 = n8;
            n6 = n9;
            n4 = n5;
            if (((LayoutParams)view.getLayoutParams()).mViewType == 0) {
                if (!this.shouldLayout(view)) {
                    n4 = n5;
                    n6 = n9;
                    n7 = n8;
                } else {
                    n7 = n8 + this.measureChildCollapseMargins(view, n2, n8, n3, 0, arrn);
                    n4 = Math.max(n5, view.getMeasuredHeight() + this.getVerticalMargins(view));
                    n6 = ViewUtils.combineMeasuredStates(n9, ViewCompat.getMeasuredState(view));
                }
            }
            n8 = n7;
            n9 = n6;
            n5 = n4;
        }
        n6 = 0;
        n7 = 0;
        int n12 = this.mTitleMarginTop + this.mTitleMarginBottom;
        int n13 = this.mTitleMarginStart + this.mTitleMarginEnd;
        n10 = n9;
        if (this.shouldLayout((View)this.mTitleTextView)) {
            this.measureChildCollapseMargins((View)this.mTitleTextView, n2, n8 + n13, n3, n12, arrn);
            n6 = this.mTitleTextView.getMeasuredWidth() + this.getHorizontalMargins((View)this.mTitleTextView);
            n7 = this.mTitleTextView.getMeasuredHeight() + this.getVerticalMargins((View)this.mTitleTextView);
            n10 = ViewUtils.combineMeasuredStates(n9, ViewCompat.getMeasuredState((View)this.mTitleTextView));
        }
        n4 = n10;
        n11 = n7;
        n9 = n6;
        if (this.shouldLayout((View)this.mSubtitleTextView)) {
            n9 = Math.max(n6, this.measureChildCollapseMargins((View)this.mSubtitleTextView, n2, n8 + n13, n3, n7 + n12, arrn));
            n11 = n7 + (this.mSubtitleTextView.getMeasuredHeight() + this.getVerticalMargins((View)this.mSubtitleTextView));
            n4 = ViewUtils.combineMeasuredStates(n10, ViewCompat.getMeasuredState((View)this.mSubtitleTextView));
        }
        n10 = Math.max(n5, n11);
        n5 = this.getPaddingLeft();
        n11 = this.getPaddingRight();
        n7 = this.getPaddingTop();
        n6 = this.getPaddingBottom();
        n9 = ViewCompat.resolveSizeAndState(Math.max(n8 + n9 + (n5 + n11), this.getSuggestedMinimumWidth()), n2, -16777216 & n4);
        n2 = ViewCompat.resolveSizeAndState(Math.max(n10 + (n7 + n6), this.getSuggestedMinimumHeight()), n3, n4 << 16);
        if (this.shouldCollapse()) {
            n2 = 0;
        }
        this.setMeasuredDimension(n9, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onRestoreInstanceState(Parcelable object) {
        if (!(object instanceof SavedState)) {
            super.onRestoreInstanceState((Parcelable)object);
            return;
        } else {
            SavedState savedState = (SavedState)object;
            super.onRestoreInstanceState(savedState.getSuperState());
            object = this.mMenuView != null ? this.mMenuView.peekMenu() : null;
            if (savedState.expandedMenuItemId != 0 && this.mExpandedMenuPresenter != null && object != null && (object = object.findItem(savedState.expandedMenuItemId)) != null) {
                MenuItemCompat.expandActionView((MenuItem)object);
            }
            if (!savedState.isOverflowOpen) return;
            {
                this.postShowOverflowMenu();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onRtlPropertiesChanged(int n2) {
        boolean bl = true;
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(n2);
        }
        this.ensureContentInsets();
        RtlSpacingHelper rtlSpacingHelper = this.mContentInsets;
        if (n2 != 1) {
            bl = false;
        }
        rtlSpacingHelper.setDirection(bl);
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.mCurrentExpandedItem != null) {
            savedState.expandedMenuItemId = this.mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
        }
        savedState.isOverflowOpen = this.isOverflowMenuShowing();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        if (n2 == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean bl = super.onTouchEvent(motionEvent);
            if (n2 == 0 && !bl) {
                this.mEatingTouch = true;
            }
        }
        if (n2 == 1 || n2 == 3) {
            this.mEatingTouch = false;
        }
        return true;
    }

    void removeChildrenForExpandedActionView() {
        for (int i2 = this.getChildCount() - 1; i2 >= 0; --i2) {
            View view = this.getChildAt(i2);
            if (((LayoutParams)view.getLayoutParams()).mViewType == 2 || view == this.mMenuView) continue;
            this.removeViewAt(i2);
            this.mHiddenViews.add(view);
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setCollapsible(boolean bl) {
        this.mCollapsible = bl;
        this.requestLayout();
    }

    public void setContentInsetEndWithActions(int n2) {
        int n3 = n2;
        if (n2 < 0) {
            n3 = Integer.MIN_VALUE;
        }
        if (n3 != this.mContentInsetEndWithActions) {
            this.mContentInsetEndWithActions = n3;
            if (this.getNavigationIcon() != null) {
                this.requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int n2) {
        int n3 = n2;
        if (n2 < 0) {
            n3 = Integer.MIN_VALUE;
        }
        if (n3 != this.mContentInsetStartWithNavigation) {
            this.mContentInsetStartWithNavigation = n3;
            if (this.getNavigationIcon() != null) {
                this.requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int n2, int n3) {
        this.ensureContentInsets();
        this.mContentInsets.setAbsolute(n2, n3);
    }

    public void setContentInsetsRelative(int n2, int n3) {
        this.ensureContentInsets();
        this.mContentInsets.setRelative(n2, n3);
    }

    public void setLogo(@DrawableRes int n2) {
        this.setLogo(AppCompatResources.getDrawable(this.getContext(), n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setLogo(Drawable drawable2) {
        if (drawable2 != null) {
            this.ensureLogoView();
            if (!this.isChildOrHidden((View)this.mLogoView)) {
                this.addSystemView((View)this.mLogoView, true);
            }
        } else if (this.mLogoView != null && this.isChildOrHidden((View)this.mLogoView)) {
            this.removeView((View)this.mLogoView);
            this.mHiddenViews.remove((Object)this.mLogoView);
        }
        if (this.mLogoView != null) {
            this.mLogoView.setImageDrawable(drawable2);
        }
    }

    public void setLogoDescription(@StringRes int n2) {
        this.setLogoDescription(this.getContext().getText(n2));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty((CharSequence)charSequence)) {
            this.ensureLogoView();
        }
        if (this.mLogoView != null) {
            this.mLogoView.setContentDescription(charSequence);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setMenu(MenuBuilder menuBuilder, ActionMenuPresenter actionMenuPresenter) {
        if (menuBuilder == null && this.mMenuView == null) {
            return;
        }
        this.ensureMenuView();
        MenuBuilder menuBuilder2 = this.mMenuView.peekMenu();
        if (menuBuilder2 == menuBuilder) return;
        if (menuBuilder2 != null) {
            menuBuilder2.removeMenuPresenter(this.mOuterActionMenuPresenter);
            menuBuilder2.removeMenuPresenter(this.mExpandedMenuPresenter);
        }
        if (this.mExpandedMenuPresenter == null) {
            this.mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
        }
        actionMenuPresenter.setExpandedActionViewsExclusive(true);
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(actionMenuPresenter, this.mPopupContext);
            menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        } else {
            actionMenuPresenter.initForMenu(this.mPopupContext, null);
            this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, null);
            actionMenuPresenter.updateMenuView(true);
            this.mExpandedMenuPresenter.updateMenuView(true);
        }
        this.mMenuView.setPopupTheme(this.mPopupTheme);
        this.mMenuView.setPresenter(actionMenuPresenter);
        this.mOuterActionMenuPresenter = actionMenuPresenter;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.mActionMenuPresenterCallback = callback;
        this.mMenuBuilderCallback = callback2;
        if (this.mMenuView != null) {
            this.mMenuView.setMenuCallbacks(callback, callback2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setNavigationContentDescription(@StringRes int n2) {
        CharSequence charSequence = n2 != 0 ? this.getContext().getText(n2) : null;
        this.setNavigationContentDescription(charSequence);
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty((CharSequence)charSequence)) {
            this.ensureNavButtonView();
        }
        if (this.mNavButtonView != null) {
            this.mNavButtonView.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(@DrawableRes int n2) {
        this.setNavigationIcon(AppCompatResources.getDrawable(this.getContext(), n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setNavigationIcon(@Nullable Drawable drawable2) {
        if (drawable2 != null) {
            this.ensureNavButtonView();
            if (!this.isChildOrHidden((View)this.mNavButtonView)) {
                this.addSystemView((View)this.mNavButtonView, true);
            }
        } else if (this.mNavButtonView != null && this.isChildOrHidden((View)this.mNavButtonView)) {
            this.removeView((View)this.mNavButtonView);
            this.mHiddenViews.remove((Object)this.mNavButtonView);
        }
        if (this.mNavButtonView != null) {
            this.mNavButtonView.setImageDrawable(drawable2);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        this.ensureNavButtonView();
        this.mNavButtonView.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable2) {
        this.ensureMenu();
        this.mMenuView.setOverflowIcon(drawable2);
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

    public void setSubtitle(@StringRes int n2) {
        this.setSubtitle(this.getContext().getText(n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty((CharSequence)charSequence)) {
            if (this.mSubtitleTextView == null) {
                Context context = this.getContext();
                this.mSubtitleTextView = new AppCompatTextView(context);
                this.mSubtitleTextView.setSingleLine();
                this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                if (this.mSubtitleTextAppearance != 0) {
                    this.mSubtitleTextView.setTextAppearance(context, this.mSubtitleTextAppearance);
                }
                if (this.mSubtitleTextColor != 0) {
                    this.mSubtitleTextView.setTextColor(this.mSubtitleTextColor);
                }
            }
            if (!this.isChildOrHidden((View)this.mSubtitleTextView)) {
                this.addSystemView((View)this.mSubtitleTextView, true);
            }
        } else if (this.mSubtitleTextView != null && this.isChildOrHidden((View)this.mSubtitleTextView)) {
            this.removeView((View)this.mSubtitleTextView);
            this.mHiddenViews.remove((Object)this.mSubtitleTextView);
        }
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setText(charSequence);
        }
        this.mSubtitleText = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, @StyleRes int n2) {
        this.mSubtitleTextAppearance = n2;
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setTextAppearance(context, n2);
        }
    }

    public void setSubtitleTextColor(@ColorInt int n2) {
        this.mSubtitleTextColor = n2;
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setTextColor(n2);
        }
    }

    public void setTitle(@StringRes int n2) {
        this.setTitle(this.getContext().getText(n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty((CharSequence)charSequence)) {
            if (this.mTitleTextView == null) {
                Context context = this.getContext();
                this.mTitleTextView = new AppCompatTextView(context);
                this.mTitleTextView.setSingleLine();
                this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                if (this.mTitleTextAppearance != 0) {
                    this.mTitleTextView.setTextAppearance(context, this.mTitleTextAppearance);
                }
                if (this.mTitleTextColor != 0) {
                    this.mTitleTextView.setTextColor(this.mTitleTextColor);
                }
            }
            if (!this.isChildOrHidden((View)this.mTitleTextView)) {
                this.addSystemView((View)this.mTitleTextView, true);
            }
        } else if (this.mTitleTextView != null && this.isChildOrHidden((View)this.mTitleTextView)) {
            this.removeView((View)this.mTitleTextView);
            this.mHiddenViews.remove((Object)this.mTitleTextView);
        }
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setText(charSequence);
        }
        this.mTitleText = charSequence;
    }

    public void setTitleMargin(int n2, int n3, int n4, int n5) {
        this.mTitleMarginStart = n2;
        this.mTitleMarginTop = n3;
        this.mTitleMarginEnd = n4;
        this.mTitleMarginBottom = n5;
        this.requestLayout();
    }

    public void setTitleMarginBottom(int n2) {
        this.mTitleMarginBottom = n2;
        this.requestLayout();
    }

    public void setTitleMarginEnd(int n2) {
        this.mTitleMarginEnd = n2;
        this.requestLayout();
    }

    public void setTitleMarginStart(int n2) {
        this.mTitleMarginStart = n2;
        this.requestLayout();
    }

    public void setTitleMarginTop(int n2) {
        this.mTitleMarginTop = n2;
        this.requestLayout();
    }

    public void setTitleTextAppearance(Context context, @StyleRes int n2) {
        this.mTitleTextAppearance = n2;
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setTextAppearance(context, n2);
        }
    }

    public void setTitleTextColor(@ColorInt int n2) {
        this.mTitleTextColor = n2;
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setTextColor(n2);
        }
    }

    public boolean showOverflowMenu() {
        if (this.mMenuView != null && this.mMenuView.showOverflowMenu()) {
            return true;
        }
        return false;
    }

    private class ExpandedActionViewMenuPresenter
    implements MenuPresenter {
        MenuItemImpl mCurrentExpandedItem;
        MenuBuilder mMenu;

        ExpandedActionViewMenuPresenter() {
        }

        @Override
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (Toolbar.this.mExpandedActionView instanceof CollapsibleActionView) {
                ((CollapsibleActionView)Toolbar.this.mExpandedActionView).onActionViewCollapsed();
            }
            Toolbar.this.removeView(Toolbar.this.mExpandedActionView);
            Toolbar.this.removeView((View)Toolbar.this.mCollapseButtonView);
            Toolbar.this.mExpandedActionView = null;
            Toolbar.this.addChildrenForExpandedActionView();
            this.mCurrentExpandedItem = null;
            Toolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        @Override
        public boolean expandItemActionView(MenuBuilder object, MenuItemImpl menuItemImpl) {
            Toolbar.this.ensureCollapseButtonView();
            if (Toolbar.this.mCollapseButtonView.getParent() != Toolbar.this) {
                Toolbar.this.addView((View)Toolbar.this.mCollapseButtonView);
            }
            Toolbar.this.mExpandedActionView = menuItemImpl.getActionView();
            this.mCurrentExpandedItem = menuItemImpl;
            if (Toolbar.this.mExpandedActionView.getParent() != Toolbar.this) {
                object = Toolbar.this.generateDefaultLayoutParams();
                object.gravity = 8388611 | Toolbar.this.mButtonGravity & 112;
                object.mViewType = 2;
                Toolbar.this.mExpandedActionView.setLayoutParams((ViewGroup.LayoutParams)object);
                Toolbar.this.addView(Toolbar.this.mExpandedActionView);
            }
            Toolbar.this.removeChildrenForExpandedActionView();
            Toolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (Toolbar.this.mExpandedActionView instanceof CollapsibleActionView) {
                ((CollapsibleActionView)Toolbar.this.mExpandedActionView).onActionViewExpanded();
            }
            return true;
        }

        @Override
        public boolean flagActionItems() {
            return false;
        }

        @Override
        public int getId() {
            return 0;
        }

        @Override
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            if (this.mMenu != null && this.mCurrentExpandedItem != null) {
                this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
            }
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

        @Override
        public void setCallback(MenuPresenter.Callback callback) {
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void updateMenuView(boolean var1_1) {
            if (this.mCurrentExpandedItem == null) return;
            var3_3 = var4_2 = false;
            if (this.mMenu == null) ** GOTO lbl13
            var5_4 = this.mMenu.size();
            var2_5 = 0;
            do {
                var3_3 = var4_2;
                if (var2_5 < var5_4) {
                    if (this.mMenu.getItem(var2_5) == this.mCurrentExpandedItem) {
                        return;
                    }
                } else {
                    if (var3_3 != false) return;
lbl13: // 2 sources:
                    this.collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
                    return;
                }
                ++var2_5;
            } while (true);
        }
    }

    public static class LayoutParams
    extends ActionBar.LayoutParams {
        static final int CUSTOM = 0;
        static final int EXPANDED = 2;
        static final int SYSTEM = 1;
        int mViewType = 0;

        public LayoutParams(int n2) {
            this(-2, -1, n2);
        }

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
            this.gravity = 8388627;
        }

        public LayoutParams(int n2, int n3, int n4) {
            super(n2, n3);
            this.gravity = n4;
        }

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.mViewType = layoutParams.mViewType;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super((ViewGroup.LayoutParams)marginLayoutParams);
            this.copyMarginsFromCompat(marginLayoutParams);
        }

        void copyMarginsFromCompat(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public static interface OnMenuItemClickListener {
        public boolean onMenuItemClick(MenuItem var1);
    }

    public static class SavedState
    extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>(){

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        });
        int expandedMenuItemId;
        boolean isOverflowOpen;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        /*
         * Enabled aggressive block sorting
         */
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            boolean bl = parcel.readInt() != 0;
            this.isOverflowOpen = bl;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            parcel.writeInt(this.expandedMenuItemId);
            n2 = this.isOverflowOpen ? 1 : 0;
            parcel.writeInt(n2);
        }

    }

}

