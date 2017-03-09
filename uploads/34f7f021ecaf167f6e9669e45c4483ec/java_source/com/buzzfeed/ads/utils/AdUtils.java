/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.ads.utils;

import android.text.TextUtils;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import java.util.Iterator;
import java.util.Locale;

public class AdUtils {
    private static final String IU_BODY_ADOPS = "/6556/bfd.adops_giraffe.bfapp_android";
    private static final String IU_BODY_DEFAULT = "/6556/bfd.bfapp_android";
    private static final String IU_BODY_GIRAFFE = "/6556/bfd.giraffe_test.bfapp_android";
    private static final String IU_BODY_TEST = "/6556/bfd.test.bfapp_android";

    public static String buildIuBody(int n2) {
        switch (n2) {
            default: {
                return "/6556/bfd.bfapp_android";
            }
            case 1: {
                return "/6556/bfd.test.bfapp_android";
            }
            case 2: {
                return "/6556/bfd.giraffe_test.bfapp_android";
            }
            case 3: 
        }
        return "/6556/bfd.adops_giraffe.bfapp_android";
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static String getLanguagePath(String var0) {
        if (TextUtils.isEmpty((CharSequence)var0) != false) return "/en/";
        var1_1 = -1;
        switch (var0.hashCode()) {
            case 96748077: {
                if (var0.equals("es-es")) {
                    var1_1 = 0;
                    ** break;
                }
                ** GOTO lbl12
            }
            case 96748330: {
                if (var0.equals("es-mx")) {
                    var1_1 = 1;
                }
            }
lbl12: // 6 sources:
            default: {
                ** GOTO lbl17
            }
            case 1544803905: 
        }
        if (var0.equals("default")) {
            var1_1 = 2;
        }
lbl17: // 4 sources:
        switch (var1_1) {
            default: {
                return "/" + var0.substring(0, 2) + "/";
            }
            case 0: {
                return "/sp/";
            }
            case 1: {
                return "/mx/";
            }
            case 2: 
        }
        return "/" + Locale.getDefault().getLanguage() + "/";
    }

    public static boolean hasBreakingBar(FlowList object) {
        object = object.iterator();
        while (object.hasNext()) {
            FlowItem flowItem = (FlowItem)object.next();
            if (!BuffetType.BREAKING_BAR.name().equals(flowItem.getType())) continue;
            return true;
        }
        return false;
    }

    public static boolean hasFeatured(FlowList object) {
        object = object.iterator();
        while (object.hasNext()) {
            FlowItem flowItem = (FlowItem)object.next();
            if (!BuffetType.FEATURED.name().equals(flowItem.getType())) continue;
            return true;
        }
        return false;
    }

    public static boolean hasVideoAd(FlowList object) {
        object = object.iterator();
        while (object.hasNext()) {
            FlowItem flowItem = (FlowItem)object.next();
            if (!BuffetType.VIDEO_AD.name().equals(flowItem.getType())) continue;
            return true;
        }
        return false;
    }
}

