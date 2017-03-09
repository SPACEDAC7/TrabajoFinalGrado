/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package jackpal.androidterm.emulatorview;

import android.util.Log;
import jackpal.androidterm.emulatorview.FullUnicodeLine;
import jackpal.androidterm.emulatorview.StyleRow;
import jackpal.androidterm.emulatorview.compat.AndroidCharacterCompat;
import jackpal.androidterm.emulatorview.compat.AndroidCompat;

class UnicodeTranscript {
    static final int HANGUL_CONJOINING_MIN_SDK = 16;
    private static final String TAG = "UnicodeTranscript";
    private int mActiveTranscriptRows = 0;
    private StyleRow[] mColor;
    private int mColumns;
    private int mDefaultStyle = 0;
    private boolean[] mLineWrap;
    private Object[] mLines;
    private int mScreenFirstRow = 0;
    private int mScreenRows;
    private int mTotalRows;
    private StyleRow tmpColor;
    private char[] tmpLine;

    public UnicodeTranscript(int n, int n2, int n3, int n4) {
        this.mColumns = n;
        this.mTotalRows = n2;
        this.mScreenRows = n3;
        this.mLines = new Object[n2];
        this.mColor = new StyleRow[n2];
        this.mLineWrap = new boolean[n2];
        this.tmpColor = new StyleRow(n4, this.mColumns);
        this.mDefaultStyle = n4;
    }

    private char[] allocateBasicLine(int n, int n2) {
        char[] arrc = new char[n2];
        for (int i = 0; i < n2; ++i) {
            arrc[i] = 32;
        }
        this.mLines[n] = arrc;
        if (this.mColor[n] == null) {
            this.mColor[n] = new StyleRow(0, n2);
        }
        return arrc;
    }

    private FullUnicodeLine allocateFullLine(int n, int n2) {
        FullUnicodeLine fullUnicodeLine;
        this.mLines[n] = fullUnicodeLine = new FullUnicodeLine(n2);
        if (this.mColor[n] == null) {
            this.mColor[n] = new StyleRow(0, n2);
        }
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

    public static int charWidth(char c, char c2) {
        return UnicodeTranscript.charWidth(Character.toCodePoint(c, c2));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static int charWidth(int n) {
        if (n > 31 && n < 127) {
            return 1;
        }
        if (n == 27) return 1;
        switch (Character.getType(n)) {
            default: {
                if ((n < 4448 || n > 4607) && (n < 55216 || n > 55295)) break;
                if (AndroidCompat.SDK < 16) return 2;
                return 0;
            }
            case 6: 
            case 7: 
            case 15: 
            case 16: {
                return 0;
            }
        }
        if (Character.charCount(n) == 1) {
            switch (AndroidCharacterCompat.getEastAsianWidth((char)n)) {
                default: {
                    return 1;
                }
                case 3: 
                case 5: 
            }
            return 2;
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

    public static int charWidth(char[] arrc, int n) {
        char c = arrc[n];
        if (Character.isHighSurrogate(c)) {
            return UnicodeTranscript.charWidth(c, arrc[n + 1]);
        }
        return UnicodeTranscript.charWidth(c);
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

    /*
     * Enabled aggressive block sorting
     */
    private char[] getLine(int n, int n2, int n3, boolean bl) {
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
        if (n2 == 0 && n3 == n4) {
            n = fullUnicodeLine.getSpaceUsed();
            if (n < arrc.length) {
                arrc[n] = '\u0000';
            }
            return arrc;
        }
        int n5 = fullUnicodeLine.findStartOfColumn(n2);
        if (n3 < n4) {
            n = n2 = fullUnicodeLine.findStartOfColumn(n3);
            if (!bl) {
                n = n2;
                if (n3 > 0) {
                    n = n2;
                    if (n3 < n4 - 1) {
                        n = n2;
                        if (n2 == fullUnicodeLine.findStartOfColumn(n3 - 1)) {
                            n = fullUnicodeLine.findStartOfColumn(n3 + 1);
                        }
                    }
                }
            }
        } else {
            n = fullUnicodeLine.getSpaceUsed();
        }
        if (this.tmpLine == null || this.tmpLine.length < (n -= n5) + 1) {
            this.tmpLine = new char[n + 1];
        }
        System.arraycopy(arrc, n5, this.tmpLine, 0, n);
        this.tmpLine[n] = '\u0000';
        return this.tmpLine;
    }

    private StyleRow getLineColor(int n, int n2, int n3, boolean bl) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        n = this.externalToInternalRow(n);
        StyleRow styleRow = this.mColor[n];
        StyleRow styleRow2 = this.tmpColor;
        if (styleRow != null) {
            int n4 = this.mColumns;
            int n5 = n2;
            int n6 = n3;
            if (!bl) {
                n5 = n2;
                n6 = n3;
                if (this.mLines[n] != null) {
                    n5 = n2;
                    n6 = n3;
                    if (this.mLines[n] instanceof FullUnicodeLine) {
                        FullUnicodeLine fullUnicodeLine = (FullUnicodeLine)this.mLines[n];
                        n = n2;
                        if (n2 > 0) {
                            n = n2;
                            if (fullUnicodeLine.findStartOfColumn(n2 - 1) == fullUnicodeLine.findStartOfColumn(n2)) {
                                n = n2 - 1;
                            }
                        }
                        n5 = n;
                        n6 = n3;
                        if (n3 < n4 - 1) {
                            n5 = n;
                            n6 = n3;
                            if (fullUnicodeLine.findStartOfColumn(n3 + 1) == fullUnicodeLine.findStartOfColumn(n3)) {
                                n6 = n3 + 1;
                                n5 = n;
                            }
                        }
                    }
                }
            }
            if (n5 == 0 && n6 == n4) {
                return styleRow;
            }
            styleRow.copy(n5, styleRow2, 0, n6 - n5);
            return styleRow2;
        }
        return null;
    }

    private boolean isBasicChar(int n) {
        if (UnicodeTranscript.charWidth(n) == 1 && Character.charCount(n) == 1) {
            return true;
        }
        return false;
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
        var8_7 = this.mLines;
        var9_8 = this.mColor;
        if (var2_2 <= var6_6) ** GOTO lbl47
        var12_9 = 0;
        block0 : do {
            if (var12_9 >= var4_4) return;
            var14_19 = this.externalToInternalRow(var2_2 + var12_9);
            var15_21 = this.externalToInternalRow(var6_6 + var12_9);
            if (!(var8_7[var14_19] instanceof char[]) || !(var8_7[var15_21] instanceof char[])) ** GOTO lbl21
            System.arraycopy(var8_7[var14_19], var1_1, var8_7[var15_21], var5_5, var3_3);
            ** GOTO lbl-1000
lbl21: // 1 sources:
            var16_25 = var6_6 + var12_9;
            var10_13 = this.getLine(var2_2 + var12_9, var1_1, var1_1 + var3_3, true);
            if (var10_13 != null) ** GOTO lbl26
            this.blockSet(var5_5, var16_25, var3_3, 1, 32, this.mDefaultStyle);
            ** GOTO lbl33
lbl26: // 1 sources:
            var7_11 = '\u0000';
            var11_15 = 0;
            var17_23 = this.mColumns;
            var13_17 = 0;
            do {
                if (var13_17 >= var10_13.length || var10_13[var13_17] == '\u0000' || var5_5 + var11_15 >= var17_23) lbl-1000: // 2 sources:
                {
                    var9_8[var14_19].copy(var1_1, var9_8[var15_21], var5_5, var3_3);
lbl33: // 2 sources:
                    ++var12_9;
                    continue block0;
                }
                if (Character.isHighSurrogate(var10_13[var13_17])) {
                    var7_11 = var10_13[var13_17];
                } else if (Character.isLowSurrogate(var10_13[var13_17])) {
                    var18_27 = Character.toCodePoint(var7_11, var10_13[var13_17]);
                    this.setChar(var5_5 + var11_15, var16_25, var18_27);
                    var11_15 += UnicodeTranscript.charWidth(var18_27);
                } else {
                    this.setChar(var5_5 + var11_15, var16_25, var10_13[var13_17]);
                    var11_15 += UnicodeTranscript.charWidth(var10_13[var13_17]);
                }
                ++var13_17;
            } while (true);
            break;
        } while (true);
lbl47: // 1 sources:
        var12_10 = 0;
        block2 : do {
            if (var12_10 >= var4_4) return;
            var11_16 = var4_4 - (var12_10 + 1);
            var14_20 = this.externalToInternalRow(var2_2 + var11_16);
            var15_22 = this.externalToInternalRow(var6_6 + var11_16);
            if (!(var8_7[var14_20] instanceof char[]) || !(var8_7[var15_22] instanceof char[])) ** GOTO lbl56
            System.arraycopy(var8_7[var14_20], var1_1, var8_7[var15_22], var5_5, var3_3);
            ** GOTO lbl-1000
lbl56: // 1 sources:
            var16_26 = var6_6 + var11_16;
            var10_14 = this.getLine(var2_2 + var11_16, var1_1, var1_1 + var3_3, true);
            if (var10_14 != null) ** GOTO lbl61
            this.blockSet(var5_5, var16_26, var3_3, 1, 32, this.mDefaultStyle);
            ** GOTO lbl68
lbl61: // 1 sources:
            var7_12 = '\u0000';
            var11_16 = 0;
            var17_24 = this.mColumns;
            var13_18 = 0;
            do {
                if (var13_18 >= var10_14.length || var10_14[var13_18] == '\u0000' || var5_5 + var11_16 >= var17_24) lbl-1000: // 2 sources:
                {
                    var9_8[var14_20].copy(var1_1, var9_8[var15_22], var5_5, var3_3);
lbl68: // 2 sources:
                    ++var12_10;
                    continue block2;
                }
                if (Character.isHighSurrogate(var10_14[var13_18])) {
                    var7_12 = var10_14[var13_18];
                } else if (Character.isLowSurrogate(var10_14[var13_18])) {
                    var18_28 = Character.toCodePoint(var7_12, var10_14[var13_18]);
                    this.setChar(var5_5 + var11_16, var16_26, var18_28);
                    var11_16 += UnicodeTranscript.charWidth(var18_28);
                } else {
                    this.setChar(var5_5 + var11_16, var16_26, var10_14[var13_18]);
                    var11_16 += UnicodeTranscript.charWidth(var10_14[var13_18]);
                }
                ++var13_18;
            } while (true);
            break;
        } while (true);
    }

    public void blockSet(int n, int n2, int n3, int n4, int n5, int n6) {
        if (n < 0 || n + n3 > this.mColumns || n2 < 0 || n2 + n4 > this.mScreenRows) {
            Log.e((String)"UnicodeTranscript", (String)("illegal arguments! " + n + " " + n2 + " " + n3 + " " + n4 + " " + n5 + " " + this.mColumns + " " + this.mScreenRows));
            throw new IllegalArgumentException();
        }
        for (int i = 0; i < n4; ++i) {
            for (int j = 0; j < n3; ++j) {
                this.setChar(n + j, n2 + i, n5, n6);
            }
        }
    }

    public int getActiveRows() {
        return this.mActiveTranscriptRows + this.mScreenRows;
    }

    public int getActiveTranscriptRows() {
        return this.mActiveTranscriptRows;
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

    public int getDefaultStyle() {
        return this.mDefaultStyle;
    }

    public char[] getLine(int n) {
        return this.getLine(n, 0, this.mColumns, true);
    }

    public char[] getLine(int n, int n2, int n3) {
        return this.getLine(n, n2, n3, false);
    }

    public StyleRow getLineColor(int n) {
        return this.getLineColor(n, 0, this.mColumns, true);
    }

    public StyleRow getLineColor(int n, int n2, int n3) {
        return this.getLineColor(n, n2, n3, false);
    }

    public boolean getLineWrap(int n) {
        return this.mLineWrap[this.externalToInternalRow(n)];
    }

    boolean isBasicLine(int n) {
        if (n < - this.mActiveTranscriptRows || n > this.mScreenRows - 1) {
            throw new IllegalArgumentException();
        }
        return this.mLines[this.externalToInternalRow(n)] instanceof char[];
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
        if (var7_6 >= - var9_5) ** GOTO lbl21
        var4_7 = this.mLines;
        var5_9 = this.mColor;
        var6_11 = this.mLineWrap;
        var10_12 = this.mScreenFirstRow;
        var11_14 = this.mTotalRows;
        for (var1_1 = 0; var1_1 < var9_5 - var7_6; ++var1_1) {
            var12_15 = (var10_12 + var8_4 + var1_1) % var11_14;
            var4_7[var12_15] = null;
            var5_9[var12_15] = null;
            var6_11[var12_15] = false;
        }
        var1_1 = - var9_5;
        ** GOTO lbl-1000
lbl21: // 1 sources:
        var1_1 = var7_6;
        if (var7_6 <= 0) ** GOTO lbl-1000
        var1_1 = var7_6;
        if (var3_3 == null) ** GOTO lbl-1000
        var1_1 = var7_6;
        if (var3_3[1] != var8_4 - 1) {
            var5_10 = this.mLines;
            --var8_4;
        } else lbl-1000: // 8 sources:
        {
            do {
                if (var1_1 > 0 || var1_1 < 0 && this.mScreenFirstRow >= - var1_1) {
                    this.mScreenFirstRow = (this.mScreenFirstRow + var1_1) % this.mTotalRows;
                } else if (var1_1 < 0) {
                    this.mScreenFirstRow = this.mTotalRows + this.mScreenFirstRow + var1_1;
                }
                this.mActiveTranscriptRows = this.mActiveTranscriptRows + var1_1 < 0 ? 0 : (this.mActiveTranscriptRows += var1_1);
                if (var3_3 != null) {
                    var3_3[1] = var3_3[1] - var1_1;
                }
                this.mScreenRows = var2_2;
                return true;
                break;
            } while (true);
        }
        block2 : do {
            var1_1 = var7_6;
            if (var8_4 <= var3_3[1]) ** GOTO lbl-1000
            var1_1 = this.externalToInternalRow(var8_4);
            if (var5_10[var1_1] != null) ** GOTO lbl49
            var1_1 = --var7_6;
            if (var7_6 == 0) ** GOTO lbl-1000
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
            var9_5 = var1_1;
            if (var1_1 >= var10_13) break;
            if (var4_8[var1_1] == '\u0000') {
                var9_5 = var10_13;
                break;
            }
            var9_5 = var1_1;
            if (var4_8[var1_1] != ' ') break;
            ++var1_1;
        } while (true);
        var1_1 = var7_6;
        if (var9_5 != var10_13) ** GOTO lbl-1000
        var7_6 = var1_1 = var7_6 - 1;
        ** while (var1_1 != 0)
lbl70: // 1 sources:
        ** while (true)
    }

    public void scroll(int n, int n2, int n3) {
        if (n > n2 - 1) {
            throw new IllegalArgumentException();
        }
        if (n < 0) {
            throw new IllegalArgumentException();
        }
        if (n2 > this.mScreenRows) {
            throw new IllegalArgumentException();
        }
        int n4 = this.mScreenRows;
        int n5 = this.mTotalRows;
        if (n == 0 && n2 == n4) {
            this.mScreenFirstRow = (this.mScreenFirstRow + 1) % n5;
            if (this.mActiveTranscriptRows < n5 - n4) {
                ++this.mActiveTranscriptRows;
            }
            n = this.externalToInternalRow(n2 - 1);
            this.mLines[n] = null;
            this.mColor[n] = new StyleRow(n3, this.mColumns);
            this.mLineWrap[n] = false;
            return;
        }
        int n6 = this.mScreenFirstRow;
        int n7 = this.externalToInternalRow(n);
        int n8 = this.externalToInternalRow(n2);
        Object[] arrobject = this.mLines;
        StyleRow[] arrstyleRow = this.mColor;
        boolean[] arrbl = this.mLineWrap;
        Object object = arrobject[n7];
        StyleRow styleRow = arrstyleRow[n7];
        boolean bl = arrbl[n7];
        this.blockCopyLines(n6, n, 1);
        this.blockCopyLines(n8, n4 - n2, 1);
        arrobject[n6] = object;
        arrstyleRow[n6] = styleRow;
        arrbl[n6] = bl;
        this.mScreenFirstRow = (n6 + 1) % n5;
        if (this.mActiveTranscriptRows < n5 - n4) {
            ++this.mActiveTranscriptRows;
        }
        n = this.externalToInternalRow(n2 - 1);
        arrobject[n] = null;
        arrstyleRow[n] = new StyleRow(n3, this.mColumns);
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

    public boolean setChar(int n, int n2, int n3, int n4) {
        if (!this.setChar(n, n2, n3)) {
            return false;
        }
        n2 = this.externalToInternalRow(n2);
        this.mColor[n2].set(n, n4);
        return true;
    }

    public void setDefaultStyle(int n) {
        this.mDefaultStyle = n;
    }

    public void setLineWrap(int n) {
        this.mLineWrap[this.externalToInternalRow((int)n)] = true;
    }
}

