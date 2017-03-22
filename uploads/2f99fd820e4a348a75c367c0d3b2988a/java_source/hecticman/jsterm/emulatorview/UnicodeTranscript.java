/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package hecticman.jsterm.emulatorview;

import android.util.Log;
import hecticman.jsterm.emulatorview.FullUnicodeLine;
import hecticman.jsterm.emulatorview.compat.AndroidCharacterCompat;

class UnicodeTranscript {
    private static final String TAG = "UnicodeTranscript";
    private int mActiveTranscriptRows = 0;
    private byte[][] mColor;
    private int mColumns;
    private int mDefaultBackColor = 0;
    private int mDefaultForeColor = 0;
    private boolean[] mLineWrap;
    private Object[] mLines;
    private int mScreenFirstRow = 0;
    private int mScreenRows;
    private int mTotalRows;
    private char[] tmpChar = new char[2];
    private byte[] tmpColor;
    private char[] tmpLine;

    public UnicodeTranscript(int n, int n2, int n3, int n4, int n5) {
        this.mColumns = n;
        this.mTotalRows = n2;
        this.mScreenRows = n3;
        this.mLines = new Object[n2];
        this.mColor = new byte[n2][];
        this.mLineWrap = new boolean[n2];
        this.tmpColor = new byte[n];
        this.mDefaultForeColor = n4;
        this.mDefaultBackColor = n5;
    }

    private char[] allocateBasicLine(int n, int n2) {
        char[] arrc = new char[n2];
        int n3 = 0;
        do {
            if (n3 >= n2) {
                this.mLines[n] = arrc;
                this.mColor[n] = null;
                return arrc;
            }
            arrc[n3] = 32;
            ++n3;
        } while (true);
    }

    private byte[] allocateColor(int n, int n2) {
        byte[] arrby = new byte[n2];
        byte by = this.encodeColor(this.mDefaultForeColor, this.mDefaultBackColor);
        int n3 = 0;
        do {
            if (n3 >= n2) {
                this.mColor[n] = arrby;
                return arrby;
            }
            arrby[n3] = by;
            ++n3;
        } while (true);
    }

    private FullUnicodeLine allocateFullLine(int n, int n2) {
        FullUnicodeLine fullUnicodeLine;
        this.mLines[n] = fullUnicodeLine = new FullUnicodeLine(n2);
        this.mColor[n] = null;
        return fullUnicodeLine;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void blockCopyLines(int n, int n2, int n3) {
        int n4 = this.mTotalRows;
        int n5 = n + n3 >= 0 ? (n + n3) % n4 : n4 + n + n3;
        if (n + n2 <= n4 && n5 + n2 <= n4) {
            System.arraycopy(this.mLines, n, this.mLines, n5, n2);
            System.arraycopy(this.mColor, n, this.mColor, n5, n2);
            System.arraycopy(this.mLineWrap, n, this.mLineWrap, n5, n2);
            return;
        } else {
            if (n3 < 0) {
                n3 = 0;
                while (n3 < n2) {
                    this.mLines[(n5 + n3) % n4] = this.mLines[(n + n3) % n4];
                    this.mColor[(n5 + n3) % n4] = this.mColor[(n + n3) % n4];
                    this.mLineWrap[(n5 + n3) % n4] = this.mLineWrap[(n + n3) % n4];
                    ++n3;
                }
                return;
            }
            --n2;
            while (n2 >= 0) {
                this.mLines[(n5 + n2) % n4] = this.mLines[(n + n2) % n4];
                this.mColor[(n5 + n2) % n4] = this.mColor[(n + n2) % n4];
                this.mLineWrap[(n5 + n2) % n4] = this.mLineWrap[(n + n2) % n4];
                --n2;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void changeColor() {
        byte by = this.encodeColor(this.mDefaultForeColor, this.mDefaultBackColor);
        block0 : for (int i = 0; i < this.mScreenRows; ++i) {
            int n = 0;
            do {
                if (n >= this.mColumns) {
                    continue block0;
                }
                if (this.mColor[i] == null) {
                    return;
                }
                this.mColor[i][n] = by;
                ++n;
            } while (true);
        }
    }

    public static int charWidth(char c, char c2) {
        return UnicodeTranscript.charWidth(Character.toCodePoint(c, c2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int charWidth(int n) {
        if (n > 31 && n < 127 || n == 27) {
            return 1;
        }
        switch (Character.getType(n)) {
            default: {
                if (Character.charCount(n) != 1) break;
                switch (AndroidCharacterCompat.getEastAsianWidth((char)n)) {
                    default: {
                        return 1;
                    }
                    case 3: 
                    case 5: 
                }
                return 2;
            }
            case 6: 
            case 7: 
            case 15: 
            case 16: {
                return 0;
            }
        }
        switch (n >> 16 & 15) {
            default: {
                return 1;
            }
            case 2: 
            case 3: 
        }
        return 2;
    }

    private byte encodeColor(int n, int n2) {
        return (byte)((n & 15) << 4 | n2 & 15);
    }

    private int externalToInternalRow(int n) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows) {
            String string2 = "externalToInternalRow " + n + " " + this.mScreenRows + " " + this.mActiveTranscriptRows;
            Log.e((String)"UnicodeTranscript", (String)string2);
            throw new IllegalArgumentException(string2);
        }
        if (n >= 0) {
            return (this.mScreenFirstRow + n) % this.mTotalRows;
        }
        if (- n > this.mScreenFirstRow) {
            return this.mTotalRows + this.mScreenFirstRow + n;
        }
        return this.mScreenFirstRow + n;
    }

    private boolean isBasicChar(int n) {
        boolean bl = true;
        if (UnicodeTranscript.charWidth(n) != 1 || Character.charCount(n) != 1) {
            bl = false;
        }
        return bl;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void blockCopy(int var1_1, int var2_2, int var3_3, int var4_4, int var5_5, int var6_6) {
        if (var1_1 < 0) throw new IllegalArgumentException();
        if (var1_1 + var3_3 > this.mColumns) throw new IllegalArgumentException();
        if (var2_2 < 0) throw new IllegalArgumentException();
        if (var2_2 + var4_4 > this.mScreenRows) throw new IllegalArgumentException();
        if (var5_5 < 0) throw new IllegalArgumentException();
        if (var5_5 + var3_3 > this.mColumns) throw new IllegalArgumentException();
        if (var6_6 < 0) throw new IllegalArgumentException();
        if (var6_6 + var4_4 > this.mScreenRows) {
            throw new IllegalArgumentException();
        }
        var9_7 = this.mLines;
        var10_8 = this.mColor;
        if (var2_2 <= var6_6) ** GOTO lbl57
        var13_9 = 0;
        block0 : do {
            if (var13_9 >= var4_4) {
                return;
            }
            var16_25 = this.externalToInternalRow(var2_2 + var13_9);
            var15_21 = this.externalToInternalRow(var6_6 + var13_9);
            if (!(var9_7[var16_25] instanceof char[]) || !(var9_7[var15_21] instanceof char[])) ** GOTO lbl22
            System.arraycopy(var9_7[var16_25], var1_1, var9_7[var15_21], var5_5, var3_3);
            ** GOTO lbl-1000
lbl22: // 1 sources:
            var17_23 = var6_6 + var13_9;
            var11_15 = this.getLine(var2_2 + var13_9, var1_1, var1_1 + var3_3);
            if (var11_15 != null) ** GOTO lbl27
            this.blockSet(var5_5, var17_23, var3_3, 1, 32, this.mDefaultForeColor, this.mDefaultBackColor);
            ** GOTO lbl43
lbl27: // 1 sources:
            var8_13 = '\u0000';
            var12_17 = 0;
            var18_29 = this.mColumns;
            var14_19 = 0;
            do {
                if (var14_19 >= var11_15.length || var11_15[var14_19] == '\u0000' || var5_5 + var12_17 >= var18_29) lbl-1000: // 2 sources:
                {
                    if (var10_8[var16_25] != null || var10_8[var15_21] != null) {
                        if (var10_8[var16_25] == null && var10_8[var15_21] != null) {
                            var7_11 = this.encodeColor(this.mDefaultForeColor, this.mDefaultBackColor);
                            for (var12_17 = var5_5; var12_17 < var5_5 + var3_3; ++var12_17) {
                                var10_8[var15_21][var12_17] = var7_11;
                            }
                        } else {
                            if (var10_8[var16_25] != null && var10_8[var15_21] == null) {
                                this.allocateColor(var15_21, this.mColumns);
                            }
                            System.arraycopy(var10_8[var16_25], var1_1, var10_8[var15_21], var5_5, var3_3);
                        }
                    }
lbl43: // 5 sources:
                    ++var13_9;
                    continue block0;
                }
                if (Character.isHighSurrogate(var11_15[var14_19])) {
                    var8_13 = var11_15[var14_19];
                } else if (Character.isLowSurrogate(var11_15[var14_19])) {
                    var19_27 = Character.toCodePoint(var8_13, var11_15[var14_19]);
                    this.setChar(var5_5 + var12_17, var17_23, var19_27);
                    var12_17 += UnicodeTranscript.charWidth(var19_27);
                } else {
                    this.setChar(var5_5 + var12_17, var17_23, var11_15[var14_19]);
                    var12_17 += UnicodeTranscript.charWidth(var11_15[var14_19]);
                }
                ++var14_19;
            } while (true);
            break;
        } while (true);
lbl57: // 1 sources:
        var13_10 = 0;
        block3 : do {
            if (var13_10 >= var4_4) return;
            var12_18 = var4_4 - (var13_10 + 1);
            var16_26 = this.externalToInternalRow(var2_2 + var12_18);
            var15_22 = this.externalToInternalRow(var6_6 + var12_18);
            if (!(var9_7[var16_26] instanceof char[]) || !(var9_7[var15_22] instanceof char[])) ** GOTO lbl66
            System.arraycopy(var9_7[var16_26], var1_1, var9_7[var15_22], var5_5, var3_3);
            ** GOTO lbl-1000
lbl66: // 1 sources:
            var17_24 = var6_6 + var12_18;
            var11_16 = this.getLine(var2_2 + var12_18, var1_1, var1_1 + var3_3);
            if (var11_16 != null) ** GOTO lbl71
            this.blockSet(var5_5, var17_24, var3_3, 1, 32, this.mDefaultForeColor, this.mDefaultBackColor);
            ** GOTO lbl87
lbl71: // 1 sources:
            var8_14 = '\u0000';
            var12_18 = 0;
            var18_30 = this.mColumns;
            var14_20 = 0;
            do {
                if (var14_20 >= var11_16.length || var11_16[var14_20] == '\u0000' || var5_5 + var12_18 >= var18_30) lbl-1000: // 2 sources:
                {
                    if (var10_8[var16_26] != null || var10_8[var15_22] != null) {
                        if (var10_8[var16_26] == null && var10_8[var15_22] != null) {
                            var7_12 = this.encodeColor(this.mDefaultForeColor, this.mDefaultBackColor);
                            for (var12_18 = var5_5; var12_18 < var5_5 + var3_3; ++var12_18) {
                                var10_8[var15_22][var12_18] = var7_12;
                            }
                        } else {
                            if (var10_8[var16_26] != null && var10_8[var15_22] == null) {
                                this.allocateColor(var15_22, this.mColumns);
                            }
                            System.arraycopy(var10_8[var16_26], var1_1, var10_8[var15_22], var5_5, var3_3);
                        }
                    }
lbl87: // 5 sources:
                    ++var13_10;
                    continue block3;
                }
                if (Character.isHighSurrogate(var11_16[var14_20])) {
                    var8_14 = var11_16[var14_20];
                } else if (Character.isLowSurrogate(var11_16[var14_20])) {
                    var19_28 = Character.toCodePoint(var8_14, var11_16[var14_20]);
                    this.setChar(var5_5 + var12_18, var17_24, var19_28);
                    var12_18 += UnicodeTranscript.charWidth(var19_28);
                } else {
                    this.setChar(var5_5 + var12_18, var17_24, var11_16[var14_20]);
                    var12_18 += UnicodeTranscript.charWidth(var11_16[var14_20]);
                }
                ++var14_20;
            } while (true);
            break;
        } while (true);
    }

    public void blockSet(int n, int n2, int n3, int n4, int n5, int n6, int n7) {
        if (n < 0 || n + n3 > this.mColumns || n2 < 0 || n2 + n4 > this.mScreenRows) {
            Log.e((String)"UnicodeTranscript", (String)("illegal arguments! " + n + " " + n2 + " " + n3 + " " + n4 + " " + n5 + " " + this.mColumns + " " + this.mScreenRows));
            throw new IllegalArgumentException();
        }
        int n8 = 0;
        block0 : while (n8 < n4) {
            int n9 = 0;
            do {
                if (n9 >= n3) {
                    ++n8;
                    continue block0;
                }
                this.setChar(n + n9, n2 + n8, n5, n6, n7);
                ++n9;
            } while (true);
            break;
        }
        return;
    }

    public int getActiveRows() {
        return this.mActiveTranscriptRows + this.mScreenRows;
    }

    public int getActiveTranscriptRows() {
        return this.mActiveTranscriptRows;
    }

    public int getBackColor(int n, int n2) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        if (this.mColor[n = this.externalToInternalRow(n)] == null) {
            return this.mDefaultBackColor;
        }
        return this.mColor[n][n2] & 15;
    }

    public boolean getChar(int n, int n2) {
        return this.getChar(n, n2, 0);
    }

    public boolean getChar(int n, int n2, int n3) {
        return this.getChar(n, n2, n3, new char[1], 0);
    }

    public boolean getChar(int n, int n2, int n3, char[] arrc, int n4) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        if (this.mLines[n = this.externalToInternalRow(n)] instanceof char[]) {
            arrc[n4] = ((char[])this.mLines[n])[n2];
            return false;
        }
        return ((FullUnicodeLine)this.mLines[n]).getChar(n2, n3, arrc, n4);
    }

    public int getDefaultBackColor() {
        return this.mDefaultBackColor;
    }

    public byte getDefaultColorsEncoded() {
        return this.encodeColor(this.mDefaultForeColor, this.mDefaultBackColor);
    }

    public int getDefaultForeColor() {
        return this.mDefaultForeColor;
    }

    public int getForeColor(int n, int n2) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        if (this.mColor[n = this.externalToInternalRow(n)] == null) {
            return this.mDefaultForeColor;
        }
        return this.mColor[n][n2] >> 4 & 15;
    }

    public char[] getLine(int n) {
        return this.getLine(n, 0, this.mColumns);
    }

    /*
     * Enabled aggressive block sorting
     */
    public char[] getLine(int n, int n2, int n3) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        int n4 = this.mColumns;
        if (this.mLines[n = this.externalToInternalRow(n)] == null) {
            return null;
        }
        if (this.mLines[n] instanceof char[]) {
            if (n2 == 0 && n3 == n4) {
                return (char[])this.mLines[n];
            }
            if (this.tmpLine == null || this.tmpLine.length < n4 + 1) {
                this.tmpLine = new char[n4 + 1];
            }
            System.arraycopy(this.mLines[n], n2, this.tmpLine, 0, n3 -= n2);
            this.tmpLine[n3] = '\u0000';
            return this.tmpLine;
        }
        FullUnicodeLine fullUnicodeLine = (FullUnicodeLine)this.mLines[n];
        char[] arrc = fullUnicodeLine.getLine();
        n2 = fullUnicodeLine.findStartOfColumn(n2);
        n = n3 < n4 ? fullUnicodeLine.findStartOfColumn(n3) : fullUnicodeLine.getSpaceUsed();
        if (this.tmpLine == null || this.tmpLine.length < (n -= n2) + 1) {
            this.tmpLine = new char[n + 1];
        }
        System.arraycopy(arrc, n2, this.tmpLine, 0, n);
        this.tmpLine[n] = '\u0000';
        return this.tmpLine;
    }

    public byte[] getLineColor(int n) {
        return this.getLineColor(n, 0, this.mColumns);
    }

    public byte[] getLineColor(int n, int n2, int n3) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        if (this.mColor[n = this.externalToInternalRow(n)] != null) {
            if (n2 == 0 && n3 == this.mColumns) {
                return this.mColor[n];
            }
            System.arraycopy(this.mColor[n], n2, this.tmpColor, 0, n3 - n2);
            return this.tmpColor;
        }
        return null;
    }

    public boolean getLineWrap(int n) {
        return this.mLineWrap[this.externalToInternalRow(n)];
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean resize(int var1_1, int var2_2, int[] var3_3) {
        if (var1_1 != this.mColumns) return false;
        if (var2_2 > this.mTotalRows) {
            return false;
        }
        var8_4 = this.mScreenRows;
        var7_6 = var8_4 - var2_2;
        var9_5 = this.mActiveTranscriptRows;
        if (var7_6 < - var9_5) ** GOTO lbl15
        var1_1 = var7_6;
        if (var7_6 <= 0) ** GOTO lbl31
        var1_1 = var7_6;
        if (var3_3[1] == var8_4 - 1) ** GOTO lbl31
        var5_10 = this.mLines;
        --var8_4;
        ** GOTO lbl41
lbl15: // 1 sources:
        var4_7 = this.mLines;
        var5_9 = this.mColor;
        var6_11 = this.mLineWrap;
        var10_12 = this.mScreenFirstRow;
        var11_14 = this.mTotalRows;
        var1_1 = 0;
        do {
            if (var1_1 >= var9_5 - var7_6) {
                var1_1 = - var9_5;
                break;
            }
            var12_15 = (var10_12 + var8_4 + var1_1) % var11_14;
            var4_7[var12_15] = null;
            var5_9[var12_15] = null;
            var6_11[var12_15] = false;
            ++var1_1;
        } while (true);
lbl31: // 7 sources:
        do {
            if (var1_1 > 0 || var1_1 < 0 && this.mScreenFirstRow >= - var1_1) {
                this.mScreenFirstRow = (this.mScreenFirstRow + var1_1) % this.mTotalRows;
            } else if (var1_1 < 0) {
                this.mScreenFirstRow = this.mTotalRows + this.mScreenFirstRow + var1_1;
            }
            this.mActiveTranscriptRows = this.mActiveTranscriptRows + var1_1 < 0 ? 0 : (this.mActiveTranscriptRows += var1_1);
            var3_3[1] = var3_3[1] - var1_1;
            this.mScreenRows = var2_2;
            return true;
            break;
        } while (true);
lbl41: // 1 sources:
        block2 : do {
            var1_1 = var7_6;
            if (var8_4 <= var3_3[1]) ** GOTO lbl31
            var1_1 = this.externalToInternalRow(var8_4);
            if (var5_10[var1_1] != null) ** GOTO lbl49
            var1_1 = --var7_6;
            if (var7_6 == 0) ** GOTO lbl31
            ** GOTO lbl53
lbl49: // 1 sources:
            var4_8 = var5_10[var1_1] instanceof char[] != false ? (char[])var5_10[var1_1] : ((FullUnicodeLine)var5_10[var1_1]).getLine();
            var10_13 = var4_8.length;
            var1_1 = 0;
            break;
lbl53: // 2 sources:
            do {
                --var8_4;
                continue block2;
                break;
            } while (true);
            break;
        } while (true);
        do {
            if (var1_1 >= var10_13) {
                var9_5 = var1_1;
                break;
            }
            if (var4_8[var1_1] == '\u0000') {
                var9_5 = var10_13;
                break;
            }
            var9_5 = var1_1;
            if (var4_8[var1_1] != ' ') break;
            ++var1_1;
        } while (true);
        var1_1 = var7_6;
        if (var9_5 != var10_13) ** GOTO lbl31
        var7_6 = var1_1 = var7_6 - 1;
        ** while (var1_1 != 0)
lbl71: // 1 sources:
        ** while (true)
    }

    public void scroll(int n, int n2) {
        if (n > n2 - 1) {
            throw new IllegalArgumentException();
        }
        if (n < 0) {
            throw new IllegalArgumentException();
        }
        if (n2 > this.mScreenRows) {
            throw new IllegalArgumentException();
        }
        int n3 = this.mScreenRows;
        int n4 = this.mTotalRows;
        if (n == 0 && n2 == n3) {
            this.mScreenFirstRow = (this.mScreenFirstRow + 1) % n4;
            if (this.mActiveTranscriptRows < n4 - n3) {
                ++this.mActiveTranscriptRows;
            }
            n = this.externalToInternalRow(n2 - 1);
            this.mLines[n] = null;
            this.mColor[n] = null;
            this.mLineWrap[n] = false;
            return;
        }
        int n5 = this.mScreenFirstRow;
        int n6 = this.externalToInternalRow(n);
        int n7 = this.externalToInternalRow(n2);
        Object[] arrobject = this.mLines;
        byte[][] arrby = this.mColor;
        boolean[] arrbl = this.mLineWrap;
        Object object = arrobject[n6];
        byte[] arrby2 = arrby[n6];
        boolean bl = arrbl[n6];
        this.blockCopyLines(n5, n, 1);
        this.blockCopyLines(n7, n3 - n2, 1);
        arrobject[n5] = object;
        arrby[n5] = arrby2;
        arrbl[n5] = bl;
        this.mScreenFirstRow = (n5 + 1) % n4;
        if (this.mActiveTranscriptRows < n4 - n3) {
            ++this.mActiveTranscriptRows;
        }
        n = this.externalToInternalRow(n2 - 1);
        arrobject[n] = null;
        arrby[n] = null;
        arrbl[n] = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean setChar(int n, int n2, int n3) {
        if (n2 >= this.mScreenRows || n >= this.mColumns) {
            Log.e((String)"UnicodeTranscript", (String)("illegal arguments! " + n2 + " " + n + " " + this.mScreenRows + " " + this.mColumns));
            throw new IllegalArgumentException();
        }
        int n4 = this.externalToInternalRow(n2);
        n2 = -1;
        if (this.mLines[n4] == null) {
            if (this.isBasicChar(n3)) {
                this.allocateBasicLine(n4, this.mColumns);
                n2 = 1;
            } else {
                this.allocateFullLine(n4, this.mColumns);
                n2 = 0;
            }
        }
        if (this.mLines[n4] instanceof char[]) {
            char[] arrc = (char[])this.mLines[n4];
            int n5 = n2;
            if (n2 == -1) {
                n5 = this.isBasicChar(n3) ? 1 : 0;
            }
            if (n5 == 1) {
                arrc[n] = (char)n3;
                return true;
            }
            this.mLines[n4] = new FullUnicodeLine(arrc);
        }
        ((FullUnicodeLine)this.mLines[n4]).setChar(n, n3);
        return true;
    }

    public boolean setChar(int n, int n2, int n3, int n4, int n5) {
        if (!this.setChar(n, n2, n3)) {
            return false;
        }
        if (this.mColor[n2 = this.externalToInternalRow(n2)] == null) {
            this.allocateColor(n2, this.mColumns);
        }
        this.mColor[n2][n] = this.encodeColor(n4, n5);
        return true;
    }

    public void setDefaultColors(int n, int n2) {
        this.mDefaultForeColor = n;
        this.mDefaultBackColor = n2;
        this.changeColor();
    }

    public void setLineWrap(int n) {
        this.mLineWrap[this.externalToInternalRow((int)n)] = true;
    }
}

