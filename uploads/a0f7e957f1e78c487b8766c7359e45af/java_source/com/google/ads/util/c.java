/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.util;

import java.io.UnsupportedEncodingException;

public class c {
    static final /* synthetic */ boolean a;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = !c.class.desiredAssertionStatus();
        a = bl;
    }

    private c() {
    }

    public static byte[] a(String string2) {
        return c.a(string2.getBytes(), 0);
    }

    public static byte[] a(byte[] arrby, int n2) {
        return c.a(arrby, 0, arrby.length, n2);
    }

    public static byte[] a(byte[] arrby, int n2, int n3, int n4) {
        b b2 = new b(n4, new byte[n3 * 3 / 4]);
        if (!b2.a(arrby, n2, n3, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (b2.b == b2.a.length) {
            return b2.a;
        }
        arrby = new byte[b2.b];
        System.arraycopy(b2.a, 0, arrby, 0, b2.b);
        return arrby;
    }

    public static String b(byte[] object, int n2) {
        try {
            object = new String(c.c((byte[])object, n2), "US-ASCII");
            return object;
        }
        catch (UnsupportedEncodingException var0_1) {
            throw new AssertionError(var0_1);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static byte[] b(byte[] arrby, int n2, int n3, int n4) {
        c c2 = new c(n4, null);
        int n5 = n3 / 3 * 4;
        if (c2.d) {
            n4 = n5;
            if (n3 % 3 > 0) {
                n4 = n5 + 4;
            }
        } else {
            n4 = n5;
            switch (n3 % 3) {
                case 0: {
                    break;
                }
                default: {
                    n4 = n5;
                    break;
                }
                case 1: {
                    n4 = n5 + 2;
                    break;
                }
                case 2: {
                    n4 = n5 + 3;
                }
            }
        }
        n5 = n4;
        if (c2.e) {
            n5 = n4;
            if (n3 > 0) {
                int n6 = (n3 - 1) / 57;
                n5 = c2.f ? 2 : 1;
                n5 = n4 + n5 * (n6 + 1);
            }
        }
        c2.a = new byte[n5];
        c2.a(arrby, n2, n3, true);
        if (!a && c2.b != n5) {
            throw new AssertionError();
        }
        return c2.a;
    }

    public static byte[] c(byte[] arrby, int n2) {
        return c.b(arrby, 0, arrby.length, n2);
    }

    public static abstract class a {
        public byte[] a;
        public int b;
    }

    public static class b
    extends a {
        private static final int[] c = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] d = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int e;
        private int f;
        private final int[] g;

        /*
         * Enabled aggressive block sorting
         */
        public b(int n2, byte[] arrby) {
            this.a = arrby;
            arrby = (n2 & 8) == 0 ? c : d;
            this.g = arrby;
            this.e = 0;
            this.f = 0;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean a(byte[] var1_1, int var2_2, int var3_3, boolean var4_4) {
            if (this.e == 6) {
                return false;
            }
            var11_5 = var3_3 + var2_2;
            var6_6 = this.e;
            var3_3 = this.f;
            var5_7 = 0;
            var12_8 = this.a;
            var13_9 = this.g;
            while (var2_2 < var11_5) {
                var7_10 = var5_7;
                var8_11 = var3_3;
                var10_13 = var2_2;
                if (var6_6 == 0) {
                    var9_12 = var2_2;
                    var2_2 = var3_3;
                    while (var9_12 + 4 <= var11_5) {
                        var2_2 = var3_3 = var13_9[var1_1[var9_12] & 255] << 18 | var13_9[var1_1[var9_12 + 1] & 255] << 12 | var13_9[var1_1[var9_12 + 2] & 255] << 6 | var13_9[var1_1[var9_12 + 3] & 255];
                        if (var3_3 < 0) break;
                        var12_8[var5_7 + 2] = (byte)var3_3;
                        var12_8[var5_7 + 1] = (byte)(var3_3 >> 8);
                        var12_8[var5_7] = (byte)(var3_3 >> 16);
                        var5_7 += 3;
                        var9_12 += 4;
                        var2_2 = var3_3;
                    }
                    var7_10 = var5_7;
                    var8_11 = var2_2;
                    var10_13 = var9_12;
                    if (var9_12 >= var11_5) {
                        var3_3 = var2_2;
                        break;
                    }
                }
                var3_3 = var13_9[var1_1[var10_13] & 255];
                switch (var6_6) {
                    case 0: {
                        if (var3_3 < 0) ** GOTO lbl39
                        var2_2 = var6_6 + 1;
                        var5_7 = var7_10;
                        ** GOTO lbl107
lbl39: // 1 sources:
                        if (var3_3 != -1) {
                            this.e = 6;
                            return false;
                        }
                        ** GOTO lbl98
                    }
                    case 1: {
                        if (var3_3 < 0) ** GOTO lbl49
                        var3_3 = var8_11 << 6 | var3_3;
                        var2_2 = var6_6 + 1;
                        var5_7 = var7_10;
                        ** GOTO lbl107
lbl49: // 1 sources:
                        if (var3_3 != -1) {
                            this.e = 6;
                            return false;
                        }
                        ** GOTO lbl98
                    }
                    case 2: {
                        if (var3_3 < 0) ** GOTO lbl59
                        var3_3 = var8_11 << 6 | var3_3;
                        var2_2 = var6_6 + 1;
                        var5_7 = var7_10;
                        ** GOTO lbl107
lbl59: // 1 sources:
                        if (var3_3 != -2) ** GOTO lbl65
                        var12_8[var7_10] = (byte)(var8_11 >> 4);
                        var2_2 = 4;
                        var5_7 = var7_10 + 1;
                        var3_3 = var8_11;
                        ** GOTO lbl107
lbl65: // 1 sources:
                        if (var3_3 != -1) {
                            this.e = 6;
                            return false;
                        }
                        ** GOTO lbl98
                    }
                    case 3: {
                        if (var3_3 < 0) ** GOTO lbl78
                        var3_3 = var8_11 << 6 | var3_3;
                        var12_8[var7_10 + 2] = (byte)var3_3;
                        var12_8[var7_10 + 1] = (byte)(var3_3 >> 8);
                        var12_8[var7_10] = (byte)(var3_3 >> 16);
                        var5_7 = var7_10 + 3;
                        var2_2 = 0;
                        ** GOTO lbl107
lbl78: // 1 sources:
                        if (var3_3 != -2) ** GOTO lbl85
                        var12_8[var7_10 + 1] = (byte)(var8_11 >> 2);
                        var12_8[var7_10] = (byte)(var8_11 >> 10);
                        var5_7 = var7_10 + 2;
                        var2_2 = 5;
                        var3_3 = var8_11;
                        ** GOTO lbl107
lbl85: // 1 sources:
                        if (var3_3 != -1) {
                            this.e = 6;
                            return false;
                        }
                        ** GOTO lbl98
                    }
                    case 4: {
                        if (var3_3 != -2) ** GOTO lbl95
                        var2_2 = var6_6 + 1;
                        var5_7 = var7_10;
                        var3_3 = var8_11;
                        ** GOTO lbl107
lbl95: // 1 sources:
                        if (var3_3 != -1) {
                            this.e = 6;
                            return false;
                        }
                    }
lbl98: // 7 sources:
                    default: {
                        ** GOTO lbl104
                    }
                    case 5: 
                }
                if (var3_3 != -1) {
                    this.e = 6;
                    return false;
                }
lbl104: // 3 sources:
                var2_2 = var6_6;
                var3_3 = var8_11;
                var5_7 = var7_10;
lbl107: // 8 sources:
                var6_6 = var2_2;
                var2_2 = var10_13 + 1;
            }
            if (!var4_4) {
                this.e = var6_6;
                this.f = var3_3;
                this.b = var5_7;
                return true;
            }
            var2_2 = var5_7;
            switch (var6_6) {
                default: {
                    var2_2 = var5_7;
                    ** GOTO lbl132
                }
                case 1: {
                    this.e = 6;
                    return false;
                }
                case 2: {
                    var12_8[var5_7] = (byte)(var3_3 >> 4);
                    var2_2 = var5_7 + 1;
                    ** GOTO lbl132
                }
                case 3: {
                    var7_10 = var5_7 + 1;
                    var12_8[var5_7] = (byte)(var3_3 >> 10);
                    var2_2 = var7_10 + 1;
                    var12_8[var7_10] = (byte)(var3_3 >> 2);
                }
lbl132: // 4 sources:
                case 0: {
                    this.e = var6_6;
                    this.b = var2_2;
                    return true;
                }
                case 4: 
            }
            this.e = 6;
            return false;
        }
    }

    public static class c
    extends a {
        static final /* synthetic */ boolean g;
        private static final byte[] h;
        private static final byte[] i;
        public int c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        private final byte[] j;
        private int k;
        private final byte[] l;

        /*
         * Enabled aggressive block sorting
         */
        static {
            boolean bl = !c.class.desiredAssertionStatus();
            g = bl;
            h = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
            i = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        }

        /*
         * Enabled aggressive block sorting
         */
        public c(int n2, byte[] arrby) {
            boolean bl = true;
            this.a = arrby;
            boolean bl2 = (n2 & 1) == 0;
            this.d = bl2;
            bl2 = (n2 & 2) == 0;
            this.e = bl2;
            bl2 = (n2 & 4) != 0 ? bl : false;
            this.f = bl2;
            arrby = (n2 & 8) == 0 ? h : i;
            this.l = arrby;
            this.j = new byte[2];
            this.c = 0;
            n2 = this.e ? 19 : -1;
            this.k = n2;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean a(byte[] var1_1, int var2_2, int var3_3, boolean var4_4) {
            var11_5 = this.l;
            var12_6 = this.a;
            var5_7 = 0;
            var8_8 = this.k;
            var10_9 = var3_3 + var2_2;
            var7_10 = -1;
            switch (this.c) {
                case 0: {
                    var3_3 = var2_2;
                    ** GOTO lbl28
                }
                case 1: {
                    if (var2_2 + 2 > var10_9) break;
                    var6_11 = this.j[0];
                    var3_3 = var2_2 + 1;
                    var7_10 = (var6_11 & 255) << 16 | (var1_1[var2_2] & 255) << 8 | var1_1[var3_3] & 255;
                    this.c = 0;
                    ++var3_3;
                    ** GOTO lbl28
                }
                case 2: {
                    if (var2_2 + 1 > var10_9) break;
                    var6_11 = this.j[0];
                    var7_10 = this.j[1];
                    var3_3 = var2_2 + 1;
                    var7_10 = (var6_11 & 255) << 16 | (var7_10 & 255) << 8 | var1_1[var2_2] & 255;
                    this.c = 0;
                    ** GOTO lbl28
                }
            }
            var3_3 = var2_2;
lbl28: // 4 sources:
            var2_2 = var8_8;
            var6_11 = var3_3;
            if (var7_10 == -1) ** GOTO lbl188
            var12_6[0] = var11_5[var7_10 >> 18 & 63];
            var12_6[1] = var11_5[var7_10 >> 12 & 63];
            var12_6[2] = var11_5[var7_10 >> 6 & 63];
            var5_7 = 4;
            var12_6[3] = var11_5[var7_10 & 63];
            var2_2 = var7_10 = var8_8 - 1;
            var6_11 = var3_3;
            if (var7_10 != 0) ** GOTO lbl188
            if (this.f) {
                var2_2 = 5;
                var12_6[4] = 13;
            } else {
                var2_2 = 4;
            }
            var12_6[var2_2] = 10;
            var6_11 = 19;
            ++var2_2;
            do {
                if (var3_3 + 3 > var10_9) ** GOTO lbl63
                var5_7 = (var1_1[var3_3] & 255) << 16 | (var1_1[var3_3 + 1] & 255) << 8 | var1_1[var3_3 + 2] & 255;
                var12_6[var2_2] = var11_5[var5_7 >> 18 & 63];
                var12_6[var2_2 + 1] = var11_5[var5_7 >> 12 & 63];
                var12_6[var2_2 + 2] = var11_5[var5_7 >> 6 & 63];
                var12_6[var2_2 + 3] = var11_5[var5_7 & 63];
                var7_10 = var2_2 + 4;
                var2_2 = var8_8 = var6_11 - 1;
                var5_7 = var7_10;
                var6_11 = var3_3 += 3;
                if (var8_8 != 0) ** GOTO lbl188
                if (!this.f) ** GOTO lbl183
                var2_2 = var7_10 + 1;
                var12_6[var7_10] = 13;
                ** GOTO lbl184
lbl63: // 1 sources:
                if (var4_4) {
                    if (var3_3 - this.c == var10_9 - 1) {
                        if (this.c > 0) {
                            var1_1 = this.j;
                            var5_7 = 1;
                            var7_10 = var1_1[0];
                        } else {
                            var7_10 = var1_1[var3_3];
                            ++var3_3;
                            var5_7 = 0;
                        }
                        var7_10 = (var7_10 & 255) << 4;
                        this.c -= var5_7;
                        var8_8 = var2_2 + 1;
                        var12_6[var2_2] = var11_5[var7_10 >> 6 & 63];
                        var5_7 = var8_8 + 1;
                        var12_6[var8_8] = var11_5[var7_10 & 63];
                        var2_2 = var5_7;
                        if (this.d) {
                            var7_10 = var5_7 + 1;
                            var12_6[var5_7] = 61;
                            var2_2 = var7_10 + 1;
                            var12_6[var7_10] = 61;
                        }
                        var5_7 = var2_2;
                        if (this.e) {
                            var5_7 = var2_2;
                            if (this.f) {
                                var12_6[var2_2] = 13;
                                var5_7 = var2_2 + 1;
                            }
                            var12_6[var5_7] = 10;
                            ++var5_7;
                        }
                        var7_10 = var3_3;
                    } else if (var3_3 - this.c == var10_9 - 2) {
                        if (this.c > 1) {
                            var13_12 = this.j;
                            var8_8 = 1;
                            var7_10 = var13_12[0];
                            var5_7 = var3_3;
                            var3_3 = var8_8;
                        } else {
                            var7_10 = var1_1[var3_3];
                            var5_7 = var3_3 + 1;
                            var3_3 = 0;
                        }
                        if (this.c > 0) {
                            var8_8 = this.j[var3_3];
                            var9_13 = var3_3 + 1;
                            var3_3 = var5_7;
                            var5_7 = var9_13;
                        } else {
                            var8_8 = var1_1[var5_7];
                            var9_14 = var5_7 + 1;
                            var5_7 = var3_3;
                            var3_3 = var9_14;
                        }
                        var7_10 = (var8_8 & 255) << 2 | (var7_10 & 255) << 10;
                        this.c -= var5_7;
                        var5_7 = var2_2 + 1;
                        var12_6[var2_2] = var11_5[var7_10 >> 12 & 63];
                        var8_8 = var5_7 + 1;
                        var12_6[var5_7] = var11_5[var7_10 >> 6 & 63];
                        var2_2 = var8_8 + 1;
                        var12_6[var8_8] = var11_5[var7_10 & 63];
                        if (this.d) {
                            var5_7 = var2_2 + 1;
                            var12_6[var2_2] = 61;
                            var2_2 = var5_7;
                        }
                        var5_7 = var2_2;
                        if (this.e) {
                            var5_7 = var2_2;
                            if (this.f) {
                                var12_6[var2_2] = 13;
                                var5_7 = var2_2 + 1;
                            }
                            var12_6[var5_7] = 10;
                            ++var5_7;
                        }
                        var7_10 = var3_3;
                    } else {
                        var7_10 = var3_3;
                        var5_7 = var2_2;
                        if (this.e) {
                            var7_10 = var3_3;
                            var5_7 = var2_2;
                            if (var2_2 > 0) {
                                var7_10 = var3_3;
                                var5_7 = var2_2;
                                if (var6_11 != 19) {
                                    if (this.f) {
                                        var5_7 = var2_2 + 1;
                                        var12_6[var2_2] = 13;
                                        var2_2 = var5_7;
                                    }
                                    var5_7 = var2_2 + 1;
                                    var12_6[var2_2] = 10;
                                    var7_10 = var3_3;
                                }
                            }
                        }
                    }
                    if (!c.g && this.c != 0) {
                        throw new AssertionError();
                    }
                    var8_8 = var5_7;
                    if (!c.g) {
                        var8_8 = var5_7;
                        if (var7_10 != var10_9) {
                            throw new AssertionError();
                        }
                    }
                } else if (var3_3 == var10_9 - 1) {
                    var11_5 = this.j;
                    var5_7 = this.c;
                    this.c = var5_7 + 1;
                    var11_5[var5_7] = var1_1[var3_3];
                    var8_8 = var2_2;
                } else {
                    var8_8 = var2_2;
                    if (var3_3 == var10_9 - 2) {
                        var11_5 = this.j;
                        var5_7 = this.c;
                        this.c = var5_7 + 1;
                        var11_5[var5_7] = var1_1[var3_3];
                        var11_5 = this.j;
                        var5_7 = this.c;
                        this.c = var5_7 + 1;
                        var11_5[var5_7] = var1_1[var3_3 + 1];
                        var8_8 = var2_2;
                    }
                }
                this.b = var8_8;
                this.k = var6_11;
                return true;
lbl183: // 1 sources:
                var2_2 = var7_10;
lbl184: // 2 sources:
                var12_6[var2_2] = 10;
                var6_11 = 19;
                ++var2_2;
                continue;
lbl188: // 3 sources:
                var7_10 = var2_2;
                var2_2 = var5_7;
                var3_3 = var6_11;
                var6_11 = var7_10;
            } while (true);
        }
    }

}

