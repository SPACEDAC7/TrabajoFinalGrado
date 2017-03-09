/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.analytics.util;

import android.support.annotation.CallSuper;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public abstract class AbstractUnitImpressionRecorder
implements RecyclerView.OnChildAttachStateChangeListener {
    public static final String TAG = AbstractUnitImpressionRecorder.class.getSimpleName();
    protected RecyclerView mRecyclerView;
    protected HashMap<String, UnitImpression> mUnitImpressionCollection = new LinkedHashMap<String, UnitImpression>();

    public AbstractUnitImpressionRecorder(RecyclerView recyclerView) {
        EZUtil.checkNotNull(recyclerView, "RecyclerView cant be null");
        this.mRecyclerView = recyclerView;
        this.mRecyclerView.addOnChildAttachStateChangeListener(this);
    }

    public AbstractUnitImpressionRecorder(RecyclerView recyclerView, HashMap<String, UnitImpression> hashMap) {
        this(recyclerView);
        EZUtil.checkNotNull(hashMap, "Hashmap cant be null");
        this.mUnitImpressionCollection = hashMap;
    }

    public void clearUnitImpressionCollection() {
        this.mUnitImpressionCollection.clear();
    }

    public boolean containsUnitImpression(String string2) {
        return this.mUnitImpressionCollection.containsKey(string2);
    }

    public void detachListenerFromRecyclerView() {
        this.mRecyclerView.removeOnChildAttachStateChangeListener(this);
    }

    public Collection<UnitImpression> getUnitImpressionCollection() {
        return this.mUnitImpressionCollection.values();
    }

    @CallSuper
    @Override
    public void onChildViewAttachedToWindow(View view) {
        this.recordUnitImpressionForViewHolder(this.mRecyclerView.getChildViewHolder(view));
    }

    @CallSuper
    @Override
    public void onChildViewDetachedFromWindow(View view) {
    }

    protected abstract List<UnitImpression> onCreateUnitImpressionsForViewHolder(RecyclerView.ViewHolder var1);

    public void recordAttachedViews() {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager)this.mRecyclerView.getLayoutManager();
        if (linearLayoutManager != null) {
            int n2 = linearLayoutManager.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                Object object = linearLayoutManager.getChildAt(i2);
                if ((object = this.mRecyclerView.getChildViewHolder((View)object)).getAdapterPosition() == -1) continue;
                this.recordUnitImpressionForViewHolder((RecyclerView.ViewHolder)object);
            }
        } else {
            LogUtil.d(TAG + ".recordAttachedViews", "No impressions were recorded. LayoutManager is not attached to the RecyclerView");
        }
    }

    public final void recordUnitImpressionForViewHolder(RecyclerView.ViewHolder iterator) {
        if ((iterator = this.onCreateUnitImpressionsForViewHolder((RecyclerView.ViewHolder)((Object)iterator))) != null) {
            iterator = iterator.iterator();
            while (iterator.hasNext()) {
                UnitImpression unitImpression = (UnitImpression)iterator.next();
                if (unitImpression == null) continue;
                this.mUnitImpressionCollection.put(unitImpression.contentId, unitImpression);
            }
        }
    }
}

