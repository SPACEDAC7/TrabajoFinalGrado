/*
 * Decompiled with CFR 0_115.
 */
package android.support.v4.util;

import android.support.annotation.RestrictTo;
import java.io.PrintWriter;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public final class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static char[] sFormatStr;
    private static final Object sFormatSync;

    static {
        sFormatSync = new Object();
        sFormatStr = new char[24];
    }

    private TimeUtils() {
    }

    private static int accumField(int n2, int n3, boolean bl, int n4) {
        if (n2 > 99 || bl && n4 >= 3) {
            return n3 + 3;
        }
        if (n2 > 9 || bl && n4 >= 2) {
            return n3 + 2;
        }
        if (bl || n2 > 0) {
            return n3 + 1;
        }
        return 0;
    }

    public static void formatDuration(long l2, long l3, PrintWriter printWriter) {
        if (l2 == 0) {
            printWriter.print("--");
            return;
        }
        TimeUtils.formatDuration(l2 - l3, printWriter, 0);
    }

    public static void formatDuration(long l2, PrintWriter printWriter) {
        TimeUtils.formatDuration(l2, printWriter, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void formatDuration(long l2, PrintWriter printWriter, int n2) {
        Object object = sFormatSync;
        synchronized (object) {
            n2 = TimeUtils.formatDurationLocked(l2, n2);
            printWriter.print(new String(sFormatStr, 0, n2));
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void formatDuration(long l2, StringBuilder stringBuilder) {
        Object object = sFormatSync;
        synchronized (object) {
            int n2 = TimeUtils.formatDurationLocked(l2, 0);
            stringBuilder.append(sFormatStr, 0, n2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int formatDurationLocked(long l2, int n2) {
        boolean bl;
        int n3;
        if (sFormatStr.length < n2) {
            sFormatStr = new char[n2];
        }
        char[] arrc = sFormatStr;
        if (l2 == 0) {
            do {
                if (n2 - 1 >= 0) {
                    arrc[0] = 48;
                    return 1;
                }
                arrc[0] = 32;
            } while (true);
        }
        if (l2 > 0) {
            n3 = 43;
        } else {
            n3 = 45;
            l2 = - l2;
        }
        int n4 = (int)(l2 % 1000);
        int n5 = (int)Math.floor(l2 / 1000);
        int n6 = 0;
        int n7 = 0;
        int n8 = 0;
        int n9 = n5;
        if (n5 > 86400) {
            n6 = n5 / 86400;
            n9 = n5 - 86400 * n6;
        }
        n5 = n9;
        if (n9 > 3600) {
            n7 = n9 / 3600;
            n5 = n9 - n7 * 3600;
        }
        int n10 = n5;
        if (n5 > 60) {
            n8 = n5 / 60;
            n10 = n5 - n8 * 60;
        }
        int n11 = 0;
        int n12 = 0;
        if (n2 != 0) {
            n9 = TimeUtils.accumField(n6, 1, false, 0);
            bl = n9 > 0;
            bl = (n9 += TimeUtils.accumField(n7, 1, bl, 2)) > 0;
            bl = (n9 += TimeUtils.accumField(n8, 1, bl, 2)) > 0;
            n5 = n9 + TimeUtils.accumField(n10, 1, bl, 2);
            n9 = n5 > 0 ? 3 : 0;
            n5 += TimeUtils.accumField(n4, 2, true, n9) + 1;
            n9 = n12;
            do {
                n11 = n9++;
                if (n5 >= n2) break;
                arrc[n9] = 32;
                ++n5;
            } while (true);
        }
        arrc[n11] = n3;
        n5 = n11 + 1;
        n2 = n2 != 0 ? 1 : 0;
        bl = (n6 = TimeUtils.printField(arrc, n6, 'd', n5, false, 0)) != n5;
        n9 = n2 != 0 ? 2 : 0;
        bl = (n6 = TimeUtils.printField(arrc, n7, 'h', n6, bl, n9)) != n5;
        n9 = n2 != 0 ? 2 : 0;
        bl = (n6 = TimeUtils.printField(arrc, n8, 'm', n6, bl, n9)) != n5;
        n9 = n2 != 0 ? 2 : 0;
        n9 = TimeUtils.printField(arrc, n10, 's', n6, bl, n9);
        n2 = n2 != 0 && n9 != n5 ? 3 : 0;
        n2 = TimeUtils.printField(arrc, n4, 'm', n9, true, n2);
        arrc[n2] = 115;
        return n2 + 1;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int printField(char[] var0, int var1_1, char var2_2, int var3_3, boolean var4_4, int var5_5) {
        if (!var4_4) {
            var6_6 = var3_3;
            if (var1_1 <= 0) return var6_6;
        }
        if (var4_4 && var5_5 >= 3) ** GOTO lbl-1000
        var6_6 = var1_1;
        var7_7 = var3_3;
        if (var1_1 > 99) lbl-1000: // 2 sources:
        {
            var6_6 = var1_1 / 100;
            var0[var3_3] = (char)(var6_6 + 48);
            var7_7 = var3_3 + 1;
            var6_6 = var1_1 - var6_6 * 100;
        }
        if (var4_4 && var5_5 >= 2 || var6_6 > 9) ** GOTO lbl-1000
        var5_5 = var6_6;
        var1_1 = var7_7;
        if (var3_3 != var7_7) lbl-1000: // 2 sources:
        {
            var3_3 = var6_6 / 10;
            var0[var7_7] = (char)(var3_3 + 48);
            var1_1 = var7_7 + 1;
            var5_5 = var6_6 - var3_3 * 10;
        }
        var0[var1_1] = (char)(var5_5 + 48);
        var0[++var1_1] = var2_2;
        return var1_1 + 1;
    }
}

