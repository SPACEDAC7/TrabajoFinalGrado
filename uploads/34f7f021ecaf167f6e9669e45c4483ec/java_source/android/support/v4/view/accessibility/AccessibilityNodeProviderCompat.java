/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 */
package android.support.v4.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompatKitKat;
import java.util.ArrayList;
import java.util.List;

public class AccessibilityNodeProviderCompat {
    public static final int HOST_VIEW_ID = -1;
    private static final AccessibilityNodeProviderImpl IMPL = Build.VERSION.SDK_INT >= 19 ? new AccessibilityNodeProviderKitKatImpl() : (Build.VERSION.SDK_INT >= 16 ? new AccessibilityNodeProviderJellyBeanImpl() : new AccessibilityNodeProviderStubImpl());
    private final Object mProvider;

    public AccessibilityNodeProviderCompat() {
        this.mProvider = IMPL.newAccessibilityNodeProviderBridge(this);
    }

    public AccessibilityNodeProviderCompat(Object object) {
        this.mProvider = object;
    }

    @Nullable
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int n2) {
        return null;
    }

    @Nullable
    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String string2, int n2) {
        return null;
    }

    @Nullable
    public AccessibilityNodeInfoCompat findFocus(int n2) {
        return null;
    }

    public Object getProvider() {
        return this.mProvider;
    }

    public boolean performAction(int n2, int n3, Bundle bundle) {
        return false;
    }

    static interface AccessibilityNodeProviderImpl {
        public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat var1);
    }

    private static class AccessibilityNodeProviderJellyBeanImpl
    extends AccessibilityNodeProviderStubImpl {
        AccessibilityNodeProviderJellyBeanImpl() {
        }

        @Override
        public Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return AccessibilityNodeProviderCompatJellyBean.newAccessibilityNodeProviderBridge(new AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge(){

                @Override
                public Object createAccessibilityNodeInfo(int n2) {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = accessibilityNodeProviderCompat.createAccessibilityNodeInfo(n2);
                    if (accessibilityNodeInfoCompat == null) {
                        return null;
                    }
                    return accessibilityNodeInfoCompat.getInfo();
                }

                /*
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                @Override
                public List<Object> findAccessibilityNodeInfosByText(String arrayList, int n2) {
                    List<AccessibilityNodeInfoCompat> list = accessibilityNodeProviderCompat.findAccessibilityNodeInfosByText((String)((Object)arrayList), n2);
                    if (list == null) {
                        return null;
                    }
                    ArrayList<Object> arrayList2 = new ArrayList<Object>();
                    int n3 = list.size();
                    n2 = 0;
                    do {
                        arrayList = arrayList2;
                        if (n2 >= n3) return arrayList;
                        arrayList2.add(list.get(n2).getInfo());
                        ++n2;
                    } while (true);
                }

                @Override
                public boolean performAction(int n2, int n3, Bundle bundle) {
                    return accessibilityNodeProviderCompat.performAction(n2, n3, bundle);
                }
            });
        }

    }

    private static class AccessibilityNodeProviderKitKatImpl
    extends AccessibilityNodeProviderStubImpl {
        AccessibilityNodeProviderKitKatImpl() {
        }

        @Override
        public Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return AccessibilityNodeProviderCompatKitKat.newAccessibilityNodeProviderBridge(new AccessibilityNodeProviderCompatKitKat.AccessibilityNodeInfoBridge(){

                @Override
                public Object createAccessibilityNodeInfo(int n2) {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = accessibilityNodeProviderCompat.createAccessibilityNodeInfo(n2);
                    if (accessibilityNodeInfoCompat == null) {
                        return null;
                    }
                    return accessibilityNodeInfoCompat.getInfo();
                }

                /*
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                @Override
                public List<Object> findAccessibilityNodeInfosByText(String arrayList, int n2) {
                    List<AccessibilityNodeInfoCompat> list = accessibilityNodeProviderCompat.findAccessibilityNodeInfosByText((String)((Object)arrayList), n2);
                    if (list == null) {
                        return null;
                    }
                    ArrayList<Object> arrayList2 = new ArrayList<Object>();
                    int n3 = list.size();
                    n2 = 0;
                    do {
                        arrayList = arrayList2;
                        if (n2 >= n3) return arrayList;
                        arrayList2.add(list.get(n2).getInfo());
                        ++n2;
                    } while (true);
                }

                @Override
                public Object findFocus(int n2) {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = accessibilityNodeProviderCompat.findFocus(n2);
                    if (accessibilityNodeInfoCompat == null) {
                        return null;
                    }
                    return accessibilityNodeInfoCompat.getInfo();
                }

                @Override
                public boolean performAction(int n2, int n3, Bundle bundle) {
                    return accessibilityNodeProviderCompat.performAction(n2, n3, bundle);
                }
            });
        }

    }

    static class AccessibilityNodeProviderStubImpl
    implements AccessibilityNodeProviderImpl {
        AccessibilityNodeProviderStubImpl() {
        }

        @Override
        public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return null;
        }
    }

}

