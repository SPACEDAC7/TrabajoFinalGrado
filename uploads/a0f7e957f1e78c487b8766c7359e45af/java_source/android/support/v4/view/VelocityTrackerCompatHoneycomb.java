/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.VelocityTracker
 */
package android.support.v4.view;

import android.view.VelocityTracker;

class VelocityTrackerCompatHoneycomb {
    VelocityTrackerCompatHoneycomb() {
    }

    public static float getXVelocity(VelocityTracker velocityTracker, int n2) {
        return velocityTracker.getXVelocity(n2);
    }

    public static float getYVelocity(VelocityTracker velocityTracker, int n2) {
        return velocityTracker.getYVelocity(n2);
    }
}

