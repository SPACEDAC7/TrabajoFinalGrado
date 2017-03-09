/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 */
package com.buzzfeed.toolkit.ui.appbarlayout;

import android.content.Context;
import android.support.design.widget.AppBarLayout;
import android.util.AttributeSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class BuzzFeedAppBarLayout
extends AppBarLayout {
    final CopyOnWriteArrayList<AppBarLayout.OnOffsetChangedListener> mOffsetChangedListeners = new CopyOnWriteArrayList();

    public BuzzFeedAppBarLayout(Context context) {
        super(context);
    }

    public BuzzFeedAppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void addOnOffsetChangedListener(AppBarLayout.OnOffsetChangedListener onOffsetChangedListener) {
        super.addOnOffsetChangedListener(onOffsetChangedListener);
        this.mOffsetChangedListeners.add(onOffsetChangedListener);
    }

    void notifyOnOffsetChanged(int n2) {
        Iterator<AppBarLayout.OnOffsetChangedListener> iterator = this.mOffsetChangedListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onOffsetChanged(this, n2);
        }
    }

    @Override
    public void removeOnOffsetChangedListener(AppBarLayout.OnOffsetChangedListener onOffsetChangedListener) {
        super.removeOnOffsetChangedListener(onOffsetChangedListener);
        this.mOffsetChangedListeners.remove(onOffsetChangedListener);
    }
}

