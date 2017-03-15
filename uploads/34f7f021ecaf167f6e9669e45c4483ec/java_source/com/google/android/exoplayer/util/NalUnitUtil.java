/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 *  com.google.android.exoplayer.util.CodecSpecificDataUtil
 *  com.google.android.exoplayer.util.NalUnitUtil$PpsData
 *  com.google.android.exoplayer.util.NalUnitUtil$SpsData
 *  com.google.android.exoplayer.util.ParsableBitArray
 *  com.google.android.exoplayer.util.ParsableByteArray
 */
package com.google.android.exoplayer.util;

import android.util.Log;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class NalUnitUtil {
    public static final float[] ASPECT_RATIO_IDC_VALUES;
    public static final int EXTENDED_SAR = 255;
    public static final byte[] NAL_START_CODE;
    private static final int NAL_UNIT_TYPE_SPS = 7;
    private static final String TAG = "NalUnitUtil";
    private static int[] scratchEscapePositions;
    private static final Object scratchEscapePositionsLock;

    static {
        NAL_START_CODE = new byte[]{0, 0, 0, 1};
        ASPECT_RATIO_IDC_VALUES = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
        scratchEscapePositionsLock = new Object();
        scratchEscapePositions = new int[10];
    }

    private NalUnitUtil() {
    }

    public static void clearPrefixFlags(boolean[] arrbl) {
        arrbl[0] = false;
        arrbl[1] = false;
        arrbl[2] = false;
    }

    public static void discardToSps(ByteBuffer byteBuffer) {
        int n2 = byteBuffer.position();
        int n3 = 0;
        int n4 = 0;
        while (n4 + 1 < n2) {
            int n5;
            int n6 = byteBuffer.get(n4) & 255;
            if (n3 == 3) {
                n5 = n3;
                if (n6 == 1) {
                    n5 = n3;
                    if ((byteBuffer.get(n4 + 1) & 31) == 7) {
                        ByteBuffer byteBuffer2 = byteBuffer.duplicate();
                        byteBuffer2.position(n4 - 3);
                        byteBuffer2.limit(n2);
                        byteBuffer.position(0);
                        byteBuffer.put(byteBuffer2);
                        return;
                    }
                }
            } else {
                n5 = n3;
                if (n6 == 0) {
                    n5 = n3 + 1;
                }
            }
            n3 = n5;
            if (n6 != 0) {
                n3 = 0;
            }
            ++n4;
        }
        byteBuffer.clear();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static int findNalUnit(byte[] arrby, int n2, int n3, boolean[] arrbl) {
        boolean bl = true;
        int n4 = n3 - n2;
        boolean bl2 = n4 >= 0;
        Assertions.checkState(bl2);
        if (n4 == 0) {
            return n3;
        }
        if (arrbl != null) {
            if (arrbl[0]) {
                NalUnitUtil.clearPrefixFlags(arrbl);
                return n2 - 3;
            }
            if (n4 > 1 && arrbl[1] && arrby[n2] == 1) {
                NalUnitUtil.clearPrefixFlags(arrbl);
                return n2 - 2;
            }
            if (n4 > 2 && arrbl[2] && arrby[n2] == 0 && arrby[n2 + 1] == 1) {
                NalUnitUtil.clearPrefixFlags(arrbl);
                return n2 - 1;
            }
        }
        n2 += 2;
        while (n2 < n3 - 1) {
            if ((arrby[n2] & 254) == 0) {
                if (arrby[n2 - 2] == 0 && arrby[n2 - 1] == 0 && arrby[n2] == 1) {
                    if (arrbl == null) return n2 - 2;
                    NalUnitUtil.clearPrefixFlags(arrbl);
                    return n2 - 2;
                }
                n2 -= 2;
            }
            n2 += 3;
        }
        if (arrbl == null) return n3;
        bl2 = n4 > 2 ? arrby[n3 - 3] == 0 && arrby[n3 - 2] == 0 && arrby[n3 - 1] == 1 : (n4 == 2 ? arrbl[2] && arrby[n3 - 2] == 0 && arrby[n3 - 1] == 1 : arrbl[1] && arrby[n3 - 1] == 1);
        arrbl[0] = bl2;
        bl2 = n4 > 1 ? arrby[n3 - 2] == 0 && arrby[n3 - 1] == 0 : arrbl[2] && arrby[n3 - 1] == 0;
        arrbl[1] = bl2;
        bl2 = arrby[n3 - 1] == 0 ? bl : false;
        arrbl[2] = bl2;
        return n3;
    }

    private static int findNextUnescapeIndex(byte[] arrby, int n2, int n3) {
        while (n2 < n3 - 2) {
            if (arrby[n2] == 0 && arrby[n2 + 1] == 0 && arrby[n2 + 2] == 3) {
                return n2;
            }
            ++n2;
        }
        return n3;
    }

    public static int getH265NalUnitType(byte[] arrby, int n2) {
        return (arrby[n2 + 3] & 126) >> 1;
    }

    public static int getNalUnitType(byte[] arrby, int n2) {
        return arrby[n2 + 3] & 31;
    }

    public static byte[] parseChildNalUnit(ParsableByteArray parsableByteArray) {
        int n2 = parsableByteArray.readUnsignedShort();
        int n3 = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(n2);
        return CodecSpecificDataUtil.buildNalUnit((byte[])parsableByteArray.data, (int)n3, (int)n2);
    }

    public static PpsData parsePpsNalUnit(ParsableBitArray parsableBitArray) {
        int n2 = parsableBitArray.readUnsignedExpGolombCodedInt();
        int n3 = parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.skipBits(1);
        return new PpsData(n2, n3, parsableBitArray.readBit());
    }

    /*
     * Enabled aggressive block sorting
     */
    public static SpsData parseSpsNalUnit(ParsableBitArray parsableBitArray) {
        int n2;
        int n3;
        boolean bl;
        float f2;
        int n4 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(16);
        int n5 = parsableBitArray.readUnsignedExpGolombCodedInt();
        int n6 = 1;
        boolean bl2 = false;
        boolean bl3 = false;
        if (n4 == 100 || n4 == 110 || n4 == 122 || n4 == 244 || n4 == 44 || n4 == 83 || n4 == 86 || n4 == 118 || n4 == 128 || n4 == 138) {
            n3 = parsableBitArray.readUnsignedExpGolombCodedInt();
            if (n3 == 3) {
                bl3 = parsableBitArray.readBit();
            }
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.skipBits(1);
            bl2 = bl3;
            n6 = n3;
            if (parsableBitArray.readBit()) {
                n4 = n3 != 3 ? 8 : 12;
                n2 = 0;
                do {
                    bl2 = bl3;
                    n6 = n3;
                    if (n2 >= n4) break;
                    if (parsableBitArray.readBit()) {
                        n6 = n2 < 6 ? 16 : 64;
                        NalUnitUtil.skipScalingList(parsableBitArray, n6);
                    }
                    ++n2;
                } while (true);
            }
        }
        int n7 = parsableBitArray.readUnsignedExpGolombCodedInt();
        int n8 = parsableBitArray.readUnsignedExpGolombCodedInt();
        n3 = 0;
        bl3 = false;
        if (n8 == 0) {
            n2 = parsableBitArray.readUnsignedExpGolombCodedInt() + 4;
        } else {
            n2 = n3;
            if (n8 == 1) {
                bl = parsableBitArray.readBit();
                parsableBitArray.readSignedExpGolombCodedInt();
                parsableBitArray.readSignedExpGolombCodedInt();
                long l2 = parsableBitArray.readUnsignedExpGolombCodedInt();
                n4 = 0;
                do {
                    n2 = n3;
                    bl3 = bl;
                    if ((long)n4 >= l2) break;
                    parsableBitArray.readUnsignedExpGolombCodedInt();
                    ++n4;
                } while (true);
            }
        }
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.skipBits(1);
        int n9 = parsableBitArray.readUnsignedExpGolombCodedInt();
        n3 = parsableBitArray.readUnsignedExpGolombCodedInt();
        bl = parsableBitArray.readBit();
        n4 = bl ? 1 : 0;
        if (!bl) {
            parsableBitArray.skipBits(1);
        }
        parsableBitArray.skipBits(1);
        n9 = (n9 + 1) * 16;
        int n10 = (2 - n4) * (n3 + 1) * 16;
        n3 = n9;
        n4 = n10;
        if (parsableBitArray.readBit()) {
            int n11 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int n12 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int n13 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int n14 = parsableBitArray.readUnsignedExpGolombCodedInt();
            if (n6 == 0) {
                n6 = 1;
                n4 = bl ? 1 : 0;
                n4 = 2 - n4;
            } else {
                n4 = n6 == 3 ? 1 : 2;
                n6 = n6 == 1 ? 2 : 1;
                n3 = bl ? 1 : 0;
                n3 = n6 * (2 - n3);
                n6 = n4;
                n4 = n3;
            }
            n3 = n9 - (n11 + n12) * n6;
            n4 = n10 - (n13 + n14) * n4;
        }
        float f3 = f2 = 1.0f;
        if (!parsableBitArray.readBit()) return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
        f3 = f2;
        if (!parsableBitArray.readBit()) return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
        n6 = parsableBitArray.readBits(8);
        if (n6 == 255) {
            n6 = parsableBitArray.readBits(16);
            n9 = parsableBitArray.readBits(16);
            f3 = f2;
            if (n6 == 0) return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
            f3 = f2;
            if (n9 == 0) return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
            f3 = (float)n6 / (float)n9;
            return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
        }
        if (n6 < ASPECT_RATIO_IDC_VALUES.length) {
            f3 = ASPECT_RATIO_IDC_VALUES[n6];
            return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
        }
        Log.w((String)"NalUnitUtil", (String)("Unexpected aspect_ratio_idc value: " + n6));
        f3 = f2;
        return new SpsData(n5, n3, n4, f3, bl2, bl, n7 + 4, n8, n2, bl3);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void skipScalingList(ParsableBitArray parsableBitArray, int n2) {
        int n3 = 8;
        int n4 = 8;
        int n5 = 0;
        while (n5 < n2) {
            int n6 = n4;
            if (n4 != 0) {
                n6 = (n3 + parsableBitArray.readSignedExpGolombCodedInt() + 256) % 256;
            }
            if (n6 != 0) {
                n3 = n6;
            }
            ++n5;
            n4 = n6;
        }
    }

    public static int unescapeStream(byte[] arrby, int n2) {
        Object object = scratchEscapePositionsLock;
        synchronized (object) {
            int n3;
            int n4 = 0;
            int n5 = 0;
            while (n4 < n2) {
                n4 = n3 = NalUnitUtil.findNextUnescapeIndex(arrby, n4, n2);
                if (n3 >= n2) continue;
                if (scratchEscapePositions.length <= n5) {
                    scratchEscapePositions = Arrays.copyOf(scratchEscapePositions, scratchEscapePositions.length * 2);
                }
                int[] arrn = scratchEscapePositions;
                arrn[n5] = n3;
                n4 = n3 + 3;
                ++n5;
            }
            int n6 = n2 - n5;
            n4 = 0;
            n3 = 0;
            for (n2 = 0; n2 < n5; ++n2) {
                int n7 = scratchEscapePositions[n2] - n4;
                System.arraycopy(arrby, n4, arrby, n3, n7);
                int n8 = (n3 += n7) + 1;
                arrby[n3] = 0;
                n3 = n8 + 1;
                arrby[n8] = 0;
                n4 += n7 + 3;
            }
            try {
                System.arraycopy(arrby, n4, arrby, n3, n6 - n3);
                return n6;
            }
            catch (Throwable var0_1) {
                do {
                    void var0_2;
                    try {}
                    catch (Throwable var0_3) {
                        continue;
                    }
                    throw var0_2;
                    break;
                } while (true);
            }
        }
    }
}

