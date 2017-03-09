/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.ExifInterface
 *  android.text.TextUtils
 */
package com.buzzfeed.android.util;

import android.media.ExifInterface;
import android.text.TextUtils;

public class ExifUtils {
    private ExifUtils() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int getExifRotation(String string2) {
        int n2;
        try {
            string2 = new ExifInterface(string2).getAttribute("Orientation");
            if (TextUtils.isEmpty((CharSequence)string2)) return 0;
            n2 = Integer.parseInt(string2);
        }
        catch (Exception var0_1) {
            return 0;
        }
        switch (n2) {
            default: {
                return 0;
            }
            case 6: {
                return 90;
            }
            case 3: {
                return 180;
            }
            case 8: 
        }
        return 270;
    }
}

