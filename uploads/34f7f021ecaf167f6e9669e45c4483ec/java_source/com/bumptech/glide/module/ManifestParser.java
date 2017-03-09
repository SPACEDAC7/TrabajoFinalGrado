/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.os.Bundle
 */
package com.bumptech.glide.module;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.bumptech.glide.module.GlideModule;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class ManifestParser {
    private static final String GLIDE_MODULE_VALUE = "GlideModule";
    private final Context context;

    public ManifestParser(Context context) {
        this.context = context;
    }

    private static GlideModule parseModule(String object) {
        Object t2;
        try {
            object = Class.forName((String)object);
        }
        catch (ClassNotFoundException var0_1) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", var0_1);
        }
        try {
            t2 = object.newInstance();
        }
        catch (InstantiationException var1_3) {
            throw new RuntimeException("Unable to instantiate GlideModule implementation for " + object, var1_3);
        }
        catch (IllegalAccessException var1_4) {
            throw new RuntimeException("Unable to instantiate GlideModule implementation for " + object, var1_4);
        }
        if (!(t2 instanceof GlideModule)) {
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + t2);
        }
        return (GlideModule)t2;
    }

    public List<GlideModule> parse() {
        ArrayList<GlideModule> arrayList = new ArrayList<GlideModule>();
        try {
            ApplicationInfo applicationInfo = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                for (String string2 : applicationInfo.metaData.keySet()) {
                    if (!"GlideModule".equals(applicationInfo.metaData.get(string2))) continue;
                    arrayList.add(ManifestParser.parseModule(string2));
                }
            }
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", (Throwable)var1_2);
        }
        return arrayList;
    }
}

