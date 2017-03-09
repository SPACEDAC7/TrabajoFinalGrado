/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.TextUtils
 */
package com.buzzfeed.android.vcr.util;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import com.buzzfeed.toolkit.util.LogUtil;

public class DevicePlaybackInfo {
    private static final String AFFECTED_MANUFACTURER = "SAMSUNG";
    private static final String[] AFFECTED_VBR_CHIPSETS;
    private static final String[] AFFECTED_VERSIONS;
    public static final boolean REQUIRES_ADAPTIVE_WORKAROUND;
    private static final String TAG;

    static {
        TAG = LogUtil.makeLogTag(DevicePlaybackInfo.class);
        AFFECTED_VERSIONS = new String[]{"4.4.2", "4.4.4"};
        AFFECTED_VBR_CHIPSETS = new String[]{"APQ8064", "MSM8960", "MSM8930", "MSM8260A"};
        REQUIRES_ADAPTIVE_WORKAROUND = DevicePlaybackInfo.shouldUseAdaptiveWorkaround();
    }

    @VisibleForTesting
    static boolean isAffectedChipset(@NonNull String string2) {
        for (String string3 : AFFECTED_VBR_CHIPSETS) {
            if (!string3.equals(string2)) continue;
            LogUtil.d(TAG, "This device requires an adaptive playback work-around. (QUALCOMM CHIPSET [" + string3 + "])");
            return true;
        }
        LogUtil.d(TAG, "This device does not require an adaptive playback work-around.");
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @VisibleForTesting
    static boolean isAffectedManufacturerAndVersion(@NonNull String arrstring, @NonNull String string2) {
        boolean bl = !TextUtils.isEmpty((CharSequence)Build.MANUFACTURER) && TextUtils.equals((CharSequence)arrstring.toUpperCase(), (CharSequence)"SAMSUNG");
        arrstring = AFFECTED_VERSIONS;
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            if (arrstring[n3].equals(string2) && bl) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    @VisibleForTesting
    static boolean shouldUseAdaptiveWorkaround() {
        if (TextUtils.isEmpty((CharSequence)Build.BOARD) || !DevicePlaybackInfo.isAffectedManufacturerAndVersion(Build.MANUFACTURER, Build.VERSION.RELEASE)) {
            LogUtil.d(TAG, "This device has no known adaptive playback issues.");
            return false;
        }
        return DevicePlaybackInfo.isAffectedChipset(Build.BOARD);
    }
}

