/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.buffet.data.tracker;

import android.support.v7.widget.RecyclerView;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.analytics.util.AbstractUnitImpressionRecorder;
import com.buzzfeed.buffet.data.BuffetUnitImpressionsFactory;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PackageUnitImpressionRecorder
extends AbstractUnitImpressionRecorder {
    private int mAdapterPosition;
    private String mCurrentFeed;
    private PackageContent mPackageContent;
    private int mSubPositionOffset;

    public PackageUnitImpressionRecorder(RecyclerView recyclerView, HashMap<String, UnitImpression> hashMap, int n2, PackageContent packageContent, int n3, String string2) {
        super(recyclerView, hashMap);
        this.mPackageContent = packageContent;
        this.mAdapterPosition = n2;
        this.mSubPositionOffset = n3;
        this.mCurrentFeed = string2;
    }

    @Override
    protected List<UnitImpression> onCreateUnitImpressionsForViewHolder(RecyclerView.ViewHolder object) {
        ArrayList<UnitImpression> arrayList = new ArrayList<UnitImpression>();
        int n2 = object.getAdapterPosition() + this.mSubPositionOffset;
        object = this.mPackageContent.getPackageItems().get(n2);
        arrayList.add(BuffetUnitImpressionsFactory.createUnitImpression(object.getId(), BuffetType.POST, this.mAdapterPosition, object.getCategory(), this.mPackageContent.getId(), this.mPackageContent.getName(), this.mPackageContent.getPackageItems().size(), n2, object.getDataSource()));
        LogUtil.d(TAG, "Sub Package impression was recorded with id " + object.getId() + " at position " + this.mAdapterPosition + "  with sub position " + n2 + " for feed " + this.mCurrentFeed);
        return arrayList;
    }
}

