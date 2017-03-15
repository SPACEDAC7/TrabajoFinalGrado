/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.impl.cookie.DateParseException
 *  org.apache.http.impl.cookie.DateUtils
 */
package com.android.volley.toolbox;

import com.android.volley.Cache;
import com.android.volley.NetworkResponse;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class HttpHeaderParser {
    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static Cache.Entry parseCacheHeaders(NetworkResponse var0) {
        var27_1 = System.currentTimeMillis();
        var1_2 = var0.headers;
        var13_3 = 0;
        var19_4 = 0;
        var21_5 = 0;
        var23_6 = 0;
        var25_7 = 0;
        var11_8 = 0;
        var9_9 = 0;
        var6_10 = false;
        var7_11 = false;
        var4_12 = false;
        var2_13 = var1_2.get("Date");
        if (var2_13 != null) {
            var13_3 = HttpHeaderParser.parseDateAsEpoch((String)var2_13);
        }
        var2_13 = var1_2.get("Cache-Control");
        var17_14 = var11_8;
        var15_15 = var9_9;
        if (var2_13 == null) ** GOTO lbl51
        var8_16 = true;
        var2_13 = var2_13.split(",");
        var5_17 = 0;
        do {
            var6_10 = var8_16;
            var7_11 = var4_12;
            var17_14 = var11_8;
            var15_15 = var9_9;
            if (var5_17 >= var2_13.length) ** GOTO lbl51
            var3_18 = var2_13[var5_17].trim();
            if (var3_18.equals("no-cache") != false) return null;
            if (var3_18.equals("no-store")) {
                return null;
            }
            if (var3_18.startsWith("max-age=")) {
                var15_15 = Long.parseLong(var3_18.substring(8));
                var17_14 = var9_9;
            }
            if (var3_18.startsWith("stale-while-revalidate=")) {
                var17_14 = Long.parseLong(var3_18.substring(23));
                var15_15 = var11_8;
            }
            if (var3_18.equals("must-revalidate")) ** GOTO lbl-1000
            var15_15 = var11_8;
            var17_14 = var9_9;
            if (var3_18.equals("proxy-revalidate")) lbl-1000: // 2 sources:
            {
                var4_12 = true;
                var15_15 = var11_8;
                var17_14 = var9_9;
            }
            ** GOTO lbl83
lbl51: // 2 sources:
            if ((var2_13 = var1_2.get("Expires")) != null) {
                var21_5 = HttpHeaderParser.parseDateAsEpoch((String)var2_13);
            }
            if ((var2_13 = var1_2.get("Last-Modified")) != null) {
                var19_4 = HttpHeaderParser.parseDateAsEpoch((String)var2_13);
            }
            var2_13 = var1_2.get("ETag");
            if (var6_10) {
                var11_8 = var27_1 + 1000 * var17_14;
                var9_9 = var7_11 ? var11_8 : var11_8 + 1000 * var15_15;
            } else {
                var9_9 = var25_7;
                var11_8 = var23_6;
                if (var13_3 > 0) {
                    var9_9 = var25_7;
                    var11_8 = var23_6;
                    if (var21_5 >= var13_3) {
                        var9_9 = var11_8 = var27_1 + (var21_5 - var13_3);
                    }
                }
            }
            var3_18 = new Cache.Entry();
            var3_18.data = var0.data;
            var3_18.etag = var2_13;
            var3_18.softTtl = var11_8;
            var3_18.ttl = var9_9;
            var3_18.serverDate = var13_3;
            var3_18.lastModified = var19_4;
            var3_18.responseHeaders = var1_2;
            return var3_18;
            catch (Exception var3_19) {
                var15_15 = var11_8;
                var17_14 = var9_9;
            }
            ** GOTO lbl83
            catch (Exception var3_20) {
                var15_15 = var11_8;
                var17_14 = var9_9;
            }
lbl83: // 5 sources:
            ++var5_17;
            var11_8 = var15_15;
            var9_9 = var17_14;
        } while (true);
    }

    public static String parseCharset(Map<String, String> map) {
        return HttpHeaderParser.parseCharset(map, "ISO-8859-1");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String parseCharset(Map<String, String> arrstring, String string2) {
        String[] arrstring2 = (String[])arrstring.get("Content-Type");
        arrstring = string2;
        if (arrstring2 == null) return arrstring;
        arrstring2 = arrstring2.split(";");
        int n2 = 1;
        do {
            arrstring = string2;
            if (n2 >= arrstring2.length) return arrstring;
            arrstring = arrstring2[n2].trim().split("=");
            if (arrstring.length == 2 && arrstring[0].equals("charset")) {
                return arrstring[1];
            }
            ++n2;
        } while (true);
    }

    public static long parseDateAsEpoch(String string2) {
        try {
            long l2 = DateUtils.parseDate((String)string2).getTime();
            return l2;
        }
        catch (DateParseException var0_1) {
            return 0;
        }
    }
}

