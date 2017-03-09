/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.accessibilityservice.AccessibilityServiceInfo
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.accessibility.AccessibilityManager
 */
package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.support.v4.view.accessibility.AccessibilityManagerCompatIcs;
import android.support.v4.view.accessibility.AccessibilityManagerCompatKitKat;
import android.view.accessibility.AccessibilityManager;
import java.util.Collections;
import java.util.List;

public final class AccessibilityManagerCompat {
    private static final AccessibilityManagerVersionImpl IMPL = Build.VERSION.SDK_INT >= 19 ? new AccessibilityManagerKitKatImpl() : (Build.VERSION.SDK_INT >= 14 ? new AccessibilityManagerIcsImpl() : new AccessibilityManagerStubImpl());

    private AccessibilityManagerCompat() {
    }

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        return IMPL.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListener);
    }

    public static boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return IMPL.addTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
    }

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int n2) {
        return IMPL.getEnabledAccessibilityServiceList(accessibilityManager, n2);
    }

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return IMPL.getInstalledAccessibilityServiceList(accessibilityManager);
    }

    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return IMPL.isTouchExplorationEnabled(accessibilityManager);
    }

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        return IMPL.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListener);
    }

    public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return IMPL.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
    }

    static class AccessibilityManagerIcsImpl
    extends AccessibilityManagerStubImpl {
        AccessibilityManagerIcsImpl() {
        }

        @Override
        public boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
            return AccessibilityManagerCompatIcs.addAccessibilityStateChangeListener(accessibilityManager, this.newAccessibilityStateChangeListener(accessibilityStateChangeListener));
        }

        @Override
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int n2) {
            return AccessibilityManagerCompatIcs.getEnabledAccessibilityServiceList(accessibilityManager, n2);
        }

        @Override
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.getInstalledAccessibilityServiceList(accessibilityManager);
        }

        @Override
        public boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.isTouchExplorationEnabled(accessibilityManager);
        }

        @Override
        public AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerWrapper newAccessibilityStateChangeListener(final AccessibilityStateChangeListener accessibilityStateChangeListener) {
            return new AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerWrapper(accessibilityStateChangeListener, new AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge(){

                @Override
                public void onAccessibilityStateChanged(boolean bl) {
                    accessibilityStateChangeListener.onAccessibilityStateChanged(bl);
                }
            });
        }

        @Override
        public boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
            return AccessibilityManagerCompatIcs.removeAccessibilityStateChangeListener(accessibilityManager, this.newAccessibilityStateChangeListener(accessibilityStateChangeListener));
        }

    }

    static class AccessibilityManagerKitKatImpl
    extends AccessibilityManagerIcsImpl {
        AccessibilityManagerKitKatImpl() {
        }

        @Override
        public boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return AccessibilityManagerCompatKitKat.addTouchExplorationStateChangeListener(accessibilityManager, this.newTouchExplorationStateChangeListener(touchExplorationStateChangeListener));
        }

        @Override
        public AccessibilityManagerCompatKitKat.TouchExplorationStateChangeListenerWrapper newTouchExplorationStateChangeListener(final TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return new AccessibilityManagerCompatKitKat.TouchExplorationStateChangeListenerWrapper(touchExplorationStateChangeListener, new AccessibilityManagerCompatKitKat.TouchExplorationStateChangeListenerBridge(){

                @Override
                public void onTouchExplorationStateChanged(boolean bl) {
                    touchExplorationStateChangeListener.onTouchExplorationStateChanged(bl);
                }
            });
        }

        @Override
        public boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return AccessibilityManagerCompatKitKat.removeTouchExplorationStateChangeListener(accessibilityManager, this.newTouchExplorationStateChangeListener(touchExplorationStateChangeListener));
        }

    }

    static class AccessibilityManagerStubImpl
    implements AccessibilityManagerVersionImpl {
        AccessibilityManagerStubImpl() {
        }

        @Override
        public boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
            return false;
        }

        @Override
        public boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return false;
        }

        @Override
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int n2) {
            return Collections.emptyList();
        }

        @Override
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
            return Collections.emptyList();
        }

        @Override
        public boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
            return false;
        }

        @Override
        public AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerWrapper newAccessibilityStateChangeListener(AccessibilityStateChangeListener accessibilityStateChangeListener) {
            return null;
        }

        @Override
        public AccessibilityManagerCompatKitKat.TouchExplorationStateChangeListenerWrapper newTouchExplorationStateChangeListener(TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return null;
        }

        @Override
        public boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
            return false;
        }

        @Override
        public boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return false;
        }
    }

    static interface AccessibilityManagerVersionImpl {
        public boolean addAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListener var2);

        public boolean addTouchExplorationStateChangeListener(AccessibilityManager var1, TouchExplorationStateChangeListener var2);

        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager var1, int var2);

        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager var1);

        public boolean isTouchExplorationEnabled(AccessibilityManager var1);

        public AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerWrapper newAccessibilityStateChangeListener(AccessibilityStateChangeListener var1);

        public AccessibilityManagerCompatKitKat.TouchExplorationStateChangeListenerWrapper newTouchExplorationStateChangeListener(TouchExplorationStateChangeListener var1);

        public boolean removeAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListener var2);

        public boolean removeTouchExplorationStateChangeListener(AccessibilityManager var1, TouchExplorationStateChangeListener var2);
    }

    public static interface AccessibilityStateChangeListener {
        public void onAccessibilityStateChanged(boolean var1);
    }

    @Deprecated
    public static abstract class AccessibilityStateChangeListenerCompat
    implements AccessibilityStateChangeListener {
    }

    public static interface TouchExplorationStateChangeListener {
        public void onTouchExplorationStateChanged(boolean var1);
    }

}

