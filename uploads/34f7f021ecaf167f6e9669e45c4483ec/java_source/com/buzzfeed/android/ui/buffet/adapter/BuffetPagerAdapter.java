/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Bundle
 *  android.util.SparseArray
 *  android.view.ViewGroup
 */
package com.buzzfeed.android.ui.buffet.adapter;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.ViewGroup;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.ui.buffet.fragment.NavigationBuffetItem;
import com.buzzfeed.android.ui.buffet.listener.OnPageChangeListener;
import com.buzzfeed.toolkit.util.EZUtil;
import java.util.List;

public class BuffetPagerAdapter
extends FragmentStatePagerAdapter
implements ViewPager.OnPageChangeListener {
    private final SparseArray<Fragment> mActiveFragments = new SparseArray();
    private final Context mContext;
    private int mCurrentPageSelection = -2;
    private boolean mIsPrepared = false;
    private NavigationItem mNavigationItem;
    private int mPendingPageSelection = -2;
    private final RecyclerView.RecycledViewPool mRecycledViewPool;

    public BuffetPagerAdapter(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mContext = context;
        this.mRecycledViewPool = new RecyclerView.RecycledViewPool();
    }

    private void updatePageSelectionIfNecessary() {
        if (this.mPendingPageSelection != -2) {
            this.onPageSelected(this.mPendingPageSelection);
            this.mPendingPageSelection = -2;
        }
    }

    @Override
    public void destroyItem(ViewGroup viewGroup, int n2, Object object) {
        this.mActiveFragments.remove(n2);
        super.destroyItem(viewGroup, n2, object);
    }

    @Override
    public void finishUpdate(ViewGroup viewGroup) {
        super.finishUpdate(viewGroup);
        if (!this.mIsPrepared) {
            this.mIsPrepared = true;
            this.updatePageSelectionIfNecessary();
        }
    }

    @Nullable
    public Fragment getActiveFragment(int n2) {
        return (Fragment)this.mActiveFragments.get(n2, (Object)null);
    }

    @Override
    public int getCount() {
        if (this.mNavigationItem == null) {
            return 0;
        }
        if (this.mNavigationItem.type.isFeedContentSupported()) {
            return this.mNavigationItem.feeds.size();
        }
        return 1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public Fragment getItem(int n2) {
        Object object = (Fragment)this.mActiveFragments.get(n2);
        if (object != null) {
            return object;
        }
        object = this.mNavigationItem.type.getClassToLaunch();
        if (!this.mNavigationItem.type.isFeedContentSupported()) return Fragment.instantiate(this.mContext, object.getName());
        Feed feed = this.mNavigationItem.feeds.get(n2);
        feed = this.mNavigationItem.type.buildFragmentArgsForFeed(feed);
        return Fragment.instantiate(this.mContext, object.getName(), (Bundle)feed);
    }

    @Override
    public int getItemPosition(Object object) {
        return -2;
    }

    @Override
    public CharSequence getPageTitle(int n2) {
        if (this.mNavigationItem == null) {
            return null;
        }
        if (this.mNavigationItem.type.isFeedContentSupported()) {
            Feed feed = this.mNavigationItem.feeds.get(n2);
            if (feed.getLocalizedNameResId() != 0) {
                return this.mContext.getString(feed.getLocalizedNameResId());
            }
            return feed.getName();
        }
        return this.mContext.getString(this.mNavigationItem.titleResId);
    }

    @Override
    public Object instantiateItem(ViewGroup object, int n2) {
        if ((object = (Fragment)super.instantiateItem((ViewGroup)object, n2)) instanceof NavigationBuffetItem) {
            ((NavigationBuffetItem)object).setBuffetRecycledViewPool(this.mRecycledViewPool);
        }
        this.mActiveFragments.put(n2, object);
        return object;
    }

    @Override
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.mIsPrepared = false;
        this.mCurrentPageSelection = -2;
    }

    @Override
    public void onPageScrollStateChanged(int n2) {
    }

    @Override
    public void onPageScrolled(int n2, float f2, int n3) {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onPageSelected(int n2) {
        if (this.mCurrentPageSelection == n2) {
            return;
        }
        if (!this.mIsPrepared) {
            this.mPendingPageSelection = n2;
            return;
        }
        this.mCurrentPageSelection = n2;
        Fragment fragment = (Fragment)this.mActiveFragments.get(this.mCurrentPageSelection);
        n2 = 0;
        while (n2 < this.mActiveFragments.size()) {
            Fragment fragment2 = (Fragment)this.mActiveFragments.get(n2);
            if (fragment2 instanceof OnPageChangeListener) {
                ((OnPageChangeListener)((Object)fragment2)).onPageSelected(fragment);
            }
            ++n2;
        }
    }

    public void setNavigationItem(@NonNull NavigationItem navigationItem) {
        this.mNavigationItem = EZUtil.checkNotNull(navigationItem, "Navigation content must not be null.");
        this.notifyDataSetChanged();
    }
}

