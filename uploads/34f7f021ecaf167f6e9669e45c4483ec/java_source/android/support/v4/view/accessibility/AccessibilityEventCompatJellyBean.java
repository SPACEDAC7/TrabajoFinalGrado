/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

class AccessibilityEventCompatJellyBean {
    AccessibilityEventCompatJellyBean() {
    }

    public static int getAction(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getAction();
    }

    public static int getMovementGranularity(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getMovementGranularity();
    }

    public static void setAction(AccessibilityEvent accessibilityEvent, int n2) {
        accessibilityEvent.setAction(n2);
    }

    public static void setMovementGranularity(AccessibilityEvent accessibilityEvent, int n2) {
        accessibilityEvent.setMovementGranularity(n2);
    }
}

