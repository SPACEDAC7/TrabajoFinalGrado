/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  io.fabric.sdk.android.services.cache.ValueLoader
 */
package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.cache.ValueLoader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class DeviceTokenLoader
implements ValueLoader<String> {
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    String determineDeviceToken(ZipInputStream zipInputStream) throws IOException {
        Object object;
        while ((object = zipInputStream.getNextEntry()) != null) {
            if (!(object = object.getName()).startsWith("assets/com.crashlytics.android.beta/dirfactor-device-token=")) continue;
            return object.substring("assets/com.crashlytics.android.beta/dirfactor-device-token=".length(), object.length() - 1);
        }
        return "";
    }

    ZipInputStream getZipInputStreamOfAppApkFrom(Context context) throws PackageManager.NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo((String)context.getPackageName(), (int)0).sourceDir));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public String load(Context var1_1) throws Exception {
        var4_10 = System.nanoTime();
        var10_11 = "";
        var8_12 = null;
        var9_13 = null;
        var6_14 = null;
        var7_16 = null;
        try {
            var7_16 = var1_1 = this.getZipInputStreamOfAppApkFrom((Context)var1_1);
            var8_12 = var1_1;
            var9_13 = var1_1;
            var6_14 = var1_1;
            var6_14 = var7_16 = (var11_17 = this.determineDeviceToken((ZipInputStream)var1_1));
            ** if (var1_1 == null) goto lbl21
        }
        catch (PackageManager.NameNotFoundException var1_3) {
            var6_14 = var7_16;
            Fabric.getLogger().e("Beta", "Failed to find this app in the PackageManager", (Throwable)var1_3);
            var6_14 = var10_11;
            ** if (var7_16 == null) goto lbl35
lbl-1000: // 1 sources:
            {
                try {
                    var7_16.close();
                    var6_14 = var10_11;
                }
                catch (IOException var1_4) {
                    Fabric.getLogger().e("Beta", "Failed to close the APK file", (Throwable)var1_4);
                    var6_14 = var10_11;
                }
            }
lbl35: // 2 sources:
            ** GOTO lbl71
            catch (FileNotFoundException var1_5) {
                var6_14 = var8_12;
                Fabric.getLogger().e("Beta", "Failed to find the APK file", (Throwable)var1_5);
                var6_14 = var10_11;
                ** if (var8_12 == null) goto lbl49
lbl-1000: // 1 sources:
                {
                    try {
                        var8_12.close();
                        var6_14 = var10_11;
                    }
                    catch (IOException var1_6) {
                        Fabric.getLogger().e("Beta", "Failed to close the APK file", (Throwable)var1_6);
                        var6_14 = var10_11;
                    }
                }
lbl49: // 2 sources:
                ** GOTO lbl71
                catch (IOException var1_7) {
                    block21 : {
                        var6_14 = var9_13;
                        try {
                            Fabric.getLogger().e("Beta", "Failed to read the APK file", (Throwable)var1_7);
                            var6_14 = var10_11;
                            if (var9_13 == null) break block21;
                        }
                        catch (Throwable var1_9) {
                            if (var6_14 == null) throw var1_9;
                            try {
                                var6_14.close();
                            }
                            catch (IOException var6_15) {
                                Fabric.getLogger().e("Beta", "Failed to close the APK file", (Throwable)var6_15);
                                throw var1_9;
                            }
                            throw var1_9;
                        }
                        try {
                            var9_13.close();
                            var6_14 = var10_11;
                        }
                        catch (IOException var1_8) {
                            Fabric.getLogger().e("Beta", "Failed to close the APK file", (Throwable)var1_8);
                            var6_14 = var10_11;
                        }
                    }
                    var2_18 = (double)(System.nanoTime() - var4_10) / 1000000.0;
                    Fabric.getLogger().d("Beta", "Beta device token load took " + var2_18 + "ms");
                    return var6_14;
                }
            }
        }
lbl-1000: // 1 sources:
        {
            try {
                var1_1.close();
                var6_14 = var7_16;
            }
            catch (IOException var1_2) {
                Fabric.getLogger().e("Beta", "Failed to close the APK file", (Throwable)var1_2);
                var6_14 = var7_16;
            }
        }
lbl21: // 2 sources:
        ** GOTO lbl71
    }
}

