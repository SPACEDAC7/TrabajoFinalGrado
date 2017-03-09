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
        var24_1 = System.currentTimeMillis();
        var26_2 = var0.headers;
        var10_3 = 0;
        var16_4 = 0;
        var18_5 = 0;
        var20_6 = 0;
        var22_7 = 0;
        var8_8 = 0;
        var6_9 = 0;
        var3_10 = false;
        var4_11 = false;
        var1_12 = false;
        var27_13 = var26_2.get("Date");
        if (var27_13 != null) {
            var10_3 = HttpHeaderParser.parseDateAsEpoch((String)var27_13);
        }
        var27_13 = var26_2.get("Cache-Control");
        var14_14 = var8_8;
        var12_15 = var6_9;
        if (var27_13 == null) ** GOTO lbl51
        var5_16 = true;
        var27_13 = var27_13.split(",");
        var2_17 = 0;
        do {
            var3_10 = var5_16;
            var4_11 = var1_12;
            var14_14 = var8_8;
            var12_15 = var6_9;
            if (var2_17 >= var27_13.length) ** GOTO lbl51
            var28_18 = var27_13[var2_17].trim();
            if (var28_18.equals("no-cache") != false) return null;
            if (var28_18.equals("no-store")) {
                return null;
            }
            if (var28_18.startsWith("max-age=")) {
                var12_15 = Long.parseLong(var28_18.substring(8));
                var14_14 = var6_9;
            }
            if (var28_18.startsWith("stale-while-revalidate=")) {
                var14_14 = Long.parseLong(var28_18.substring(23));
                var12_15 = var8_8;
            }
            if (var28_18.equals("must-revalidate")) ** GOTO lbl-1000
            var12_15 = var8_8;
            var14_14 = var6_9;
            if (var28_18.equals("proxy-revalidate")) lbl-1000: // 2 sources:
            {
                var1_12 = true;
                var12_15 = var8_8;
                var14_14 = var6_9;
            }
            ** GOTO lbl83
lbl51: // 2 sources:
            if ((var27_13 = var26_2.get("Expires")) != null) {
                var18_5 = HttpHeaderParser.parseDateAsEpoch((String)var27_13);
            }
            if ((var27_13 = var26_2.get("Last-Modified")) != null) {
                var16_4 = HttpHeaderParser.parseDateAsEpoch((String)var27_13);
            }
            var27_13 = var26_2.get("ETag");
            if (var3_10) {
                var8_8 = var24_1 + 1000 * var14_14;
                var6_9 = var4_11 ? var8_8 : var8_8 + 1000 * var12_15;
            } else {
                var6_9 = var22_7;
                var8_8 = var20_6;
                if (var10_3 > 0) {
                    var6_9 = var22_7;
                    var8_8 = var20_6;
                    if (var18_5 >= var10_3) {
                        var6_9 = var8_8 = var24_1 + (var18_5 - var10_3);
                    }
                }
            }
            var28_18 = new Cache.Entry();
            var28_18.data = var0.data;
            var28_18.etag = var27_13;
            var28_18.softTtl = var8_8;
            var28_18.ttl = var6_9;
            var28_18.serverDate = var10_3;
            var28_18.lastModified = var16_4;
            var28_18.responseHeaders = var26_2;
            return var28_18;
            catch (Exception var28_19) {
                var12_15 = var8_8;
                var14_14 = var6_9;
            }
            ** GOTO lbl83
            catch (Exception var28_20) {
                var12_15 = var8_8;
                var14_14 = var6_9;
            }
lbl83: // 5 sources:
            ++var2_17;
            var8_8 = var12_15;
            var6_9 = var14_14;
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

