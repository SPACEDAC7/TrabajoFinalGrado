/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.accessibilityservice.AccessibilityServiceInfo
 *  android.view.accessibility.AccessibilityManager
 *  android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener
 */
package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

class AccessibilityManagerCompatIcs {
    AccessibilityManagerCompatIcs() {
    }

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerWrapper accessibilityStateChangeListenerWrapper) {
        return accessibilityManager.addAccessibilityStateChangeListener((AccessibilityManager.AccessibilityStateChangeListener)accessibilityStateChangeListenerWrapper);
    }

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int n2) {
        return accessibilityManager.getEnabledAccessibilityServiceList(n2);
    }

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerWrapper accessibilityStateChangeListenerWrapper) {
        return accessibilityManager.removeAccessibilityStateChangeListener((AccessibilityManager.AccessibilityStateChangeListener)accessibilityStateChangeListenerWrapper);
    }

    static interface AccessibilityStateChangeListenerBridge {
        public void onAccessibilityStateChanged(boolean var1);
    }

    public static class AccessibilityStateChangeListenerWrapper
    implements AccessibilityManager.AccessibilityStateChangeListener {
        Object mListener;
        AccessibilityStateChangeListenerBridge mListenerBridge;

        public AccessibilityStateChangeListenerWrapper(Object object, AccessibilityStateChangeListenerBridge accessibilityStateChangeListenerBridge) {
            this.mListener = object;
            this.mListenerBridge = accessibilityStateChangeListenerBridge;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            if (this == object) {
                return true;
            }
            if (object == null) return false;
            if (this.getClass() != object.getClass()) {
                return false;
            }
            object = (AccessibilityStateChangeListenerWrapper)object;
            if (this.mListener != null) return this.mListener.equals(object.mListener);
            if (object.mListener == null) return true;
            return false;
        }

        public int hashCode() {
            if (this.mListener == null) {
                return 0;
            }
            return this.mListener.hashCode();
        }

        public void onAccessibilityStateChanged(boolean bl) {
            this.mListenerBridge.onAccessibilityStateChanged(bl);
        }
    }

}

