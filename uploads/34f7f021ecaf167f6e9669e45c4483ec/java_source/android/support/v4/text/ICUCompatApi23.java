/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package android.support.v4.text;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

class ICUCompatApi23 {
    private static final String TAG = "ICUCompatIcs";
    private static Method sAddLikelySubtagsMethod;

    static {
        try {
            sAddLikelySubtagsMethod = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            return;
        }
        catch (Exception var0) {
            throw new IllegalStateException(var0);
        }
    }

    ICUCompatApi23() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String maximizeAndGetScript(Locale locale) {
        try {
            return ((Locale)sAddLikelySubtagsMethod.invoke(null, locale)).getScript();
        }
        catch (InvocationTargetException var1_2) {
            Log.w((String)"ICUCompatIcs", (Throwable)var1_2);
            do {
                return locale.getScript();
                break;
            } while (true);
        }
        catch (IllegalAccessException var1_3) {
            Log.w((String)"ICUCompatIcs", (Throwable)var1_3);
            return locale.getScript();
        }
    }
}

