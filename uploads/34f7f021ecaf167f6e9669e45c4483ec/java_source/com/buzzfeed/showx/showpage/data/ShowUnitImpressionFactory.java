/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.showx.showpage.data;

import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.showx.showpage.data.model.ShowPageItemType;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.LogUtil;

public class ShowUnitImpressionFactory {
    public static final String TAG = ShowUnitImpressionFactory.class.getSimpleName();

    public UnitImpression createUnitImpression(FlowItem object, ShowPageItemType showPageItemType, int n2) {
        object = object.getId();
        switch (.$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType[showPageItemType.ordinal()]) {
            default: {
                LogUtil.d(TAG + ".createUnitImpression", "Could not create Unit Impression for ShowPageItemType = " + (Object)((Object)showPageItemType));
                return null;
            }
            case 1: 
            case 2: 
        }
        return new UnitImpression.Builder().setContentId((String)object).setContentType("video").setPosition(n2).build();
    }

}

