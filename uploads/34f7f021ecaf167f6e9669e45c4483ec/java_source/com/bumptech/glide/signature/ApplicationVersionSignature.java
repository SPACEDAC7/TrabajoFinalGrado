/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 */
package com.bumptech.glide.signature;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.signature.StringSignature;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

public final class ApplicationVersionSignature {
    private static final ConcurrentHashMap<String, Key> PACKAGE_NAME_TO_KEY = new ConcurrentHashMap();

    private ApplicationVersionSignature() {
    }

    public static Key obtain(Context object) {
        Key key;
        String string2 = object.getPackageName();
        Object object2 = key = PACKAGE_NAME_TO_KEY.get(string2);
        if (key == null) {
            object = ApplicationVersionSignature.obtainVersionSignature((Context)object);
            object2 = key = (Key)PACKAGE_NAME_TO_KEY.putIfAbsent(string2, (Key)object);
            if (key == null) {
                object2 = object;
            }
        }
        return object2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static Key obtainVersionSignature(Context object) {
        Object var1_2 = null;
        try {
            object = object.getPackageManager().getPackageInfo(object.getPackageName(), 0);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            var0_1.printStackTrace();
            object = var1_2;
        }
        if (object != null) {
            object = String.valueOf(object.versionCode);
            return new StringSignature((String)object);
        }
        object = UUID.randomUUID().toString();
        return new StringSignature((String)object);
    }

    static void reset() {
        PACKAGE_NAME_TO_KEY.clear();
    }
}

