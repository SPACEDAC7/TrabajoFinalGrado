/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 */
package com.comscore.utils;

import android.os.Build;
import java.io.File;

public class RootDetector {
    private static boolean a() {
        String string2 = Build.TAGS;
        if (string2 != null && string2.contains("test-keys")) {
            return true;
        }
        return false;
    }

    private static boolean b() {
        try {
            boolean bl = new File("/system/app/Superuser.apk").exists();
            if (bl) {
                return true;
            }
        }
        catch (Exception var0_1) {
            // empty catch block
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isDeviceRooted() {
        if (RootDetector.a() || RootDetector.b()) {
            return true;
        }
        return false;
    }
}

