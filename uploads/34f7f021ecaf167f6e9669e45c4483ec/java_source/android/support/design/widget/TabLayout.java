/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.database.DataSetObserver
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.IBinder
 *  android.text.Layout
 *  android.text.TextPaint
 *  android.text.TextUtils
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnLongClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.accessibility.AccessibilityNodeInfo
 *  android.view.animation.Interpolator
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.HorizontalScrollView
 *  android.widget.ImageView
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.TextView
 *  android.widget.Toast
 */
package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.IBinder;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.design.R;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.TabItem;
import android.support.design.widget.ThemeUtils;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.ViewUtils;
import android.support.v4.util.Pools;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
public class TabLayout
extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;
    static final int DEFAULT_GAP_TEXT_ICON = 8;
    private static final int DEFAULT_HEIGHT = 48;
    private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;
    static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    private static final int INVALID_WIDTH = -1;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    static final int MOTION_NON_ADJACENT_OFFSET = 24;
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private static final Pools.Pool<Tab> sTabPool = new Pools.SynchronizedPool<Tab>(16);
    private AdapterChangeListener mAdapterChangeListener;
    private int mContentInsetStart;
    private OnTabSelectedListener mCurrentVpSelectedListener;
    int mMode;
    private TabLayoutOnPageChangeListener mPageChangeListener;
    private PagerAdapter mPagerAdapter;
    private DataSetObserver mPagerAdapterObserver;
    private final int mRequestedTabMaxWidth;
    private final int mRequestedTabMinWidth;
    private ValueAnimatorCompat mScrollAnimator;
    private final int mScrollableTabMinWidth;
    private OnTabSelectedListener mSelectedListener;
    private final ArrayList<OnTabSelectedListener> mSelectedListeners;
    private Tab mSelectedTab;
    private boolean mSetupViewPagerImplicitly;
    final int mTabBackgroundResId;
    int mTabGravity;
    int mTabMaxWidth;
    int mTabPaddingBottom;
    int mTabPaddingEnd;
    int mTabPaddingStart;
    int mTabPaddingTop;
    private final SlidingTabStrip mTabStrip;
    int mTabTextAppearance;
    ColorStateList mTabTextColors;
    float mTabTextMultiLineSize;
    float mTabTextSize;
    private final Pools.Pool<TabView> mTabViewPool;
    private final ArrayList<Tab> mTabs;
    ViewPager mViewPager;

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int n2) {
        block4 : {
            super(context, attributeSet, n2);
            this.mTabs = new ArrayList();
            this.mTabMaxWidth = Integer.MAX_VALUE;
            this.mSelectedListeners = new ArrayList();
            this.mTabViewPool = new Pools.SimplePool<TabView>(12);
            ThemeUtils.checkAppCompatTheme(context);
            this.setHorizontalScrollBarEnabled(false);
            this.mTabStrip = new SlidingTabStrip(context);
            super.addView((View)this.mTabStrip, 0, (ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-2, -1));
            attributeSet = context.obtainStyledAttributes(attributeSet, R.styleable.TabLayout, n2, R.style.Widget_Design_TabLayout);
            this.mTabStrip.setSelectedIndicatorHeight(attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
            this.mTabStrip.setSelectedIndicatorColor(attributeSet.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
            this.mTabPaddingBottom = n2 = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
            this.mTabPaddingEnd = n2;
            this.mTabPaddingTop = n2;
            this.mTabPaddingStart = n2;
            this.mTabPaddingStart = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, this.mTabPaddingStart);
            this.mTabPaddingTop = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.mTabPaddingTop);
            this.mTabPaddingEnd = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.mTabPaddingEnd);
            this.mTabPaddingBottom = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.mTabPaddingBottom);
            this.mTabTextAppearance = attributeSet.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
            context = context.obtainStyledAttributes(this.mTabTextAppearance, R.styleable.TextAppearance);
            this.mTabTextSize = context.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
            this.mTabTextColors = context.getColorStateList(R.styleable.TextAppearance_android_textColor);
            if (!attributeSet.hasValue(R.styleable.TabLayout_tabTextColor)) break block4;
            this.mTabTextColors = attributeSet.getColorStateList(R.styleable.TabLayout_tabTextColor);
        }
        if (attributeSet.hasValue(R.styleable.TabLayout_tabSelectedTextColor)) {
            n2 = attributeSet.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0);
            this.mTabTextColors = TabLayout.createColorStateList(this.mTabTextColors.getDefaultColor(), n2);
        }
        this.mRequestedTabMinWidth = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
        this.mRequestedTabMaxWidth = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
        this.mTabBackgroundResId = attributeSet.getResourceId(R.styleable.TabLayout_tabBackground, 0);
        this.mContentInsetStart = attributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
        this.mMode = attributeSet.getInt(R.styleable.TabLayout_tabMode, 1);
        this.mTabGravity = attributeSet.getInt(R.styleable.TabLayout_tabGravity, 0);
        attributeSet.recycle();
        context = this.getResources();
        this.mTabTextMultiLineSize = context.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
        this.mScrollableTabMinWidth = context.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
        this.applyModeAndGravity();
        return;
        finally {
            context.recycle();
        }
    }

    private void addTabFromItemView(@NonNull TabItem tabItem) {
        Tab tab = this.newTab();
        if (tabItem.mText != null) {
            tab.setText(tabItem.mText);
        }
        if (tabItem.mIcon != null) {
            tab.setIcon(tabItem.mIcon);
        }
        if (tabItem.mCustomLayout != 0) {
            tab.setCustomView(tabItem.mCustomLayout);
        }
        if (!TextUtils.isEmpty((CharSequence)tabItem.getContentDescription())) {
            tab.setContentDescription(tabItem.getContentDescription());
        }
        this.addTab(tab);
    }

    private void addTabView(Tab tab) {
        TabView tabView = tab.mView;
        this.mTabStrip.addView((View)tabView, tab.getPosition(), (ViewGroup.LayoutParams)this.createLayoutParamsForTabs());
    }

    private void addViewInternal(View view) {
        if (view instanceof TabItem) {
            this.addTabFromItemView((TabItem)view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void animateToTab(int n2) {
        int n3;
        if (n2 == -1) {
            return;
        }
        if (this.getWindowToken() == null || !ViewCompat.isLaidOut((View)this) || this.mTabStrip.childrenNeedLayout()) {
            this.setScrollPosition(n2, 0.0f, true);
            return;
        }
        int n4 = this.getScrollX();
        if (n4 != (n3 = this.calculateScrollXForTab(n2, 0.0f))) {
            if (this.mScrollAnimator == null) {
                this.mScrollAnimator = ViewUtils.createAnimator();
                this.mScrollAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                this.mScrollAnimator.setDuration(300);
                this.mScrollAnimator.addUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener(){

                    @Override
                    public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                        TabLayout.this.scrollTo(valueAnimatorCompat.getAnimatedIntValue(), 0);
                    }
                });
            }
            this.mScrollAnimator.setIntValues(n4, n3);
            this.mScrollAnimator.start();
        }
        this.mTabStrip.animateIndicatorToPosition(n2, 300);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void applyModeAndGravity() {
        int n2 = 0;
        if (this.mMode == 0) {
            n2 = Math.max(0, this.mContentInsetStart - this.mTabPaddingStart);
        }
        ViewCompat.setPaddingRelative((View)this.mTabStrip, n2, 0, 0, 0);
        switch (this.mMode) {
            case 1: {
                this.mTabStrip.setGravity(1);
            }
            default: {
                break;
            }
            case 0: {
                this.mTabStrip.setGravity(8388611);
            }
        }
        this.updateTabViews(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int calculateScrollXForTab(int n2, float f2) {
        int n3 = 0;
        int n4 = 0;
        if (this.mMode != 0) return n3;
        View view = this.mTabStrip.getChildAt(n2);
        View view2 = n2 + 1 < this.mTabStrip.getChildCount() ? this.mTabStrip.getChildAt(n2 + 1) : null;
        n2 = view != null ? view.getWidth() : 0;
        n3 = n4;
        if (view2 == null) return view.getLeft() + (int)((float)(n2 + n3) * f2 * 0.5f) + view.getWidth() / 2 - this.getWidth() / 2;
        n3 = view2.getWidth();
        return view.getLeft() + (int)((float)(n2 + n3) * f2 * 0.5f) + view.getWidth() / 2 - this.getWidth() / 2;
    }

    private void configureTab(Tab tab, int n2) {
        tab.setPosition(n2);
        this.mTabs.add(n2, tab);
        int n3 = this.mTabs.size();
        ++n2;
        while (n2 < n3) {
            this.mTabs.get(n2).setPosition(n2);
            ++n2;
        }
    }

    private static ColorStateList createColorStateList(int n2, int n3) {
        int[][] arrarrn = new int[2][];
        int[] arrn = new int[2];
        arrarrn[0] = SELECTED_STATE_SET;
        arrn[0] = n3;
        n3 = 0 + 1;
        arrarrn[n3] = EMPTY_STATE_SET;
        arrn[n3] = n2;
        return new ColorStateList((int[][])arrarrn, arrn);
    }

    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        this.updateTabViewLayoutParams(layoutParams);
        return layoutParams;
    }

    /*
     * Enabled aggressive block sorting
     */
    private TabView createTabView(@NonNull Tab tab) {
        TabView tabView = this.mTabViewPool != null ? this.mTabViewPool.acquire() : null;
        TabView tabView2 = tabView;
        if (tabView == null) {
            tabView2 = new TabView(this.getContext());
        }
        tabView2.setTab(tab);
        tabView2.setFocusable(true);
        tabView2.setMinimumWidth(this.getTabMinWidth());
        return tabView2;
    }

    private void dispatchTabReselected(@NonNull Tab tab) {
        for (int i2 = this.mSelectedListeners.size() - 1; i2 >= 0; --i2) {
            this.mSelectedListeners.get(i2).onTabReselected(tab);
        }
    }

    private void dispatchTabSelected(@NonNull Tab tab) {
        for (int i2 = this.mSelectedListeners.size() - 1; i2 >= 0; --i2) {
            this.mSelectedListeners.get(i2).onTabSelected(tab);
        }
    }

    private void dispatchTabUnselected(@NonNull Tab tab) {
        for (int i2 = this.mSelectedListeners.size() - 1; i2 >= 0; --i2) {
            this.mSelectedListeners.get(i2).onTabUnselected(tab);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getDefaultHeight() {
        boolean bl = false;
        int n2 = 0;
        int n3 = this.mTabs.size();
        do {
            boolean bl2 = bl;
            if (n2 < n3) {
                Tab tab = this.mTabs.get(n2);
                if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty((CharSequence)tab.getText())) {
                    return 72;
                }
            } else {
                if (!bl2) return 48;
                return 72;
            }
            ++n2;
        } while (true);
    }

    private float getScrollPosition() {
        return this.mTabStrip.getIndicatorPosition();
    }

    private int getTabMinWidth() {
        if (this.mRequestedTabMinWidth != -1) {
            return this.mRequestedTabMinWidth;
        }
        if (this.mMode == 0) {
            return this.mScrollableTabMinWidth;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, this.mTabStrip.getWidth() - this.getWidth() - this.getPaddingLeft() - this.getPaddingRight());
    }

    private void removeTabViewAt(int n2) {
        TabView tabView = (TabView)this.mTabStrip.getChildAt(n2);
        this.mTabStrip.removeViewAt(n2);
        if (tabView != null) {
            tabView.reset();
            this.mTabViewPool.release(tabView);
        }
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setSelectedTabView(int n2) {
        int n3 = this.mTabStrip.getChildCount();
        if (n2 >= n3) {
            return;
        }
        int n4 = 0;
        while (n4 < n3) {
            View view = this.mTabStrip.getChildAt(n4);
            boolean bl = n4 == n2;
            view.setSelected(bl);
            ++n4;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupWithViewPager(@Nullable ViewPager viewPager, boolean bl, boolean bl2) {
        if (this.mViewPager != null) {
            if (this.mPageChangeListener != null) {
                this.mViewPager.removeOnPageChangeListener(this.mPageChangeListener);
            }
            if (this.mAdapterChangeListener != null) {
                this.mViewPager.removeOnAdapterChangeListener(this.mAdapterChangeListener);
            }
        }
        if (this.mCurrentVpSelectedListener != null) {
            this.removeOnTabSelectedListener(this.mCurrentVpSelectedListener);
            this.mCurrentVpSelectedListener = null;
        }
        if (viewPager != null) {
            this.mViewPager = viewPager;
            if (this.mPageChangeListener == null) {
                this.mPageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            this.mPageChangeListener.reset();
            viewPager.addOnPageChangeListener(this.mPageChangeListener);
            this.mCurrentVpSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.addOnTabSelectedListener(this.mCurrentVpSelectedListener);
            PagerAdapter pagerAdapter = viewPager.getAdapter();
            if (pagerAdapter != null) {
                this.setPagerAdapter(pagerAdapter, bl);
            }
            if (this.mAdapterChangeListener == null) {
                this.mAdapterChangeListener = new AdapterChangeListener();
            }
            this.mAdapterChangeListener.setAutoRefresh(bl);
            viewPager.addOnAdapterChangeListener(this.mAdapterChangeListener);
            this.setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.mViewPager = null;
            this.setPagerAdapter(null, false);
        }
        this.mSetupViewPagerImplicitly = bl2;
    }

    private void updateAllTabs() {
        int n2 = this.mTabs.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTabs.get(i2).updateView();
        }
    }

    private void updateTabViewLayoutParams(LinearLayout.LayoutParams layoutParams) {
        if (this.mMode == 1 && this.mTabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        if (!this.mSelectedListeners.contains(onTabSelectedListener)) {
            this.mSelectedListeners.add(onTabSelectedListener);
        }
    }

    public void addTab(@NonNull Tab tab) {
        this.addTab(tab, this.mTabs.isEmpty());
    }

    public void addTab(@NonNull Tab tab, int n2) {
        this.addTab(tab, n2, this.mTabs.isEmpty());
    }

    public void addTab(@NonNull Tab tab, int n2, boolean bl) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        this.configureTab(tab, n2);
        this.addTabView(tab);
        if (bl) {
            tab.select();
        }
    }

    public void addTab(@NonNull Tab tab, boolean bl) {
        this.addTab(tab, this.mTabs.size(), bl);
    }

    public void addView(View view) {
        this.addViewInternal(view);
    }

    public void addView(View view, int n2) {
        this.addViewInternal(view);
    }

    public void addView(View view, int n2, ViewGroup.LayoutParams layoutParams) {
        this.addViewInternal(view);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        this.addViewInternal(view);
    }

    public void clearOnTabSelectedListeners() {
        this.mSelectedListeners.clear();
    }

    int dpToPx(int n2) {
        return Math.round(this.getResources().getDisplayMetrics().density * (float)n2);
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return this.generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        if (this.mSelectedTab != null) {
            return this.mSelectedTab.getPosition();
        }
        return -1;
    }

    @Nullable
    public Tab getTabAt(int n2) {
        if (n2 < 0 || n2 >= this.getTabCount()) {
            return null;
        }
        return this.mTabs.get(n2);
    }

    public int getTabCount() {
        return this.mTabs.size();
    }

    public int getTabGravity() {
        return this.mTabGravity;
    }

    int getTabMaxWidth() {
        return this.mTabMaxWidth;
    }

    public int getTabMode() {
        return this.mMode;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.mTabTextColors;
    }

    @NonNull
    public Tab newTab() {
        Tab tab;
        Tab tab2 = tab = sTabPool.acquire();
        if (tab == null) {
            tab2 = new Tab();
        }
        tab2.mParent = this;
        tab2.mView = this.createTabView(tab2);
        return tab2;
    }

    protected void onAttachedToWindow() {
        ViewParent viewParent;
        super.onAttachedToWindow();
        if (this.mViewPager == null && (viewParent = this.getParent()) instanceof ViewPager) {
            this.setupWithViewPager((ViewPager)viewParent, true, true);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mSetupViewPagerImplicitly) {
            this.setupWithViewPager(null);
            this.mSetupViewPagerImplicitly = false;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4 = this.dpToPx(this.getDefaultHeight()) + this.getPaddingTop() + this.getPaddingBottom();
        switch (View.MeasureSpec.getMode((int)n3)) {
            case Integer.MIN_VALUE: {
                n3 = View.MeasureSpec.makeMeasureSpec((int)Math.min(n4, View.MeasureSpec.getSize((int)n3)), (int)1073741824);
                break;
            }
            case 0: {
                n3 = View.MeasureSpec.makeMeasureSpec((int)n4, (int)1073741824);
            }
        }
        n4 = View.MeasureSpec.getSize((int)n2);
        if (View.MeasureSpec.getMode((int)n2) != 0) {
            n4 = this.mRequestedTabMaxWidth > 0 ? this.mRequestedTabMaxWidth : (n4 -= this.dpToPx(56));
            this.mTabMaxWidth = n4;
        }
        super.onMeasure(n2, n3);
        if (this.getChildCount() == 1) {
            View view = this.getChildAt(0);
            n2 = 0;
            switch (this.mMode) {
                case 0: {
                    if (view.getMeasuredWidth() >= this.getMeasuredWidth()) {
                        return;
                    }
                    n2 = 1;
                }
                default: {
                    break;
                }
                case 1: {
                    if (view.getMeasuredWidth() == this.getMeasuredWidth()) {
                        return;
                    }
                    n2 = 1;
                }
            }
            if (n2 != 0) {
                n2 = TabLayout.getChildMeasureSpec((int)n3, (int)(this.getPaddingTop() + this.getPaddingBottom()), (int)view.getLayoutParams().height);
                view.measure(View.MeasureSpec.makeMeasureSpec((int)this.getMeasuredWidth(), (int)1073741824), n2);
            }
        }
    }

    void populateFromPagerAdapter() {
        this.removeAllTabs();
        if (this.mPagerAdapter != null) {
            int n2;
            int n3 = this.mPagerAdapter.getCount();
            for (n2 = 0; n2 < n3; ++n2) {
                this.addTab(this.newTab().setText(this.mPagerAdapter.getPageTitle(n2)), false);
            }
            if (this.mViewPager != null && n3 > 0 && (n2 = this.mViewPager.getCurrentItem()) != this.getSelectedTabPosition() && n2 < this.getTabCount()) {
                this.selectTab(this.getTabAt(n2));
            }
        }
    }

    public void removeAllTabs() {
        for (int i2 = this.mTabStrip.getChildCount() - 1; i2 >= 0; --i2) {
            this.removeTabViewAt(i2);
        }
        Iterator<Tab> iterator = this.mTabs.iterator();
        while (iterator.hasNext()) {
            Tab tab = iterator.next();
            iterator.remove();
            tab.reset();
            sTabPool.release(tab);
        }
        this.mSelectedTab = null;
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        this.mSelectedListeners.remove(onTabSelectedListener);
    }

    public void removeTab(Tab tab) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        this.removeTabAt(tab.getPosition());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeTabAt(int n2) {
        int n3 = this.mSelectedTab != null ? this.mSelectedTab.getPosition() : 0;
        this.removeTabViewAt(n2);
        Tab tab = this.mTabs.remove(n2);
        if (tab != null) {
            tab.reset();
            sTabPool.release(tab);
        }
        int n4 = this.mTabs.size();
        for (int i2 = n2; i2 < n4; ++i2) {
            this.mTabs.get(i2).setPosition(i2);
        }
        if (n3 == n2) {
            tab = this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, n2 - 1));
            this.selectTab(tab);
        }
    }

    void selectTab(Tab tab) {
        this.selectTab(tab, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    void selectTab(Tab tab, boolean bl) {
        Tab tab2 = this.mSelectedTab;
        if (tab2 == tab) {
            if (tab2 == null) return;
            {
                this.dispatchTabReselected(tab);
                this.animateToTab(tab.getPosition());
                return;
            }
        } else {
            int n2 = tab != null ? tab.getPosition() : -1;
            if (bl) {
                if ((tab2 == null || tab2.getPosition() == -1) && n2 != -1) {
                    this.setScrollPosition(n2, 0.0f, true);
                } else {
                    this.animateToTab(n2);
                }
                if (n2 != -1) {
                    this.setSelectedTabView(n2);
                }
            }
            if (tab2 != null) {
                this.dispatchTabUnselected(tab2);
            }
            this.mSelectedTab = tab;
            if (tab == null) return;
            {
                this.dispatchTabSelected(tab);
                return;
            }
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        if (this.mSelectedListener != null) {
            this.removeOnTabSelectedListener(this.mSelectedListener);
        }
        this.mSelectedListener = onTabSelectedListener;
        if (onTabSelectedListener != null) {
            this.addOnTabSelectedListener(onTabSelectedListener);
        }
    }

    void setPagerAdapter(@Nullable PagerAdapter pagerAdapter, boolean bl) {
        if (this.mPagerAdapter != null && this.mPagerAdapterObserver != null) {
            this.mPagerAdapter.unregisterDataSetObserver(this.mPagerAdapterObserver);
        }
        this.mPagerAdapter = pagerAdapter;
        if (bl && pagerAdapter != null) {
            if (this.mPagerAdapterObserver == null) {
                this.mPagerAdapterObserver = new PagerAdapterObserver();
            }
            pagerAdapter.registerDataSetObserver(this.mPagerAdapterObserver);
        }
        this.populateFromPagerAdapter();
    }

    public void setScrollPosition(int n2, float f2, boolean bl) {
        this.setScrollPosition(n2, f2, bl, true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void setScrollPosition(int n2, float f2, boolean bl, boolean bl2) {
        int n3 = Math.round((float)n2 + f2);
        if (n3 < 0) return;
        if (n3 >= this.mTabStrip.getChildCount()) {
            return;
        }
        if (bl2) {
            this.mTabStrip.setIndicatorPositionFromTabPosition(n2, f2);
        }
        if (this.mScrollAnimator != null && this.mScrollAnimator.isRunning()) {
            this.mScrollAnimator.cancel();
        }
        this.scrollTo(this.calculateScrollXForTab(n2, f2), 0);
        if (!bl) return;
        this.setSelectedTabView(n3);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int n2) {
        this.mTabStrip.setSelectedIndicatorColor(n2);
    }

    public void setSelectedTabIndicatorHeight(int n2) {
        this.mTabStrip.setSelectedIndicatorHeight(n2);
    }

    public void setTabGravity(int n2) {
        if (this.mTabGravity != n2) {
            this.mTabGravity = n2;
            this.applyModeAndGravity();
        }
    }

    public void setTabMode(int n2) {
        if (n2 != this.mMode) {
            this.mMode = n2;
            this.applyModeAndGravity();
        }
    }

    public void setTabTextColors(int n2, int n3) {
        this.setTabTextColors(TabLayout.createColorStateList(n2, n3));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.mTabTextColors != colorStateList) {
            this.mTabTextColors = colorStateList;
            this.updateAllTabs();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        this.setPagerAdapter(pagerAdapter, false);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        this.setupWithViewPager(viewPager, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean bl) {
        this.setupWithViewPager(viewPager, bl, false);
    }

    public boolean shouldDelayChildPressedState() {
        if (this.getTabScrollRange() > 0) {
            return true;
        }
        return false;
    }

    void updateTabViews(boolean bl) {
        for (int i2 = 0; i2 < this.mTabStrip.getChildCount(); ++i2) {
            View view = this.mTabStrip.getChildAt(i2);
            view.setMinimumWidth(this.getTabMinWidth());
            this.updateTabViewLayoutParams((LinearLayout.LayoutParams)view.getLayoutParams());
            if (!bl) continue;
            view.requestLayout();
        }
    }

    private class AdapterChangeListener
    implements ViewPager.OnAdapterChangeListener {
        private boolean mAutoRefresh;

        AdapterChangeListener() {
        }

        @Override
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            if (TabLayout.this.mViewPager == viewPager) {
                TabLayout.this.setPagerAdapter(pagerAdapter2, this.mAutoRefresh);
            }
        }

        void setAutoRefresh(boolean bl) {
            this.mAutoRefresh = bl;
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface Mode {
    }

    public static interface OnTabSelectedListener {
        public void onTabReselected(Tab var1);

        public void onTabSelected(Tab var1);

        public void onTabUnselected(Tab var1);
    }

    private class PagerAdapterObserver
    extends DataSetObserver {
        PagerAdapterObserver() {
        }

        public void onChanged() {
            TabLayout.this.populateFromPagerAdapter();
        }

        public void onInvalidated() {
            TabLayout.this.populateFromPagerAdapter();
        }
    }

    private class SlidingTabStrip
    extends LinearLayout {
        private ValueAnimatorCompat mIndicatorAnimator;
        private int mIndicatorLeft;
        private int mIndicatorRight;
        private int mSelectedIndicatorHeight;
        private final Paint mSelectedIndicatorPaint;
        int mSelectedPosition;
        float mSelectionOffset;

        SlidingTabStrip(Context context) {
            super(context);
            this.mSelectedPosition = -1;
            this.mIndicatorLeft = -1;
            this.mIndicatorRight = -1;
            this.setWillNotDraw(false);
            this.mSelectedIndicatorPaint = new Paint();
        }

        /*
         * Enabled aggressive block sorting
         */
        private void updateIndicatorPosition() {
            int n2;
            int n3;
            View view = this.getChildAt(this.mSelectedPosition);
            if (view != null && view.getWidth() > 0) {
                int n4 = view.getLeft();
                int n5 = view.getRight();
                n3 = n4;
                n2 = n5;
                if (this.mSelectionOffset > 0.0f) {
                    n3 = n4;
                    n2 = n5;
                    if (this.mSelectedPosition < this.getChildCount() - 1) {
                        view = this.getChildAt(this.mSelectedPosition + 1);
                        n3 = (int)(this.mSelectionOffset * (float)view.getLeft() + (1.0f - this.mSelectionOffset) * (float)n4);
                        n2 = (int)(this.mSelectionOffset * (float)view.getRight() + (1.0f - this.mSelectionOffset) * (float)n5);
                    }
                }
            } else {
                n2 = -1;
                n3 = -1;
            }
            this.setIndicatorPosition(n3, n2);
        }

        /*
         * Enabled aggressive block sorting
         */
        void animateIndicatorToPosition(final int n2, int n3) {
            if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning()) {
                this.mIndicatorAnimator.cancel();
            }
            final int n4 = ViewCompat.getLayoutDirection((View)this) == 1 ? 1 : 0;
            Object object = this.getChildAt(n2);
            if (object == null) {
                this.updateIndicatorPosition();
                return;
            } else {
                int n5;
                final int n6 = object.getLeft();
                final int n7 = object.getRight();
                if (Math.abs(n2 - this.mSelectedPosition) <= 1) {
                    n4 = this.mIndicatorLeft;
                    n5 = this.mIndicatorRight;
                } else {
                    n5 = TabLayout.this.dpToPx(24);
                    n4 = n2 < this.mSelectedPosition ? (n4 != 0 ? (n5 = n6 - n5) : (n5 = n7 + n5)) : (n4 != 0 ? (n5 = n7 + n5) : (n5 = n6 - n5));
                }
                if (n4 == n6 && n5 == n7) return;
                {
                    this.mIndicatorAnimator = object = ViewUtils.createAnimator();
                    object.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                    object.setDuration(n3);
                    object.setFloatValues(0.0f, 1.0f);
                    object.addUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener(){

                        @Override
                        public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                            float f2 = valueAnimatorCompat.getAnimatedFraction();
                            SlidingTabStrip.this.setIndicatorPosition(AnimationUtils.lerp(n4, n6, f2), AnimationUtils.lerp(n5, n7, f2));
                        }
                    });
                    object.addListener(new ValueAnimatorCompat.AnimatorListenerAdapter(){

                        @Override
                        public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
                            SlidingTabStrip.this.mSelectedPosition = n2;
                            SlidingTabStrip.this.mSelectionOffset = 0.0f;
                        }
                    });
                    object.start();
                    return;
                }
            }
        }

        boolean childrenNeedLayout() {
            int n2 = this.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                if (this.getChildAt(i2).getWidth() > 0) continue;
                return true;
            }
            return false;
        }

        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.mIndicatorLeft >= 0 && this.mIndicatorRight > this.mIndicatorLeft) {
                canvas.drawRect((float)this.mIndicatorLeft, (float)(this.getHeight() - this.mSelectedIndicatorHeight), (float)this.mIndicatorRight, (float)this.getHeight(), this.mSelectedIndicatorPaint);
            }
        }

        float getIndicatorPosition() {
            return (float)this.mSelectedPosition + this.mSelectionOffset;
        }

        protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
            super.onLayout(bl, n2, n3, n4, n5);
            if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning()) {
                this.mIndicatorAnimator.cancel();
                long l2 = this.mIndicatorAnimator.getDuration();
                this.animateIndicatorToPosition(this.mSelectedPosition, Math.round((1.0f - this.mIndicatorAnimator.getAnimatedFraction()) * (float)l2));
                return;
            }
            this.updateIndicatorPosition();
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        protected void onMeasure(int n2, int n3) {
            int n4;
            int n5;
            View view;
            int n6;
            super.onMeasure(n2, n3);
            if (View.MeasureSpec.getMode((int)n2) != 1073741824) {
                return;
            }
            if (TabLayout.this.mMode != 1) return;
            if (TabLayout.this.mTabGravity != 1) return;
            int n7 = this.getChildCount();
            int n8 = 0;
            for (n5 = 0; n5 < n7; ++n5) {
                view = this.getChildAt(n5);
                n6 = n8;
                if (view.getVisibility() == 0) {
                    n6 = Math.max(n8, view.getMeasuredWidth());
                }
                n8 = n6;
            }
            if (n8 <= 0) return;
            n6 = TabLayout.this.dpToPx(16);
            n5 = 0;
            if (n8 * n7 <= this.getMeasuredWidth() - n6 * 2) {
                n6 = 0;
                do {
                    n4 = n5;
                    if (n6 < n7) {
                        view = (LinearLayout.LayoutParams)this.getChildAt(n6).getLayoutParams();
                        if (view.width != n8 || view.weight != 0.0f) {
                            view.width = n8;
                            view.weight = 0.0f;
                            n5 = 1;
                        }
                        ++n6;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else {
                TabLayout.this.mTabGravity = 0;
                TabLayout.this.updateTabViews(false);
                n4 = 1;
            }
            if (n4 == 0) return;
            super.onMeasure(n2, n3);
        }

        void setIndicatorPosition(int n2, int n3) {
            if (n2 != this.mIndicatorLeft || n3 != this.mIndicatorRight) {
                this.mIndicatorLeft = n2;
                this.mIndicatorRight = n3;
                ViewCompat.postInvalidateOnAnimation((View)this);
            }
        }

        void setIndicatorPositionFromTabPosition(int n2, float f2) {
            if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning()) {
                this.mIndicatorAnimator.cancel();
            }
            this.mSelectedPosition = n2;
            this.mSelectionOffset = f2;
            this.updateIndicatorPosition();
        }

        void setSelectedIndicatorColor(int n2) {
            if (this.mSelectedIndicatorPaint.getColor() != n2) {
                this.mSelectedIndicatorPaint.setColor(n2);
                ViewCompat.postInvalidateOnAnimation((View)this);
            }
        }

        void setSelectedIndicatorHeight(int n2) {
            if (this.mSelectedIndicatorHeight != n2) {
                this.mSelectedIndicatorHeight = n2;
                ViewCompat.postInvalidateOnAnimation((View)this);
            }
        }

    }

    public static final class Tab {
        public static final int INVALID_POSITION = -1;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        TabLayout mParent;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;
        TabView mView;

        Tab() {
        }

        @Nullable
        public CharSequence getContentDescription() {
            return this.mContentDesc;
        }

        @Nullable
        public View getCustomView() {
            return this.mCustomView;
        }

        @Nullable
        public Drawable getIcon() {
            return this.mIcon;
        }

        public int getPosition() {
            return this.mPosition;
        }

        @Nullable
        public Object getTag() {
            return this.mTag;
        }

        @Nullable
        public CharSequence getText() {
            return this.mText;
        }

        public boolean isSelected() {
            if (this.mParent == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            if (this.mParent.getSelectedTabPosition() == this.mPosition) {
                return true;
            }
            return false;
        }

        void reset() {
            this.mParent = null;
            this.mView = null;
            this.mTag = null;
            this.mIcon = null;
            this.mText = null;
            this.mContentDesc = null;
            this.mPosition = -1;
            this.mCustomView = null;
        }

        public void select() {
            if (this.mParent == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.mParent.selectTab(this);
        }

        @NonNull
        public Tab setContentDescription(@StringRes int n2) {
            if (this.mParent == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.setContentDescription(this.mParent.getResources().getText(n2));
        }

        @NonNull
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.mContentDesc = charSequence;
            this.updateView();
            return this;
        }

        @NonNull
        public Tab setCustomView(@LayoutRes int n2) {
            return this.setCustomView(LayoutInflater.from((Context)this.mView.getContext()).inflate(n2, (ViewGroup)this.mView, false));
        }

        @NonNull
        public Tab setCustomView(@Nullable View view) {
            this.mCustomView = view;
            this.updateView();
            return this;
        }

        @NonNull
        public Tab setIcon(@DrawableRes int n2) {
            if (this.mParent == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.setIcon(AppCompatResources.getDrawable(this.mParent.getContext(), n2));
        }

        @NonNull
        public Tab setIcon(@Nullable Drawable drawable2) {
            this.mIcon = drawable2;
            this.updateView();
            return this;
        }

        void setPosition(int n2) {
            this.mPosition = n2;
        }

        @NonNull
        public Tab setTag(@Nullable Object object) {
            this.mTag = object;
            return this;
        }

        @NonNull
        public Tab setText(@StringRes int n2) {
            if (this.mParent == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.setText(this.mParent.getResources().getText(n2));
        }

        @NonNull
        public Tab setText(@Nullable CharSequence charSequence) {
            this.mText = charSequence;
            this.updateView();
            return this;
        }

        void updateView() {
            if (this.mView != null) {
                this.mView.update();
            }
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface TabGravity {
    }

    public static class TabLayoutOnPageChangeListener
    implements ViewPager.OnPageChangeListener {
        private int mPreviousScrollState;
        private int mScrollState;
        private final WeakReference<TabLayout> mTabLayoutRef;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.mTabLayoutRef = new WeakReference<TabLayout>(tabLayout);
        }

        @Override
        public void onPageScrollStateChanged(int n2) {
            this.mPreviousScrollState = this.mScrollState;
            this.mScrollState = n2;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onPageScrolled(int n2, float f2, int n3) {
            TabLayout tabLayout = this.mTabLayoutRef.get();
            if (tabLayout != null) {
                boolean bl = this.mScrollState != 2 || this.mPreviousScrollState == 1;
                boolean bl2 = this.mScrollState != 2 || this.mPreviousScrollState != 0;
                tabLayout.setScrollPosition(n2, f2, bl, bl2);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onPageSelected(int n2) {
            TabLayout tabLayout = this.mTabLayoutRef.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != n2 && n2 < tabLayout.getTabCount()) {
                boolean bl = this.mScrollState == 0 || this.mScrollState == 2 && this.mPreviousScrollState == 0;
                tabLayout.selectTab(tabLayout.getTabAt(n2), bl);
            }
        }

        void reset() {
            this.mScrollState = 0;
            this.mPreviousScrollState = 0;
        }
    }

    class TabView
    extends LinearLayout
    implements View.OnLongClickListener {
        private ImageView mCustomIconView;
        private TextView mCustomTextView;
        private View mCustomView;
        private int mDefaultMaxLines;
        private ImageView mIconView;
        private Tab mTab;
        private TextView mTextView;

        public TabView(Context context) {
            super(context);
            this.mDefaultMaxLines = 2;
            if (TabLayout.this.mTabBackgroundResId != 0) {
                ViewCompat.setBackground((View)this, AppCompatResources.getDrawable(context, TabLayout.this.mTabBackgroundResId));
            }
            ViewCompat.setPaddingRelative((View)this, TabLayout.this.mTabPaddingStart, TabLayout.this.mTabPaddingTop, TabLayout.this.mTabPaddingEnd, TabLayout.this.mTabPaddingBottom);
            this.setGravity(17);
            this.setOrientation(1);
            this.setClickable(true);
        }

        private float approximateLineWidth(Layout layout2, int n2, float f2) {
            return layout2.getLineWidth(n2) * (f2 / layout2.getPaint().getTextSize());
        }

        /*
         * Enabled aggressive block sorting
         */
        private void updateTextAndIcon(@Nullable TextView textView, @Nullable ImageView imageView) {
            Drawable drawable2 = this.mTab != null ? this.mTab.getIcon() : null;
            CharSequence charSequence = this.mTab != null ? this.mTab.getText() : null;
            CharSequence charSequence2 = this.mTab != null ? this.mTab.getContentDescription() : null;
            if (imageView != null) {
                if (drawable2 != null) {
                    imageView.setImageDrawable(drawable2);
                    imageView.setVisibility(0);
                    this.setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
                imageView.setContentDescription(charSequence2);
            }
            boolean bl = !TextUtils.isEmpty((CharSequence)charSequence);
            if (textView != null) {
                if (bl) {
                    textView.setText(charSequence);
                    textView.setVisibility(0);
                    this.setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText(null);
                }
                textView.setContentDescription(charSequence2);
            }
            if (imageView != null) {
                int n2;
                textView = (ViewGroup.MarginLayoutParams)imageView.getLayoutParams();
                int n3 = n2 = 0;
                if (bl) {
                    n3 = n2;
                    if (imageView.getVisibility() == 0) {
                        n3 = TabLayout.this.dpToPx(8);
                    }
                }
                if (n3 != textView.bottomMargin) {
                    textView.bottomMargin = n3;
                    imageView.requestLayout();
                }
            }
            if (!bl && !TextUtils.isEmpty((CharSequence)charSequence2)) {
                this.setOnLongClickListener((View.OnLongClickListener)this);
                return;
            }
            this.setOnLongClickListener(null);
            this.setLongClickable(false);
        }

        public Tab getTab() {
            return this.mTab;
        }

        @TargetApi(value=14)
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)ActionBar.Tab.class.getName());
        }

        @TargetApi(value=14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName((CharSequence)ActionBar.Tab.class.getName());
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean onLongClick(View view) {
            int n2;
            int[] arrn = new int[2];
            Rect rect = new Rect();
            this.getLocationOnScreen(arrn);
            this.getWindowVisibleDisplayFrame(rect);
            Context context = this.getContext();
            int n3 = this.getWidth();
            int n4 = this.getHeight();
            int n5 = arrn[1];
            int n6 = n4 / 2;
            n3 = n2 = arrn[0] + n3 / 2;
            if (ViewCompat.getLayoutDirection(view) == 0) {
                n3 = context.getResources().getDisplayMetrics().widthPixels - n2;
            }
            view = Toast.makeText((Context)context, (CharSequence)this.mTab.getContentDescription(), (int)0);
            if (n5 + n6 < rect.height()) {
                view.setGravity(8388661, n3, arrn[1] + n4 - rect.top);
            } else {
                view.setGravity(81, 0, n4);
            }
            view.show();
            return true;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public void onMeasure(int n2, int n3) {
            float f2;
            int n4 = View.MeasureSpec.getSize((int)n2);
            int n5 = View.MeasureSpec.getMode((int)n2);
            int n6 = TabLayout.this.getTabMaxWidth();
            if (n6 > 0 && (n5 == 0 || n4 > n6)) {
                n2 = View.MeasureSpec.makeMeasureSpec((int)TabLayout.this.mTabMaxWidth, (int)Integer.MIN_VALUE);
            }
            super.onMeasure(n2, n3);
            if (this.mTextView == null) return;
            this.getResources();
            float f3 = TabLayout.this.mTabTextSize;
            n5 = this.mDefaultMaxLines;
            if (this.mIconView != null && this.mIconView.getVisibility() == 0) {
                n4 = 1;
                f2 = f3;
            } else {
                n4 = n5;
                f2 = f3;
                if (this.mTextView != null) {
                    n4 = n5;
                    f2 = f3;
                    if (this.mTextView.getLineCount() > 1) {
                        f2 = TabLayout.this.mTabTextMultiLineSize;
                        n4 = n5;
                    }
                }
            }
            f3 = this.mTextView.getTextSize();
            int n7 = this.mTextView.getLineCount();
            n5 = TextViewCompat.getMaxLines(this.mTextView);
            if (f2 == f3) {
                if (n5 < 0) return;
                if (n4 == n5) return;
            }
            n5 = n6 = 1;
            if (TabLayout.this.mMode == 1) {
                n5 = n6;
                if (f2 > f3) {
                    n5 = n6;
                    if (n7 == 1) {
                        Layout layout2 = this.mTextView.getLayout();
                        if (layout2 == null) return;
                        n5 = n6;
                        if (this.approximateLineWidth(layout2, 0, f2) > (float)(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight())) {
                            return;
                        }
                    }
                }
                if (n5 == 0) return;
            }
            this.mTextView.setTextSize(0, f2);
            this.mTextView.setMaxLines(n4);
            super.onMeasure(n2, n3);
        }

        public boolean performClick() {
            boolean bl;
            boolean bl2 = bl = super.performClick();
            if (this.mTab != null) {
                if (!bl) {
                    this.playSoundEffect(0);
                }
                this.mTab.select();
                bl2 = true;
            }
            return bl2;
        }

        void reset() {
            this.setTab(null);
            this.setSelected(false);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void setSelected(boolean bl) {
            boolean bl2 = this.isSelected() != bl;
            super.setSelected(bl);
            if (bl2 && bl && Build.VERSION.SDK_INT < 16) {
                this.sendAccessibilityEvent(4);
            }
            if (this.mTextView != null) {
                this.mTextView.setSelected(bl);
            }
            if (this.mIconView != null) {
                this.mIconView.setSelected(bl);
            }
            if (this.mCustomView != null) {
                this.mCustomView.setSelected(bl);
            }
        }

        void setTab(@Nullable Tab tab) {
            if (tab != this.mTab) {
                this.mTab = tab;
                this.update();
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        final void update() {
            Tab tab = this.mTab;
            View view = tab != null ? tab.getCustomView() : null;
            if (view != null) {
                ViewParent viewParent = view.getParent();
                if (viewParent != this) {
                    if (viewParent != null) {
                        ((ViewGroup)viewParent).removeView(view);
                    }
                    this.addView(view);
                }
                this.mCustomView = view;
                if (this.mTextView != null) {
                    this.mTextView.setVisibility(8);
                }
                if (this.mIconView != null) {
                    this.mIconView.setVisibility(8);
                    this.mIconView.setImageDrawable(null);
                }
                this.mCustomTextView = (TextView)view.findViewById(16908308);
                if (this.mCustomTextView != null) {
                    this.mDefaultMaxLines = TextViewCompat.getMaxLines(this.mCustomTextView);
                }
                this.mCustomIconView = (ImageView)view.findViewById(16908294);
            } else {
                if (this.mCustomView != null) {
                    this.removeView(this.mCustomView);
                    this.mCustomView = null;
                }
                this.mCustomTextView = null;
                this.mCustomIconView = null;
            }
            if (this.mCustomView == null) {
                if (this.mIconView == null) {
                    view = (ImageView)LayoutInflater.from((Context)this.getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup)this, false);
                    this.addView(view, 0);
                    this.mIconView = view;
                }
                if (this.mTextView == null) {
                    view = (TextView)LayoutInflater.from((Context)this.getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup)this, false);
                    this.addView(view);
                    this.mTextView = view;
                    this.mDefaultMaxLines = TextViewCompat.getMaxLines(this.mTextView);
                }
                TextViewCompat.setTextAppearance(this.mTextView, TabLayout.this.mTabTextAppearance);
                if (TabLayout.this.mTabTextColors != null) {
                    this.mTextView.setTextColor(TabLayout.this.mTabTextColors);
                }
                this.updateTextAndIcon(this.mTextView, this.mIconView);
            } else if (this.mCustomTextView != null || this.mCustomIconView != null) {
                this.updateTextAndIcon(this.mCustomTextView, this.mCustomIconView);
            }
            boolean bl = tab != null && tab.isSelected();
            this.setSelected(bl);
        }
    }

    public static class ViewPagerOnTabSelectedListener
    implements OnTabSelectedListener {
        private final ViewPager mViewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.mViewPager = viewPager;
        }

        @Override
        public void onTabReselected(Tab tab) {
        }

        @Override
        public void onTabSelected(Tab tab) {
            this.mViewPager.setCurrentItem(tab.getPosition());
        }

        @Override
        public void onTabUnselected(Tab tab) {
        }
    }

}

