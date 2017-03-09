/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import com.comscore.utils.Date;
import com.comscore.utils.Utils;

public class XMLBuilder {
    private static StringBuilder a;
    private static int b;
    private static int c;
    private static final String[] d;
    private static final String[] e;
    private static final long f;

    static {
        b = -1;
        c = -1;
        d = new String[]{"c12", "c1", "ns_ap_an", "ns_ap_pn", "ns_ap_device", "ns_ak"};
        e = new String[]{"c12", "c1", "ns_ap_an", "ns_ap_pn", "ns_ap_device", "ns_ts", "ns_ak"};
        f = (1 << e.length) - 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void a(String string2, String string3) {
        int n2;
        c = -1;
        b = -1;
        int n3 = 0;
        do {
            n2 = n3 = string2.indexOf(string3, n3);
            if (n3 >= 0) {
                n2 = string3.length() + n3;
                if ((n3 == 0 || string2.charAt(n3 - 1) == '&') && n2 < string2.length() && string2.charAt(n2) == '=') {
                    b = n2 + 1;
                    c = string2.indexOf(38, b);
                    if (c != -1) return;
                    {
                        c = string2.length();
                        return;
                    }
                }
                ++n2;
            }
            if (n2 < 0) return;
            n3 = n2;
        } while (n2 < string2.length());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void a(String string2, StringBuilder stringBuilder) {
        long l2 = 0;
        XMLBuilder.a(string2, "ns_ts");
        if (b == -1) return;
        if (c <= b) return;
        stringBuilder.append("<event t=\"").append(string2, b, c).append("\">");
        int n2 = 0;
        int n3 = 0;
        do {
            if (n2 >= string2.length()) {
                stringBuilder.append("</event>");
                return;
            }
            int n4 = string2.indexOf(38, n2);
            if (n4 == -1) {
                n4 = string2.length();
            }
            int n5 = n3;
            long l3 = l2;
            if (n4 > n2) {
                n5 = n3;
                l3 = l2;
                if (string2.indexOf(61, n2) > n2) {
                    boolean bl;
                    if (l2 != f) {
                        for (n5 = 0; n5 < e.length; ++n5) {
                            l3 = 1 << n5;
                            if ((l2 & l3) != 0 || !e[n5].regionMatches(0, string2, n2, e[n5].length())) continue;
                            bl = false;
                            l2 |= l3;
                            break;
                        }
                    } else {
                        bl = true;
                    }
                    n5 = n3;
                    l3 = l2;
                    if (bl) {
                        if (n3 > 0) {
                            a.append('&');
                            stringBuilder.append('&');
                        }
                        a.append(string2, n2, n4);
                        stringBuilder.append(string2, n2, n4);
                        n5 = n3 + 1;
                        l3 = l2;
                    }
                }
            }
            n2 = n4 + 1;
            n3 = n5;
            l2 = l3;
        } while (true);
    }

    private static void a(StringBuilder stringBuilder) {
        String string2 = Utils.md5(a.toString()).toLowerCase();
        int n2 = stringBuilder.indexOf("md5=\"");
        stringBuilder.insert("md5=\"".length() + n2, string2);
    }

    private static void a(StringBuilder stringBuilder, String string2, String string3) {
        long l2 = Date.unixTime();
        stringBuilder.append("<events t=\"").append(String.valueOf(l2)).append("\" ");
        for (int i2 = 0; i2 < d.length; ++i2) {
            XMLBuilder.b(stringBuilder, string2, d[i2]);
        }
        stringBuilder.append("dropped=\"").append(string3).append("\" md5=\"\">");
    }

    private static void a(String[] arrstring, StringBuilder stringBuilder) {
        a = new StringBuilder();
        for (int i2 = 0; i2 < arrstring.length; ++i2) {
            if (!Utils.isNotEmpty(arrstring[i2])) continue;
            XMLBuilder.a(arrstring[i2], stringBuilder);
        }
    }

    private static void b(StringBuilder stringBuilder, String string2, String string3) {
        XMLBuilder.a(string2, string3);
        if (b != -1 && c > b) {
            stringBuilder.append(string3).append("=\"").append(string2, b, c).append("\" ");
        }
    }

    public static String generateXMLRequestString(String[] object, String string2) {
        synchronized (XMLBuilder.class) {
            StringBuilder stringBuilder = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
            XMLBuilder.a(stringBuilder, object[0], string2);
            XMLBuilder.a((String[])object, stringBuilder);
            XMLBuilder.a(stringBuilder);
            stringBuilder.append("</events>");
            object = stringBuilder.toString();
            return object;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getLabelFromEvent(String string2, String string3) {
        synchronized (XMLBuilder.class) {
            XMLBuilder.a(string2, string3);
            if (b == -1) return null;
            if (c <= b) return null;
            return string2.substring(b, c);
        }
    }
}

