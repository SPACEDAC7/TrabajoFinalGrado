/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

public class Base64Coder {
    private static char[] a;
    private static byte[] b;

    static {
        int n2 = 0;
        a = new char[64];
        int n3 = 65;
        int n4 = 0;
        while (n3 <= 90) {
            Base64Coder.a[n4] = n3;
            n3 = (char)(n3 + 1);
            ++n4;
        }
        n3 = 97;
        while (n3 <= 122) {
            Base64Coder.a[n4] = n3;
            n3 = (char)(n3 + 1);
            ++n4;
        }
        n3 = 48;
        while (n3 <= 57) {
            Base64Coder.a[n4] = n3;
            n3 = (char)(n3 + 1);
            ++n4;
        }
        char[] arrc = a;
        int n5 = n4 + 1;
        arrc[n4] = 43;
        Base64Coder.a[n5] = 47;
        b = new byte[128];
        n4 = 0;
        do {
            if (n4 >= b.length) break;
            Base64Coder.b[n4] = -1;
            ++n4;
        } while (true);
        for (n5 = n2; n5 < 64; ++n5) {
            Base64Coder.b[Base64Coder.a[n5]] = (byte)n5;
        }
    }

    private Base64Coder() {
    }

    public static byte[] decode(String string2) {
        return Base64Coder.decode(string2.toCharArray());
    }

    /*
     * Enabled aggressive block sorting
     */
    public static byte[] decode(char[] arrc) {
        int n2 = 0;
        int n3 = arrc.length;
        if (n3 % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        while (n3 > 0 && arrc[n3 - 1] == '=') {
            --n3;
        }
        int n4 = n3 * 3 / 4;
        byte[] arrby = new byte[n4];
        int n5 = 0;
        while (n2 < n3) {
            int n6;
            int n7 = n2 + 1;
            char c2 = arrc[n2];
            n2 = n7 + 1;
            char c3 = arrc[n7];
            if (n2 < n3) {
                n7 = arrc[n2];
                ++n2;
            } else {
                n7 = 65;
            }
            if (n2 < n3) {
                n6 = arrc[n2];
                ++n2;
            } else {
                n6 = 65;
            }
            if (c2 > '' || c3 > '' || n7 > 127 || n6 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            byte by = b[c2];
            c3 = b[c3];
            c2 = b[n7];
            n6 = b[n6];
            if (by < 0 || c3 < '\u0000' || c2 < '\u0000' || n6 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            n7 = n5 + 1;
            arrby[n5] = (byte)(by << 2 | c3 >>> 4);
            if (n7 < n4) {
                n5 = n7 + 1;
                arrby[n7] = (byte)((c3 & 15) << 4 | c2 >>> 2);
            } else {
                n5 = n7;
            }
            if (n5 >= n4) continue;
            n7 = n5 + 1;
            arrby[n5] = (byte)((c2 & 3) << 6 | n6);
            n5 = n7;
        }
        return arrby;
    }

    public static String decodeString(String string2) {
        return new String(Base64Coder.decode(string2));
    }

    public static char[] encode(byte[] arrby) {
        return Base64Coder.encode(arrby, arrby.length);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static char[] encode(byte[] arrby, int n2) {
        int n3 = (n2 * 4 + 2) / 3;
        char[] arrc = new char[(n2 + 2) / 3 * 4];
        int n4 = 0;
        int n5 = 0;
        while (n5 < n2) {
            int n6;
            int n7;
            int n8 = n5 + 1;
            int n9 = arrby[n5] & 255;
            if (n8 < n2) {
                n5 = arrby[n8] & 255;
                n6 = n8 + 1;
                n8 = n5;
                n5 = n6;
            } else {
                n6 = 0;
                n5 = n8;
                n8 = n6;
            }
            if (n5 < n2) {
                n6 = n5 + 1;
                n7 = arrby[n5] & 255;
                n5 = n6;
                n6 = n7;
            } else {
                n6 = 0;
            }
            n7 = n4 + 1;
            arrc[n4] = a[n9 >>> 2];
            n4 = n7 + 1;
            arrc[n7] = a[(n9 & 3) << 4 | n8 >>> 4];
            int n10 = n4 < n3 ? a[(n8 & 15) << 2 | n6 >>> 6] : 61;
            arrc[n4] = n10;
            n10 = ++n4 < n3 ? a[n6 & 63] : 61;
            arrc[n4] = n10;
            ++n4;
        }
        return arrc;
    }

    public static String encodeString(String string2) {
        return new String(Base64Coder.encode(string2.getBytes()));
    }
}

