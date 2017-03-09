/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.buffet.data;

import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;

public class BuffetUnitImpressionsFactory {
    public static UnitImpression createUnitImpression(FlowItem flowItem, BuffetType buffetType, int n2) {
        return BuffetUnitImpressionsFactory.createUnitImpression(flowItem, buffetType, n2, null, null, null, null);
    }

    public static UnitImpression createUnitImpression(FlowItem flowItem, BuffetType buffetType, int n2, String string2, String string3, Integer n3, Integer n4) {
        if (flowItem == null) {
            return null;
        }
        String string4 = null;
        String string5 = null;
        if (flowItem.getContent() instanceof PostContent) {
            string4 = ((PostContent)flowItem.getContent()).getCategory();
            string5 = ((PostContent)flowItem.getContent()).getDataSource();
        }
        return BuffetUnitImpressionsFactory.createUnitImpression(flowItem.getId(), buffetType, n2, string4, string2, string3, n3, n4, string5);
    }

    public static UnitImpression createUnitImpression(String string2, BuffetType buffetType, int n2, String string3, String string4, String string5, Integer n3, Integer n4, String string6) {
        if (buffetType == BuffetType.SHOW || buffetType == BuffetType.PACKAGE || buffetType == BuffetType.BULLETED_LIST || buffetType == BuffetType.BREAKING_BULLETED_LIST) {
            return null;
        }
        return new UnitImpression.Builder().setContentId(string2).setPosition(n2).setContentType(BuffetUnitImpressionsFactory.getContentTypeForBuffetType(buffetType)).setPackageId(string4).setPackageName(string5).setPackageSize(n3).setSubPosition(n4).setPostCategory(string3).setDataSource(string6).build();
    }

    private static String getContentTypeForBuffetType(BuffetType buffetType) {
        switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[buffetType.ordinal()]) {
            default: {
                return "buzz";
            }
            case 1: {
                return "breaking_news";
            }
            case 2: 
            case 3: 
            case 4: 
        }
        return "video";
    }

}

