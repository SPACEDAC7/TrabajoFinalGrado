/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.util;

import android.support.annotation.Nullable;
import android.text.TextUtils;

public class StringUtils {
    public static boolean isEmpty(@Nullable CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return true;
        }
        return false;
    }

    public static String stripBeginningSlash(String string2) {
        String string3 = string2;
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            string3 = string2;
            if (string2.substring(0, 1).equals("/")) {
                string3 = string2.substring(1);
            }
        }
        return string3;
    }
}

