/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Service
 */
package android.support.v4.app;

import android.app.Service;

class ServiceCompatApi24 {
    ServiceCompatApi24() {
    }

    public static void stopForeground(Service service, int n2) {
        service.stopForeground(n2);
    }
}

