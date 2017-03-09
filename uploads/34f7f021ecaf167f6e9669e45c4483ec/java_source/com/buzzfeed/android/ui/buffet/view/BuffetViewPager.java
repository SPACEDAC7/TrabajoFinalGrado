/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 */
package com.buzzfeed.android.ui.buffet.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class BuffetViewPager
extends ViewPager {
    private List<ViewPager.OnPageChangeListener> mListeners = new CopyOnWriteArrayList<ViewPager.OnPageChangeListener>();

    public BuffetViewPager(Context context) {
        super(context);
    }

    public BuffetViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void dispatchOnPageSelected(int n2) {
        for (ViewPager.OnPageChangeListener onPageChangeListener : this.mListeners) {
            if (onPageChangeListener == null) continue;
            onPageChangeListener.onPageSelected(n2);
        }
    }

    @Override
    public void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        super.addOnPageChangeListener(onPageChangeListener);
        this.mListeners.add(onPageChangeListener);
    }

    @Override
    public void clearOnPageChangeListeners() {
        super.clearOnPageChangeListeners();
        this.mListeners.clear();
    }

    @Override
    public void removeOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        super.removeOnPageChangeListener(onPageChangeListener);
        this.mListeners.remove(onPageChangeListener);
    }

    public void setInitialPosition(final int n2) {
        if (n2 != this.getCurrentItem()) {
            this.setCurrentItem(n2);
            return;
        }
        this.post(new Runnable(){

            @Override
            public void run() {
                BuffetViewPager.this.dispatchOnPageSelected(n2);
            }
        });
    }

}

