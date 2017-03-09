/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.net.NetworkInfo
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.widget.TextView
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.buzzfeed.android.activity.MenuActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.tracking.BuffetTracker;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.NavigationModel;
import com.buzzfeed.android.ui.buffet.adapter.BuffetPagerAdapter;
import com.buzzfeed.android.ui.buffet.fragment.BuffetFragment;
import com.buzzfeed.android.ui.buffet.fragment.NavigationBuffetItem;
import com.buzzfeed.android.ui.buffet.fragment.NavigationItemView;
import com.buzzfeed.android.ui.buffet.view.BuffetViewPager;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.android.util.FeedUtils;
import com.buzzfeed.toolkit.bottomnav.widget.BottomNavigationView;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class PagerActivity
extends MenuActivity {
    private static final String KEY_VERTICAL = "KEY_VERTICAL";
    private static final String STATE_KEY_DEEP_LINK_HANDLED = "STATE_KEY_DEEP_LINK_HANDLED";
    private static final String STATE_KEY_POSITION_BOTTOM_MENU = "STATE_KEY_POSITION_BOTTOM_MENU";
    private static final String STATE_KEY_POSITION_VIEWPAGER = "STATE_KEY_POSITION_VIEWPAGER";
    private static final String TAG = LogUtil.makeLogTag(PagerActivity.class);
    private AppBarLayout mAppBarLayout;
    private List<NavigationItem> mBottomNavItems = Collections.emptyList();
    private BottomNavigationView mBottomNavigationView;
    private FeedListProvider mFeedListProvider;
    private boolean mIsDeepLinkHandled = false;
    private BuffetPagerAdapter mPagerAdapter;
    private int mSelectedBottomMenuPosition = 0;
    private int mSelectedViewPagerPosition = 0;
    private TabLayout mTabLayout;
    private BuffetViewPager mViewPager;

    /*
     * Enabled aggressive block sorting
     */
    private void configureAppBarForNavigation(NavigationItem object) {
        boolean bl = this.shouldShowTabs();
        Object object2 = this.mTabLayout;
        int n2 = bl ? 0 : 8;
        object2.setVisibility(n2);
        this.dismissSearchViewIfNecessary();
        object = object.feeds.size() <= 1 ? this.getString(object.titleResId) : null;
        object2 = this.getSupportActionBar();
        if (object2 == null) return;
        if (!bl && !TextUtils.isEmpty((CharSequence)object)) {
            object2.setCustomView(2130903068);
            ((TextView)UIUtil.findView(object2.getCustomView(), 2131820683)).setText((CharSequence)object);
            return;
        }
        object2.setCustomView(2130903066);
    }

    private void configureBottomNavigationClearance() {
        Resources resources = this.getResources();
        ((ViewGroup.MarginLayoutParams)this.mViewPager.getLayoutParams()).bottomMargin = resources.getDimensionPixelSize(2131427449);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean handleBottomNavigationAction(int n2) {
        Object object = TAG + ".handleBottomNavigationAction";
        if (this.mBottomNavItems.isEmpty() || n2 >= this.mBottomNavItems.size()) {
            LogUtil.e((String)object, "Unable to handle selection action. position=" + n2);
            return false;
        }
        if (this.mSelectedBottomMenuPosition != n2) {
            object = this.mBottomNavItems.get(n2);
            String string2 = this.getCurrentScreen();
            this.mBuffetTracker.trackTabClicked(object.id.toLowerCase(), string2);
            this.setNavigationUiConfiguration((NavigationItem)object, n2, 0);
            this.mSelectedBottomMenuPosition = n2;
        } else {
            this.scrollNavigationItemToTop();
        }
        this.mAppBarLayout.setExpanded(true);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean handleDeepLink(Intent object) {
        if (this.mIsDeepLinkHandled) {
            return false;
        }
        if ((object = this.mFeedListProvider.getDeepLinkedFeed((Intent)object)) == null) return false;
        this.mIsDeepLinkHandled = true;
        if (this.isPagerAdapterConfigured() && this.isCurrentFeedSelected((Feed)object)) {
            this.scrollNavigationItemToTop();
            this.mAppBarLayout.setExpanded(true);
            return true;
        }
        this.handleInternalFeedSelection((Feed)object);
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void handleInternalFeedSelection(@NonNull Feed feed) {
        int n2 = 0;
        for (NavigationItem navigationItem : this.mBottomNavItems) {
            Object object = navigationItem.feeds;
            int n3 = 0;
            object = object.iterator();
            while (object.hasNext()) {
                if (TextUtils.equals((CharSequence)((Feed)object.next()).getTag(), (CharSequence)feed.getTag())) {
                    this.setNavigationUiConfiguration(navigationItem, n2, n3);
                    this.mSelectedBottomMenuPosition = n2;
                    return;
                }
                ++n3;
            }
            ++n2;
        }
    }

    private boolean isCurrentFeedSelected(Feed feed) {
        Feed feed2 = this.getCurrentFeed();
        if (feed2 != null && feed != null && TextUtils.equals((CharSequence)feed2.getTag(), (CharSequence)feed.getTag())) {
            return true;
        }
        return false;
    }

    private boolean isPagerAdapterConfigured() {
        if (this.mPagerAdapter != null && this.mPagerAdapter.getCount() > 0) {
            return true;
        }
        return false;
    }

    private void refreshBookmarks() {
        NavigationItemView navigationItemView;
        if (FeedUtils.isBookmarkFeed(this.getCurrentFeed()) && (navigationItemView = this.getNavigationItemView()) instanceof NavigationBuffetItem) {
            ((NavigationBuffetItem)navigationItemView).reloadFeed();
        }
    }

    private void scrollNavigationItemToTop() {
        NavigationItemView navigationItemView = this.getNavigationItemView();
        if (navigationItemView != null) {
            navigationItemView.scrollToTop();
        }
    }

    private void setNavigationUiConfiguration(@NonNull NavigationItem navigationItem, int n2, int n3) {
        this.mPagerAdapter.setNavigationItem(navigationItem);
        this.mViewPager.setInitialPosition(n3);
        this.mBottomNavigationView.setSelected(n2);
        this.configureAppBarForNavigation(navigationItem);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupBottomNavigationMenu() {
        Object t2 = UIUtil.findView(this, 2131820690);
        if (this.mBottomNavItems.size() <= 1) {
            this.mBottomNavigationView.setVisibility(8);
            t2.setVisibility(8);
            return;
        }
        Menu menu2 = this.mBottomNavigationView.getMenu();
        menu2.clear();
        int n2 = 0;
        Iterator<NavigationItem> iterator = this.mBottomNavItems.iterator();
        do {
            if (!iterator.hasNext()) {
                this.configureBottomNavigationClearance();
                this.mBottomNavigationView.setVisibility(0);
                t2.setVisibility(0);
                return;
            }
            NavigationItem navigationItem = iterator.next();
            MenuItem menuItem = menu2.add(0, n2, n2, navigationItem.titleResId);
            menuItem.setIcon(navigationItem.iconResId);
            boolean bl = n2 == 0;
            menuItem.setChecked(bl);
            menuItem.setVisible(true);
            ++n2;
        } while (true);
    }

    private void setupTabLayout() {
        this.mTabLayout = (TabLayout)((Object)UIUtil.findView(this, 2131820688));
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        BuzzUtils.changeFont((ViewGroup)this.mTabLayout, "fonts/ProximaNova-Sbold.otf");
        if (!this.shouldShowTabs()) {
            this.mTabLayout.setVisibility(8);
        }
    }

    private void setupViewPager() {
        this.mPagerAdapter = new BuffetPagerAdapter((Context)this, this.getSupportFragmentManager());
        this.mViewPager.setOffscreenPageLimit(2);
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.mViewPager.addOnPageChangeListener(this.mPagerAdapter);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener(){

            @Override
            public void onPageScrollStateChanged(int n2) {
            }

            @Override
            public void onPageScrolled(int n2, float f2, int n3) {
            }

            @Override
            public void onPageSelected(int n2) {
                PagerActivity.this.mSelectedViewPagerPosition = n2;
                PagerActivity.this.mAppBarLayout.setExpanded(true, true);
            }
        });
    }

    private boolean shouldShowTabs() {
        if (this.mPagerAdapter != null && this.mPagerAdapter.getCount() > 1) {
            return true;
        }
        return false;
    }

    public static void startIntent(Activity activity) {
        Intent intent = new Intent((Context)activity, (Class)PagerActivity.class);
        intent.setFlags(131072);
        activity.startActivity(intent);
    }

    public static void startIntent(Activity activity, Feed feed) {
        Intent intent = new Intent((Context)activity, (Class)PagerActivity.class);
        intent.setFlags(131072);
        intent.putExtra("KEY_VERTICAL", feed.getTag());
        activity.startActivity(intent);
    }

    @Override
    protected void dismissSearchViewIfNecessary() {
        Toolbar toolbar = this.getToolbar();
        if (toolbar != null) {
            toolbar.collapseActionView();
        }
    }

    @Nullable
    @Override
    public Feed getCurrentFeed() {
        int n2 = this.mViewPager.getCurrentItem();
        List<Feed> list = this.mBottomNavItems.get((int)this.mSelectedBottomMenuPosition).feeds;
        if (!list.isEmpty() && n2 < list.size()) {
            return list.get(n2);
        }
        return null;
    }

    @Override
    protected String getCurrentScreen() {
        return AnalyticsUtils.buildScreenNameFromNavigationItem(this.mBottomNavItems.get(this.mSelectedBottomMenuPosition), EnvironmentConfig.getEdition((Context)this), this.mViewPager.getCurrentItem());
    }

    @Nullable
    protected NavigationItemView getNavigationItemView() {
        if (this.mTabLayout == null || this.mPagerAdapter == null) {
            return null;
        }
        int n2 = this.mTabLayout.getSelectedTabPosition();
        return (NavigationItemView)((Object)this.mPagerAdapter.getActiveFragment(n2));
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903070);
        this.mFeedListProvider = FeedListProvider.getInstance(EnvironmentConfig.getEdition((Context)this));
        this.mTabLayout = (TabLayout)((Object)UIUtil.findView(this, 2131820688));
        this.mViewPager = (BuffetViewPager)((Object)UIUtil.findView(this, 2131820689));
        this.mAppBarLayout = (AppBarLayout)((Object)UIUtil.findView(this, 2131820687));
        this.mBottomNavigationView = (BottomNavigationView)((Object)UIUtil.findView(this, 2131820691));
        this.mBottomNavigationView.setOnNavigationItemSelectedListener(new InternalNavigationItemSelectedListener());
        if (bundle != null) {
            this.mSelectedBottomMenuPosition = bundle.getInt("STATE_KEY_POSITION_BOTTOM_MENU", 0);
            this.mSelectedViewPagerPosition = bundle.getInt("STATE_KEY_POSITION_VIEWPAGER", 0);
            this.mIsDeepLinkHandled = bundle.getBoolean("STATE_KEY_DEEP_LINK_HANDLED");
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu2) {
        super.onCreateOptionsMenu(menu2);
        MenuItemCompat.setOnActionExpandListener(menu2.findItem(2131821107), new MenuItemCompat.OnActionExpandListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public boolean onMenuItemActionCollapse(MenuItem object) {
                object = PagerActivity.this.mTabLayout;
                int n2 = PagerActivity.this.shouldShowTabs() ? 0 : 8;
                object.setVisibility(n2);
                return true;
            }

            @Override
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                PagerActivity.this.mTabLayout.setVisibility(8);
                return true;
            }
        });
        return true;
    }

    @Override
    protected void onDestroy() {
        this.mViewPager.clearOnPageChangeListeners();
        this.mBottomNavigationView.setOnNavigationItemSelectedListener(null);
        super.onDestroy();
    }

    protected void onNavigationContentLoaded(@NonNull NavigationModel navigationModel) {
        this.mBottomNavItems = navigationModel.getNavigationItems();
        this.setupBottomNavigationMenu();
        this.setupViewPager();
        this.setupTabLayout();
        if (!this.handleDeepLink(this.getIntent())) {
            this.setNavigationUiConfiguration(this.mBottomNavItems.get(this.mSelectedBottomMenuPosition), this.mSelectedBottomMenuPosition, this.mSelectedViewPagerPosition);
        }
    }

    @Override
    protected void onNetworkChange(@Nullable NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isConnected()) {
            this.onNetworkConnected();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void onNetworkConnected() {
        if (this.mPagerAdapter == null) {
            return;
        }
        int n2 = 0;
        while (n2 < this.mPagerAdapter.getCount()) {
            Fragment fragment = this.mPagerAdapter.getActiveFragment(n2);
            if (fragment instanceof NavigationBuffetItem) {
                ((NavigationBuffetItem)((Object)fragment)).retryFeedLoad();
            }
            ++n2;
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        this.mIsDeepLinkHandled = false;
        this.handleDeepLink(intent);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131821107) {
            this.mTabLayout.setVisibility(8);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    protected void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        this.promptUserToLoginToSaveBookmarks(BFBookmarkManager.hasPromptedToSignInHomeFeed);
        BFBookmarkManager.hasPromptedToSignInHomeFeed = true;
        this.onNavigationContentLoaded(this.mFeedListProvider.getNavigationModel());
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (this.mTabLayout != null && this.shouldShowTabs()) {
            this.mTabLayout.setVisibility(0);
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("STATE_KEY_POSITION_BOTTOM_MENU", this.mSelectedBottomMenuPosition);
        bundle.putInt("STATE_KEY_POSITION_VIEWPAGER", this.mSelectedViewPagerPosition);
        bundle.putBoolean("STATE_KEY_DEEP_LINK_HANDLED", this.mIsDeepLinkHandled);
    }

    protected void promptUserToLoginToSaveBookmarks(boolean bl) {
        if (!bl) {
            this.mBookmarkManager.promptLoginNotice(this, new BFBookmarkManager.BookmarkChangeListener(){

                @Override
                public void onBookmarksChanged() {
                    if (PagerActivity.this.isFinishing()) {
                        return;
                    }
                    PagerActivity.this.refreshBookmarks();
                }

                @Override
                public void onLoginRequest() {
                    NavigationItemView navigationItemView = PagerActivity.this.getNavigationItemView();
                    if (navigationItemView instanceof BuffetFragment) {
                        ((BuffetFragment)navigationItemView).startLoginActivityForResult();
                    }
                }
            });
        }
    }

    private class InternalNavigationItemSelectedListener
    implements BottomNavigationView.OnNavigationItemSelectedListener {
        private InternalNavigationItemSelectedListener() {
        }

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
            return PagerActivity.this.handleBottomNavigationAction(menuItem.getOrder());
        }
    }

}

