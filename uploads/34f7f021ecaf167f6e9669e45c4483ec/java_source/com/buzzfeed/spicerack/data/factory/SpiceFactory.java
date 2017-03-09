/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.spicerack.data.factory;

import android.content.Context;
import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.factory.SpiceType;
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.data.sharebar.ShareBarContent;
import com.buzzfeed.spicerack.data.supported.SupportedSubbuzzProvider;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.List;

public class SpiceFactory {
    private static final String TAG = LogUtil.makeLogTag(SpiceFactory.class);

    public static SpicyViewState containsSupportedSubBuzz(Context context, SpiceItem spiceItem) {
        if (spiceItem.getSubBuzzes() == null || spiceItem.getSubBuzzes().size() == 0) {
            return SpicyViewState.Fallback;
        }
        return new SupportedSubbuzzProvider(context).getSpicyViewState(spiceItem.getSubBuzzes());
    }

    public static FlowItem createCustomBottomView(SpiceItem spiceItem) {
        return new FlowItem(SpiceType.CUSTOM_BOTTOM.name(), spiceItem);
    }

    public static FlowItem createEmptySpice(SpiceItem spiceItem) {
        return new FlowItem(SpiceType.EMPTY.name(), spiceItem);
    }

    public static FlowItem createFallbackSpice(SpiceItem spiceItem) {
        return new FlowItem(SpiceType.FALLBACK.name(), spiceItem);
    }

    public static FlowItem createHeaderSpice(PostContent postContent) {
        return new FlowItem(SpiceType.HEADER.name(), postContent);
    }

    public static FlowItem createLoadingSpice(PostContent postContent) {
        return new FlowItem(SpiceType.LOADING.name(), postContent);
    }

    public static FlowItem createShareBar(ShareBarContent shareBarContent) {
        return new FlowItem(SpiceType.SHARE_BAR.name(), shareBarContent);
    }

    public static List<FlowItem> getSubBuzzesAsFlowItems(SpiceItem spiceItem) {
        ArrayList<FlowItem> arrayList = new ArrayList<FlowItem>();
        for (SubBuzz subBuzz : spiceItem.getSubBuzzes()) {
            arrayList.add(new FlowItem(SpiceFactory.getTypeForSubBuzz(spiceItem, subBuzz), subBuzz));
        }
        return arrayList;
    }

    private static String getTypeForSubBuzz(SpiceItem spiceItem, SubBuzz subBuzz) {
        return SpiceType.getSpiceType(spiceItem.getFormat().getPageType(), subBuzz).name();
    }

    public static List<String> getUnsupportedSubbuzzs(Context context, SpiceItem spiceItem) {
        return new SupportedSubbuzzProvider(context).getUnsupportedSubbuzzs(spiceItem);
    }
}

