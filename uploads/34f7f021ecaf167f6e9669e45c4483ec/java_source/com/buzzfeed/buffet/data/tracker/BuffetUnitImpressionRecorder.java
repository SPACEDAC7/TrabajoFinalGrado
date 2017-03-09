/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  android.view.View
 */
package com.buzzfeed.buffet.data.tracker;

import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.analytics.util.AbstractUnitImpressionRecorder;
import com.buzzfeed.buffet.data.BuffetUnitImpressionsFactory;
import com.buzzfeed.buffet.data.tracker.PackageUnitImpressionRecorder;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.holder.PackageCard;
import com.buzzfeed.buffet.ui.holder.QCUCard;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BuffetUnitImpressionRecorder
extends AbstractUnitImpressionRecorder {
    private CardAdapter mCardAdapter;
    private Map<String, AbstractUnitImpressionRecorder> mChildRecorders;
    private String mCurrentFeed;
    private boolean mShouldRecordUnitImpressions;

    public BuffetUnitImpressionRecorder(RecyclerView recyclerView, CardAdapter cardAdapter, boolean bl, String string2) {
        super(recyclerView);
        this.mCardAdapter = cardAdapter;
        this.mShouldRecordUnitImpressions = bl;
        this.mCurrentFeed = string2;
        this.mChildRecorders = new HashMap<String, AbstractUnitImpressionRecorder>();
    }

    private void detachChildRecorderForKey(String string2) {
        AbstractUnitImpressionRecorder abstractUnitImpressionRecorder = this.mChildRecorders.get(string2);
        if (abstractUnitImpressionRecorder != null) {
            abstractUnitImpressionRecorder.detachListenerFromRecyclerView();
            this.mChildRecorders.remove(string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onChildViewAttachedToWindow(View object) {
        super.onChildViewAttachedToWindow((View)object);
        object = this.mRecyclerView.getChildViewHolder((View)object);
        if (object instanceof PackageCard) {
            RecyclerView recyclerView = ((PackageCard)object).getRecyclerView();
            if (recyclerView == null) return;
            {
                PackageContent packageContent = (PackageContent)this.mCardAdapter.getItemForPosition(object.getAdapterPosition()).getContent();
                this.mChildRecorders.put(packageContent.getId(), new PackageUnitImpressionRecorder(recyclerView, this.mUnitImpressionCollection, object.getAdapterPosition(), packageContent, 1, this.mCurrentFeed));
                return;
            }
        } else {
            RecyclerView recyclerView;
            if (!(object instanceof QCUCard) || (recyclerView = ((QCUCard)object).getRecyclerView()) == null) return;
            {
                PackageContent packageContent = (PackageContent)this.mCardAdapter.getItemForPosition(object.getAdapterPosition()).getContent();
                this.mChildRecorders.put(packageContent.getId(), new PackageUnitImpressionRecorder(recyclerView, this.mUnitImpressionCollection, object.getAdapterPosition(), packageContent, 1, this.mCurrentFeed));
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onChildViewDetachedFromWindow(View object) {
        super.onChildViewDetachedFromWindow((View)object);
        object = this.mRecyclerView.getChildViewHolder((View)object);
        if (object instanceof PackageCard) {
            this.detachChildRecorderForKey(((PackageCard)object).getPackageId());
            return;
        } else {
            if (!(object instanceof QCUCard)) return;
            {
                this.detachChildRecorderForKey(((QCUCard)object).getPackageId());
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected List<UnitImpression> onCreateUnitImpressionsForViewHolder(RecyclerView.ViewHolder object) {
        ArrayList<UnitImpression> arrayList = new ArrayList<UnitImpression>();
        if (!this.mShouldRecordUnitImpressions) return arrayList;
        {
            int n2 = object.getAdapterPosition();
            object = this.mCardAdapter.getItemForPosition(n2);
            String string2 = object.getId();
            if (object.getType().equals(BuffetType.PACKAGE.name())) {
                object = (PackageContent)object.getContent();
                string2 = object.getId();
                String string3 = object.getName();
                int n3 = object.getPackageItems().size();
                int n4 = object.getPackageItems().size() == 2 ? 2 : 1;
                int n5 = 0;
                while (n5 < n4) {
                    WeaverItem weaverItem = object.getPackageItems().get(n5);
                    arrayList.add(BuffetUnitImpressionsFactory.createUnitImpression(weaverItem.getId(), BuffetType.POST, n2, weaverItem.getCategory(), string2, string3, n3, n5, weaverItem.getDataSource()));
                    LogUtil.d(TAG, "Package impression was recorded with id " + object.getPackageItems().get(n5).getId() + " at position " + n2 + "  with sub position " + n5 + " for feed " + this.mCurrentFeed);
                    ++n5;
                }
                return arrayList;
            }
            if (object.getType().equals(BuffetType.BULLETED_LIST.name()) || object.getType().equals(BuffetType.BREAKING_BULLETED_LIST.name())) {
                object = (PackageContent)object.getContent();
                string2 = object.getId();
                String string4 = object.getName();
                int n6 = object.getPackageItems().size();
                if (n6 < 1) return arrayList;
                {
                    arrayList.add(BuffetUnitImpressionsFactory.createUnitImpression(object.getPackageItems().get(0).getId(), BuffetType.POST, n2, object.getPackageItems().get(0).getCategory(), string2, string4, n6, 0, object.getPackageItems().get(0).getDataSource()));
                    LogUtil.d(TAG, "Package impression was recorded with id " + object.getPackageItems().get(0).getId() + " at position " + n2 + "  with sub position " + 0 + " for feed " + this.mCurrentFeed);
                    return arrayList;
                }
            } else {
                if (TextUtils.isEmpty((CharSequence)string2) || this.containsUnitImpression(string2)) return arrayList;
                {
                    LogUtil.d(TAG, "Unit impression was recorded with id " + string2 + " at position " + n2 + " for feed " + this.mCurrentFeed);
                    arrayList.add(BuffetUnitImpressionsFactory.createUnitImpression((FlowItem)object, BuffetType.valueOf(object.getType()), n2, null, null, null, null));
                    return arrayList;
                }
            }
        }
    }

    @Override
    public void recordAttachedViews() {
        super.recordAttachedViews();
        for (String string2 : this.mChildRecorders.keySet()) {
            this.mChildRecorders.get(string2).recordAttachedViews();
        }
    }
}

