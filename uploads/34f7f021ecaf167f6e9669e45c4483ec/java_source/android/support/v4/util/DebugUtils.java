/*
 * Decompiled with CFR 0_115.
 */
package android.support.v4.util;

import android.support.annotation.RestrictTo;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class DebugUtils {
    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void buildShortClassTag(Object var0, StringBuilder var1_1) {
        if (var0 == null) {
            var1_1.append("null");
            return;
        }
        var3_2 = var0.getClass().getSimpleName();
        if (var3_2 == null) ** GOTO lbl-1000
        var2_3 = var3_2;
        if (var3_2.length() <= 0) lbl-1000: // 2 sources:
        {
            var3_2 = var0.getClass().getName();
            var4_4 = var3_2.lastIndexOf(46);
            var2_3 = var3_2;
            if (var4_4 > 0) {
                var2_3 = var3_2.substring(var4_4 + 1);
            }
        }
        var1_1.append(var2_3);
        var1_1.append('{');
        var1_1.append(Integer.toHexString(System.identityHashCode(var0)));
    }
}

