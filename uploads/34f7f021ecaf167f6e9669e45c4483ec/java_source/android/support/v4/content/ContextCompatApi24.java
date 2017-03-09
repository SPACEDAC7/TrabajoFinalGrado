/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package android.support.v4.content;

import android.content.Context;
import java.io.File;

class ContextCompatApi24 {
    ContextCompatApi24() {
    }

    public static Context createDeviceProtectedStorageContext(Context context) {
        return context.createDeviceProtectedStorageContext();
    }

    public static File getDataDir(Context context) {
        return context.getDataDir();
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        return context.isDeviceProtectedStorage();
    }
}

