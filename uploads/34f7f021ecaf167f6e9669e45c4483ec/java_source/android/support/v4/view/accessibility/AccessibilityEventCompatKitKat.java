/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

class AccessibilityEventCompatKitKat {
    AccessibilityEventCompatKitKat() {
    }

    public static int getContentChangeTypes(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }

    public static void setContentChangeTypes(AccessibilityEvent accessibilityEvent, int n2) {
        accessibilityEvent.setContentChangeTypes(n2);
    }
}

