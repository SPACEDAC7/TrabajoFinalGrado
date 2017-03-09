/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.view.accessibility.AccessibilityNodeInfo
 *  android.view.accessibility.AccessibilityNodeInfo$CollectionInfo
 *  android.view.accessibility.AccessibilityNodeInfo$CollectionItemInfo
 *  android.view.accessibility.AccessibilityNodeInfo$RangeInfo
 */
package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;

class AccessibilityNodeInfoCompatKitKat {
    private static final String ROLE_DESCRIPTION_KEY = "AccessibilityNodeInfo.roleDescription";
    private static final String TRAITS_KEY = "android.view.accessibility.AccessibilityNodeInfo.traits";
    private static final long TRAIT_HAS_IMAGE = 1;
    private static final byte TRAIT_UNSET = -1;

    AccessibilityNodeInfoCompatKitKat() {
    }

    public static boolean canOpenPopup(Object object) {
        return ((AccessibilityNodeInfo)object).canOpenPopup();
    }

    static Object getCollectionInfo(Object object) {
        return ((AccessibilityNodeInfo)object).getCollectionInfo();
    }

    static Object getCollectionItemInfo(Object object) {
        return ((AccessibilityNodeInfo)object).getCollectionItemInfo();
    }

    public static Bundle getExtras(Object object) {
        return ((AccessibilityNodeInfo)object).getExtras();
    }

    public static int getInputType(Object object) {
        return ((AccessibilityNodeInfo)object).getInputType();
    }

    static int getLiveRegion(Object object) {
        return ((AccessibilityNodeInfo)object).getLiveRegion();
    }

    static Object getRangeInfo(Object object) {
        return ((AccessibilityNodeInfo)object).getRangeInfo();
    }

    public static CharSequence getRoleDescription(Object object) {
        return AccessibilityNodeInfoCompatKitKat.getExtras(object).getCharSequence("AccessibilityNodeInfo.roleDescription");
    }

    private static long getTraits(Object object) {
        return AccessibilityNodeInfoCompatKitKat.getExtras(object).getLong("android.view.accessibility.AccessibilityNodeInfo.traits", -1);
    }

    public static boolean isContentInvalid(Object object) {
        return ((AccessibilityNodeInfo)object).isContentInvalid();
    }

    public static boolean isDismissable(Object object) {
        return ((AccessibilityNodeInfo)object).isDismissable();
    }

    public static boolean isMultiLine(Object object) {
        return ((AccessibilityNodeInfo)object).isMultiLine();
    }

    public static Object obtainCollectionInfo(int n2, int n3, boolean bl) {
        return AccessibilityNodeInfo.CollectionInfo.obtain((int)n2, (int)n3, (boolean)bl);
    }

    public static Object obtainCollectionInfo(int n2, int n3, boolean bl, int n4) {
        return AccessibilityNodeInfo.CollectionInfo.obtain((int)n2, (int)n3, (boolean)bl);
    }

    public static Object obtainCollectionItemInfo(int n2, int n3, int n4, int n5, boolean bl) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain((int)n2, (int)n3, (int)n4, (int)n5, (boolean)bl);
    }

    public static Object obtainRangeInfo(int n2, float f2, float f3, float f4) {
        return AccessibilityNodeInfo.RangeInfo.obtain((int)n2, (float)f2, (float)f3, (float)f4);
    }

    public static void setCanOpenPopup(Object object, boolean bl) {
        ((AccessibilityNodeInfo)object).setCanOpenPopup(bl);
    }

    public static void setCollectionInfo(Object object, Object object2) {
        ((AccessibilityNodeInfo)object).setCollectionInfo((AccessibilityNodeInfo.CollectionInfo)object2);
    }

    public static void setCollectionItemInfo(Object object, Object object2) {
        ((AccessibilityNodeInfo)object).setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo)object2);
    }

    public static void setContentInvalid(Object object, boolean bl) {
        ((AccessibilityNodeInfo)object).setContentInvalid(bl);
    }

    public static void setDismissable(Object object, boolean bl) {
        ((AccessibilityNodeInfo)object).setDismissable(bl);
    }

    public static void setInputType(Object object, int n2) {
        ((AccessibilityNodeInfo)object).setInputType(n2);
    }

    static void setLiveRegion(Object object, int n2) {
        ((AccessibilityNodeInfo)object).setLiveRegion(n2);
    }

    public static void setMultiLine(Object object, boolean bl) {
        ((AccessibilityNodeInfo)object).setMultiLine(bl);
    }

    public static void setRangeInfo(Object object, Object object2) {
        ((AccessibilityNodeInfo)object).setRangeInfo((AccessibilityNodeInfo.RangeInfo)object2);
    }

    public static void setRoleDescription(Object object, CharSequence charSequence) {
        AccessibilityNodeInfoCompatKitKat.getExtras(object).putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
    }

    private static void setTrait(Object object, long l2) {
        object = AccessibilityNodeInfoCompatKitKat.getExtras(object);
        object.putLong("android.view.accessibility.AccessibilityNodeInfo.traits", object.getLong("android.view.accessibility.AccessibilityNodeInfo.traits", 0) | l2);
    }

    static class CollectionInfo {
        CollectionInfo() {
        }

        static int getColumnCount(Object object) {
            return ((AccessibilityNodeInfo.CollectionInfo)object).getColumnCount();
        }

        static int getRowCount(Object object) {
            return ((AccessibilityNodeInfo.CollectionInfo)object).getRowCount();
        }

        static boolean isHierarchical(Object object) {
            return ((AccessibilityNodeInfo.CollectionInfo)object).isHierarchical();
        }
    }

    static class CollectionItemInfo {
        CollectionItemInfo() {
        }

        static int getColumnIndex(Object object) {
            return ((AccessibilityNodeInfo.CollectionItemInfo)object).getColumnIndex();
        }

        static int getColumnSpan(Object object) {
            return ((AccessibilityNodeInfo.CollectionItemInfo)object).getColumnSpan();
        }

        static int getRowIndex(Object object) {
            return ((AccessibilityNodeInfo.CollectionItemInfo)object).getRowIndex();
        }

        static int getRowSpan(Object object) {
            return ((AccessibilityNodeInfo.CollectionItemInfo)object).getRowSpan();
        }

        static boolean isHeading(Object object) {
            return ((AccessibilityNodeInfo.CollectionItemInfo)object).isHeading();
        }
    }

    static class RangeInfo {
        RangeInfo() {
        }

        static float getCurrent(Object object) {
            return ((AccessibilityNodeInfo.RangeInfo)object).getCurrent();
        }

        static float getMax(Object object) {
            return ((AccessibilityNodeInfo.RangeInfo)object).getMax();
        }

        static float getMin(Object object) {
            return ((AccessibilityNodeInfo.RangeInfo)object).getMin();
        }

        static int getType(Object object) {
            return ((AccessibilityNodeInfo.RangeInfo)object).getType();
        }
    }

}

