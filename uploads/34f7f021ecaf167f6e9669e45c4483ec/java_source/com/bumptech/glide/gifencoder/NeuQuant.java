/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.gifencoder;

class NeuQuant {
    protected static final int alphabiasshift = 10;
    protected static final int alpharadbias = 262144;
    protected static final int alpharadbshift = 18;
    protected static final int beta = 64;
    protected static final int betagamma = 65536;
    protected static final int betashift = 10;
    protected static final int gamma = 1024;
    protected static final int gammashift = 10;
    protected static final int initalpha = 1024;
    protected static final int initrad = 32;
    protected static final int initradius = 2048;
    protected static final int intbias = 65536;
    protected static final int intbiasshift = 16;
    protected static final int maxnetpos = 255;
    protected static final int minpicturebytes = 1509;
    protected static final int ncycles = 100;
    protected static final int netbiasshift = 4;
    protected static final int netsize = 256;
    protected static final int prime1 = 499;
    protected static final int prime2 = 491;
    protected static final int prime3 = 487;
    protected static final int prime4 = 503;
    protected static final int radbias = 256;
    protected static final int radbiasshift = 8;
    protected static final int radiusbias = 64;
    protected static final int radiusbiasshift = 6;
    protected static final int radiusdec = 30;
    protected int alphadec;
    protected int[] bias = new int[256];
    protected int[] freq = new int[256];
    protected int lengthcount;
    protected int[] netindex = new int[256];
    protected int[][] network;
    protected int[] radpower = new int[32];
    protected int samplefac;
    protected byte[] thepicture;

    public NeuQuant(byte[] arrby, int n2, int n3) {
        this.thepicture = arrby;
        this.lengthcount = n2;
        this.samplefac = n3;
        this.network = new int[256][];
        for (n2 = 0; n2 < 256; ++n2) {
            this.network[n2] = new int[4];
            arrby = this.network[n2];
            arrby[2] = n3 = (n2 << 12) / 256;
            arrby[1] = n3;
            arrby[0] = n3;
            this.freq[n2] = 256;
            this.bias[n2] = 0;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void alterneigh(int n2, int n3, int n4, int n5, int n6) {
        int n7;
        int n8 = n7 = n3 - n2;
        if (n7 < -1) {
            n8 = -1;
        }
        int n9 = n2 = n3 + n2;
        if (n2 > 256) {
            n9 = 256;
        }
        int n10 = 1;
        n7 = n3 - 1;
        n2 = n3 + 1;
        n3 = n10;
        while (n2 < n9 || n7 > n8) {
            Object object = this.radpower;
            n10 = n3 + 1;
            int n11 = object[n3];
            if (n2 < n9) {
                object = this.network;
                n3 = n2 + 1;
                object = object[n2];
                try {
                    object[0] = object[0] - (object[0] - n4) * n11 / 262144;
                    object[1] = object[1] - (object[1] - n5) * n11 / 262144;
                    object[2] = object[2] - (object[2] - n6) * n11 / 262144;
                    n2 = n3;
                }
                catch (Exception var11_13) {
                    n2 = n3;
                }
            }
            if (n7 > n8) {
                object = this.network;
                n3 = n7 - 1;
                object = object[n7];
                try {
                    object[0] = object[0] - (object[0] - n4) * n11 / 262144;
                    object[1] = object[1] - (object[1] - n5) * n11 / 262144;
                    object[2] = object[2] - (object[2] - n6) * n11 / 262144;
                    n7 = n3;
                    n3 = n10;
                }
                catch (Exception var11_12) {
                    n7 = n3;
                    n3 = n10;
                }
                continue;
            }
            n3 = n10;
        }
        return;
    }

    protected void altersingle(int n2, int n3, int n4, int n5, int n6) {
        int[] arrn = this.network[n3];
        arrn[0] = arrn[0] - (arrn[0] - n4) * n2 / 1024;
        arrn[1] = arrn[1] - (arrn[1] - n5) * n2 / 1024;
        arrn[2] = arrn[2] - (arrn[2] - n6) * n2 / 1024;
    }

    public byte[] colorMap() {
        byte[] arrby = new byte[768];
        int[] arrn = new int[256];
        int n2 = 0;
        while (n2 < 256) {
            arrn[this.network[n2][3]] = n2++;
        }
        n2 = 0;
        int n3 = 0;
        while (n2 < 256) {
            int n4 = arrn[n2];
            int n5 = n3 + 1;
            arrby[n3] = (byte)this.network[n4][0];
            n3 = n5 + 1;
            arrby[n5] = (byte)this.network[n4][1];
            arrby[n3] = (byte)this.network[n4][2];
            ++n2;
            ++n3;
        }
        return arrby;
    }

    protected int contest(int n2, int n3, int n4) {
        int[] arrn;
        int n5 = Integer.MAX_VALUE;
        int n6 = Integer.MAX_VALUE;
        int n7 = -1;
        int n8 = -1;
        for (int i2 = 0; i2 < 256; ++i2) {
            int n9;
            int n10;
            int n11;
            arrn = this.network[i2];
            int n12 = n10 = arrn[0] - n2;
            if (n10 < 0) {
                n12 = - n10;
            }
            n10 = n9 = arrn[1] - n3;
            if (n9 < 0) {
                n10 = - n9;
            }
            n9 = n11 = arrn[2] - n4;
            if (n11 < 0) {
                n9 = - n11;
            }
            n10 = n12 + n10 + n9;
            n12 = n5;
            if (n10 < n5) {
                n12 = n10;
                n7 = i2;
            }
            n5 = n6;
            if ((n10 -= this.bias[i2] >> 12) < n6) {
                n5 = n10;
                n8 = i2;
            }
            n6 = this.freq[i2] >> 10;
            arrn = this.freq;
            arrn[i2] = arrn[i2] - n6;
            arrn = this.bias;
            arrn[i2] = arrn[i2] + (n6 << 10);
            n6 = n5;
            n5 = n12;
        }
        arrn = this.freq;
        arrn[n7] = arrn[n7] + 64;
        arrn = this.bias;
        arrn[n7] = arrn[n7] - 65536;
        return n8;
    }

    public void inxbuild() {
        int n2;
        int n3 = 0;
        int n4 = 0;
        for (n2 = 0; n2 < 256; ++n2) {
            int n5;
            int n6;
            int[] arrn;
            int[] arrn2 = this.network[n2];
            int n7 = n2;
            int n8 = arrn2[1];
            for (n6 = n2 + 1; n6 < 256; ++n6) {
                arrn = this.network[n6];
                n5 = n8;
                if (arrn[1] < n8) {
                    n7 = n6;
                    n5 = arrn[1];
                }
                n8 = n5;
            }
            arrn = this.network[n7];
            if (n2 != n7) {
                n6 = arrn[0];
                arrn[0] = arrn2[0];
                arrn2[0] = n6;
                n6 = arrn[1];
                arrn[1] = arrn2[1];
                arrn2[1] = n6;
                n6 = arrn[2];
                arrn[2] = arrn2[2];
                arrn2[2] = n6;
                n6 = arrn[3];
                arrn[3] = arrn2[3];
                arrn2[3] = n6;
            }
            n5 = n3;
            n6 = n4;
            if (n8 != n3) {
                this.netindex[n3] = n4 + n2 >> 1;
                for (n6 = n3 + 1; n6 < n8; ++n6) {
                    this.netindex[n6] = n2;
                }
                n6 = n2;
                n5 = n8;
            }
            n3 = n5;
            n4 = n6;
        }
        this.netindex[n3] = n4 + 255 >> 1;
        for (n2 = n3 + 1; n2 < 256; ++n2) {
            this.netindex[n2] = 255;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void learn() {
        if (this.lengthcount < 1509) {
            this.samplefac = 1;
        }
        this.alphadec = (this.samplefac - 1) / 3 + 30;
        var17_1 = this.thepicture;
        var8_2 = 0;
        var15_3 = this.lengthcount;
        var16_4 = this.lengthcount / (this.samplefac * 3);
        var7_5 = var16_4 / 100;
        var9_6 = 1024;
        var4_7 = 2048;
        var2_9 = var1_8 = 2048 >> 6;
        if (var1_8 <= 1) {
            var2_9 = 0;
        }
        for (var1_8 = 0; var1_8 < var2_9; ++var1_8) {
            this.radpower[var1_8] = (var2_9 * var2_9 - var1_8 * var1_8) * 256 / (var2_9 * var2_9) * 1024;
        }
        var1_8 = this.lengthcount < 1509 ? 3 : (this.lengthcount % 499 != 0 ? 1497 : (this.lengthcount % 491 != 0 ? 1473 : (this.lengthcount % 487 != 0 ? 1461 : 1509)));
        var5_10 = 0;
        var6_11 = var2_9;
        block1 : do lbl-1000: // 3 sources:
        {
            if (var5_10 >= var16_4) return;
            var2_9 = (var17_1[var8_2 + 0] & 255) << 4;
            var3_12 = (var17_1[var8_2 + 1] & 255) << 4;
            var10_13 = (var17_1[var8_2 + 2] & 255) << 4;
            var11_14 = this.contest(var2_9, var3_12, var10_13);
            this.altersingle(var9_6, var11_14, var2_9, var3_12, var10_13);
            if (var6_11 != 0) {
                this.alterneigh(var6_11, var11_14, var2_9, var3_12, var10_13);
            }
            var2_9 = var3_12 = var8_2 + var1_8;
            if (var3_12 >= var15_3) {
                var2_9 = var3_12 - this.lengthcount;
            }
            var12_15 = var5_10 + 1;
            var10_13 = var7_5;
            if (var7_5 == 0) {
                var10_13 = 1;
            }
            var7_5 = var10_13;
            var5_10 = var12_15;
            var8_2 = var2_9;
            if (var12_15 % var10_13 != 0) ** GOTO lbl-1000
            var13_16 = var9_6 - var9_6 / this.alphadec;
            var14_17 = var4_7 - var4_7 / 30;
            var3_12 = var4_7 = var14_17 >> 6;
            if (var4_7 <= 1) {
                var3_12 = 0;
            }
            var11_14 = 0;
            do {
                var9_6 = var13_16;
                var6_11 = var3_12;
                var7_5 = var10_13;
                var5_10 = var12_15;
                var8_2 = var2_9;
                var4_7 = var14_17;
                if (var11_14 >= var3_12) continue block1;
                this.radpower[var11_14] = (var3_12 * var3_12 - var11_14 * var11_14) * 256 / (var3_12 * var3_12) * var13_16;
                ++var11_14;
            } while (true);
            break;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public int map(int n2, int n3, int n4) {
        int n5 = 1000;
        int n6 = -1;
        int n7 = this.netindex[n3];
        int n8 = n7 - 1;
        while (n7 < 256 || n8 >= 0) {
            int[] arrn;
            int n9;
            int n10 = n6;
            int n11 = n5;
            int n12 = n7;
            if (n7 < 256) {
                arrn = this.network[n7];
                n10 = arrn[1] - n3;
                if (n10 >= n5) {
                    n12 = 256;
                    n11 = n5;
                    n10 = n6;
                } else {
                    ++n7;
                    n12 = n10;
                    if (n10 < 0) {
                        n12 = - n10;
                    }
                    n10 = n11 = arrn[0] - n2;
                    if (n11 < 0) {
                        n10 = - n11;
                    }
                    n9 = n12 + n10;
                    n10 = n6;
                    n11 = n5;
                    n12 = n7;
                    if (n9 < n5) {
                        n12 = n10 = arrn[2] - n4;
                        if (n10 < 0) {
                            n12 = - n10;
                        }
                        n10 = n6;
                        n11 = n5;
                        n12 = n7;
                        if ((n9 += n12) < n5) {
                            n11 = n9;
                            n10 = arrn[3];
                            n12 = n7;
                        }
                    }
                }
            }
            n6 = n10;
            n5 = n11;
            n7 = n12;
            if (n8 < 0) continue;
            arrn = this.network[n8];
            n6 = n3 - arrn[1];
            if (n6 >= n11) {
                n8 = -1;
                n6 = n10;
                n5 = n11;
                n7 = n12;
                continue;
            }
            n9 = n8 - 1;
            n8 = n6;
            if (n6 < 0) {
                n8 = - n6;
            }
            n6 = n5 = arrn[0] - n2;
            if (n5 < 0) {
                n6 = - n5;
            }
            int n13 = n8 + n6;
            n6 = n10;
            n5 = n11;
            n7 = n12;
            n8 = n9;
            if (n13 >= n11) continue;
            n8 = n6 = arrn[2] - n4;
            if (n6 < 0) {
                n8 = - n6;
            }
            n6 = n10;
            n5 = n11;
            n7 = n12;
            n8 = n9;
            if ((n13 += n8) >= n11) continue;
            n5 = n13;
            n6 = arrn[3];
            n7 = n12;
            n8 = n9;
        }
        return n6;
    }

    public byte[] process() {
        this.learn();
        this.unbiasnet();
        this.inxbuild();
        return this.colorMap();
    }

    public void unbiasnet() {
        int n2 = 0;
        while (n2 < 256) {
            int[] arrn = this.network[n2];
            arrn[0] = arrn[0] >> 4;
            arrn = this.network[n2];
            arrn[1] = arrn[1] >> 4;
            arrn = this.network[n2];
            arrn[2] = arrn[2] >> 4;
            this.network[n2][3] = n2++;
        }
    }
}

