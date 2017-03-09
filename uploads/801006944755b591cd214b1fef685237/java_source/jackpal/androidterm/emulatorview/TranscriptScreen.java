/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 */
package jackpal.androidterm.emulatorview;

import android.graphics.Canvas;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.GrowableIntArray;
import jackpal.androidterm.emulatorview.Screen;
import jackpal.androidterm.emulatorview.StyleRow;
import jackpal.androidterm.emulatorview.TextRenderer;
import jackpal.androidterm.emulatorview.TextStyle;
import jackpal.androidterm.emulatorview.UnicodeTranscript;

class TranscriptScreen
implements Screen {
    private int mColumns;
    private UnicodeTranscript mData;
    private int mScreenRows;
    private int mTotalRows;

    public TranscriptScreen(int n, int n2, int n3, ColorScheme colorScheme) {
        this.init(n, n2, n3, TextStyle.kNormalTextStyle);
    }

    private void init(int n, int n2, int n3, int n4) {
        this.mColumns = n;
        this.mTotalRows = n2;
        this.mScreenRows = n3;
        this.mData = new UnicodeTranscript(n, n2, n3, n4);
        this.mData.blockSet(0, 0, this.mColumns, this.mScreenRows, 32, n4);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private String internalGetTranscriptText(GrowableIntArray var1_1, int var2_2, int var3_3, int var4_4, int var5_5) {
        block27 : {
            block26 : {
                var8_6 = new StringBuilder();
                var9_7 = this.mData;
                var15_8 = this.mColumns;
                var7_9 = null;
                var12_10 = var3_3;
                if (var3_3 < - var9_7.getActiveTranscriptRows()) {
                    var12_10 = - var9_7.getActiveTranscriptRows();
                }
                var16_11 = var5_5;
                if (var5_5 >= this.mScreenRows) {
                    var16_11 = this.mScreenRows - 1;
                }
                var17_12 = var12_10;
                block2 : while (var17_12 <= var16_11) {
                    var5_5 = 0;
                    if (var17_12 == var12_10) {
                        var5_5 = var2_2;
                    }
                    if (var17_12 == var16_11) {
                        var3_3 = var13_16 = var4_4 + 1;
                        if (var13_16 > var15_8) {
                            var3_3 = var15_8;
                        }
                    } else {
                        var3_3 = var15_8;
                    }
                    var10_14 = var9_7.getLine(var17_12, var5_5, var3_3);
                    if (var1_1 != null) {
                        var7_9 = var9_7.getLineColor(var17_12, var5_5, var3_3);
                    }
                    if (var10_14 != null) break block26;
                    if (!var9_7.getLineWrap(var17_12) && var17_12 < var16_11 && var17_12 < this.mScreenRows - 1) {
                        var8_6.append('\n');
                        if (var1_1 != null) {
                            var1_1.append(0);
                        }
                    }
lbl30: // 8 sources:
                    do {
                        ++var17_12;
                        continue block2;
                        break;
                    } while (true);
                }
                return var8_6.toString();
            }
            var18_19 = this.mData.getDefaultStyle();
            var13_16 = -1;
            var20_20 = var10_14.length;
            var19_18 = 0;
            var5_5 = 0;
            do {
                if (var5_5 >= var20_20 || (var6_13 = var10_14[var5_5]) == '\u0000') {
                    var14_17 = var13_16;
                    if (var9_7.getLineWrap(var17_12)) {
                        var14_17 = var13_16;
                        if (var13_16 > -1) {
                            var14_17 = var13_16;
                            if (var3_3 == var15_8) {
                                var14_17 = var5_5 - 1;
                            }
                        }
                    }
                    var8_6.append(var10_14, 0, var14_17 + 1);
                    if (var1_1 != null) {
                        if (var7_9 == null) break;
                        var5_5 = 0;
                        var3_3 = 0;
                        while (var3_3 <= var14_17) {
                            var1_1.append(var7_9.get(var5_5));
                            var13_16 = var5_5 + UnicodeTranscript.charWidth(var10_14, var3_3);
                            var5_5 = var3_3;
                            if (Character.isHighSurrogate(var10_14[var3_3])) {
                                var5_5 = var3_3 + 1;
                            }
                            var3_3 = var5_5 + 1;
                            var5_5 = var13_16;
                        }
                    }
                    break block27;
                }
                var14_17 = var18_19;
                if (var7_9 != null) {
                    try {
                        var14_17 = var7_9.get(var19_18);
                    }
                    catch (ArrayIndexOutOfBoundsException var11_15) {
                        var14_17 = var18_19;
                    }
                }
                if (var6_13 != ' ' || var14_17 != var18_19) {
                    var13_16 = var5_5;
                }
                var14_17 = var19_18;
                if (!Character.isLowSurrogate(var6_13)) {
                    var14_17 = var19_18 + UnicodeTranscript.charWidth(var10_14, var5_5);
                }
                ++var5_5;
                var19_18 = var14_17;
            } while (true);
            var3_3 = 0;
            while (var3_3 <= var14_17) {
                var1_1.append(var18_19);
                var5_5 = var3_3;
                if (Character.isHighSurrogate(var10_14[var3_3])) {
                    var5_5 = var3_3 + 1;
                }
                var3_3 = var5_5 + 1;
            }
        }
        if (var9_7.getLineWrap(var17_12) || var17_12 >= var16_11 || var17_12 >= this.mScreenRows - 1) ** GOTO lbl30
        var8_6.append('\n');
        if (var1_1 == null) ** GOTO lbl30
        var1_1.append(0);
        ** while (true)
    }

    @Override
    public void blockCopy(int n, int n2, int n3, int n4, int n5, int n6) {
        this.mData.blockCopy(n, n2, n3, n4, n5, n6);
    }

    @Override
    public void blockSet(int n, int n2, int n3, int n4, int n5, int n6) {
        this.mData.blockSet(n, n2, n3, n4, n5, n6);
    }

    /*
     * Exception decompiling
     */
    public final void drawText(int var1_1, Canvas var2_2, float var3_5, float var4_6, TextRenderer var5_7, int var6_8, int var7_9, int var8_10, String var9_11, int var10_12) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Statement already marked as first in another block
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.markFirstStatementInBlock(Op03SimpleStatement.java:420)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.markWholeBlock(Misc.java:219)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.considerAsSimpleIf(ConditionalRewriter.java:619)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.identifyNonjumpingConditionals(ConditionalRewriter.java:45)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:681)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    public boolean fastResize(int n, int n2, int[] arrn) {
        if (this.mData == null) {
            return true;
        }
        if (this.mData.resize(n, n2, arrn)) {
            this.mColumns = n;
            this.mScreenRows = n2;
            return true;
        }
        return false;
    }

    public void finish() {
        this.mData = null;
    }

    @Override
    public int getActiveRows() {
        return this.mData.getActiveRows();
    }

    public int getActiveTranscriptRows() {
        return this.mData.getActiveTranscriptRows();
    }

    char[] getScriptLine(int n) {
        try {
            char[] arrc = this.mData.getLine(n);
            return arrc;
        }
        catch (IllegalArgumentException var2_3) {
            return null;
        }
        catch (NullPointerException var2_4) {
            return null;
        }
    }

    boolean getScriptLineWrap(int n) {
        return this.mData.getLineWrap(n);
    }

    @Override
    public String getSelectedText(int n, int n2, int n3, int n4) {
        return this.internalGetTranscriptText(null, n, n2, n3, n4);
    }

    @Override
    public String getSelectedText(GrowableIntArray growableIntArray, int n, int n2, int n3, int n4) {
        return this.internalGetTranscriptText(growableIntArray, n, n2, n3, n4);
    }

    @Override
    public String getTranscriptText() {
        return this.internalGetTranscriptText(null, 0, - this.mData.getActiveTranscriptRows(), this.mColumns, this.mScreenRows);
    }

    @Override
    public String getTranscriptText(GrowableIntArray growableIntArray) {
        return this.internalGetTranscriptText(growableIntArray, 0, - this.mData.getActiveTranscriptRows(), this.mColumns, this.mScreenRows);
    }

    boolean isBasicLine(int n) {
        if (this.mData != null) {
            return this.mData.isBasicLine(n);
        }
        return true;
    }

    @Override
    public void resize(int n, int n2, int n3) {
        if (n2 > this.mTotalRows) {
            this.mTotalRows = n2;
        }
        this.init(n, this.mTotalRows, n2, n3);
    }

    @Override
    public void scroll(int n, int n2, int n3) {
        this.mData.scroll(n, n2, n3);
    }

    @Override
    public void set(int n, int n2, byte by, int n3) {
        this.mData.setChar(n, n2, by, n3);
    }

    @Override
    public void set(int n, int n2, int n3, int n4) {
        this.mData.setChar(n, n2, n3, n4);
    }

    public void setColorScheme(ColorScheme colorScheme) {
        this.mData.setDefaultStyle(TextStyle.kNormalTextStyle);
    }

    @Override
    public void setLineWrap(int n) {
        this.mData.setLineWrap(n);
    }
}

