/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 */
package hecticman.jsterm.emulatorview;

import android.graphics.Canvas;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.Screen;
import hecticman.jsterm.emulatorview.TextRenderer;
import hecticman.jsterm.emulatorview.UnicodeTranscript;

class TranscriptScreen
implements Screen {
    private static final String TAG = "TranscriptScreen";
    private int mColumns;
    private UnicodeTranscript mData;
    private int mScreenRows;
    private int mTotalRows;

    public TranscriptScreen(int n, int n2, int n3, ColorScheme colorScheme) {
        this.init(n, n2, n3, colorScheme.getForeColorIndex(), colorScheme.getBackColorIndex());
    }

    private void init(int n, int n2, int n3, int n4, int n5) {
        this.mColumns = n;
        this.mTotalRows = n2;
        this.mScreenRows = n3;
        this.mData = new UnicodeTranscript(n, n2, n3, n4, n5);
        this.mData.blockSet(0, 0, this.mColumns, this.mScreenRows, 32, n4, n5);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private String internalGetTranscriptText(StringBuilder var1_1, int var2_2, int var3_3, int var4_4, int var5_5) {
        var8_6 = new StringBuilder();
        var9_7 = this.mData;
        var13_8 = this.mColumns;
        var7_9 = null;
        var11_10 = var3_3;
        if (var3_3 < - var9_7.getActiveTranscriptRows()) {
            var11_10 = - var9_7.getActiveTranscriptRows();
        }
        var14_11 = var5_5;
        if (var5_5 >= this.mScreenRows) {
            var14_11 = this.mScreenRows - 1;
        }
        var15_12 = var11_10;
        block0 : do {
            if (var15_12 > var14_11) {
                return var8_6.toString();
            }
            var5_5 = 0;
            if (var15_12 == var11_10) {
                var5_5 = var2_2;
            }
            if (var15_12 == var14_11) {
                var3_3 = var12_15 = var4_4 + 1;
                if (var12_15 > var13_8) {
                    var3_3 = var13_8;
                }
            } else {
                var3_3 = var13_8;
            }
            var10_14 = var9_7.getLine(var15_12, var5_5, var3_3);
            if (var1_1 != null) {
                var7_9 = var9_7.getLineColor(var15_12, var5_5, var3_3);
            }
            if (var10_14 != null) {
                var12_15 = -1;
                var16_16 = var10_14.length;
                break;
            }
            if (!var9_7.getLineWrap(var15_12) && var15_12 < var14_11 && var15_12 < this.mScreenRows - 1) {
                var8_6.append('\n');
                if (var1_1 != null) {
                    var1_1.append('\u0000');
                }
            }
lbl35: // 8 sources:
            do {
                ++var15_12;
                continue block0;
                break;
            } while (true);
            break;
        } while (true);
        for (var5_5 = 0; var5_5 < var16_16 && var10_14[var5_5] != '\u0000'; ++var5_5) {
            if (var10_14[var5_5] == ' ') continue;
            var12_15 = var5_5;
        }
        var16_16 = var12_15;
        if (var9_7.getLineWrap(var15_12)) {
            var16_16 = var12_15;
            if (var12_15 > -1) {
                var16_16 = var12_15;
                if (var3_3 == var13_8) {
                    var16_16 = var5_5 - 1;
                }
            }
        }
        var8_6.append(var10_14, 0, var16_16 + 1);
        if (var1_1 == null) ** GOTO lbl60
        var5_5 = 0;
        if (var7_9 != null) ** GOTO lbl58
        var6_13 = (char)this.mData.getDefaultColorsEncoded();
        for (var3_3 = 0; var3_3 < var16_16 + 1; ++var3_3) {
            var1_1.append(var6_13);
        }
        ** GOTO lbl60
lbl58: // 1 sources:
        var3_3 = 0;
lbl59: // 2 sources:
        if (var3_3 < var16_16 + 1) ** GOTO lbl65
lbl60: // 3 sources:
        if (var9_7.getLineWrap(var15_12) || var15_12 >= var14_11 || var15_12 >= this.mScreenRows - 1) ** GOTO lbl35
        var8_6.append('\n');
        if (var1_1 == null) ** GOTO lbl35
        var1_1.append('\u0000');
        ** while (true)
lbl65: // 1 sources:
        var1_1.append(var7_9[var5_5]);
        if (Character.isHighSurrogate(var10_14[var3_3])) {
            var5_5 += UnicodeTranscript.charWidth(Character.toCodePoint(var10_14[var3_3], var10_14[var3_3 + 1]));
            ++var3_3;
        } else {
            var5_5 += UnicodeTranscript.charWidth(var10_14[var3_3]);
        }
        ++var3_3;
        ** GOTO lbl59
    }

    @Override
    public void blockCopy(int n, int n2, int n3, int n4, int n5, int n6) {
        this.mData.blockCopy(n, n2, n3, n4, n5, n6);
    }

    @Override
    public void blockSet(int n, int n2, int n3, int n4, int n5, int n6, int n7) {
        this.mData.blockSet(n, n2, n3, n4, n5, n6, n7);
    }

    /*
     * Exception decompiling
     */
    public final void drawText(int var1_1, Canvas var2_2, float var3_5, float var4_6, TextRenderer var5_7, int var6_8, int var7_9, int var8_10, String var9_11) {
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

    @Override
    public String getSelectedText(int n, int n2, int n3, int n4) {
        return this.internalGetTranscriptText(null, n, n2, n3, n4);
    }

    @Override
    public String getSelectedText(StringBuilder stringBuilder, int n, int n2, int n3, int n4) {
        return this.internalGetTranscriptText(stringBuilder, n, n2, n3, n4);
    }

    @Override
    public String getTranscriptText() {
        return this.internalGetTranscriptText(null, 0, - this.mData.getActiveTranscriptRows(), this.mColumns, this.mScreenRows);
    }

    @Override
    public String getTranscriptText(StringBuilder stringBuilder) {
        return this.internalGetTranscriptText(stringBuilder, 0, - this.mData.getActiveTranscriptRows(), this.mColumns, this.mScreenRows);
    }

    @Override
    public void resize(int n, int n2, int n3, int n4) {
        this.init(n, this.mTotalRows, n2, n3, n4);
    }

    @Override
    public void scroll(int n, int n2) {
        this.mData.scroll(n, n2);
    }

    @Override
    public void set(int n, int n2, byte by, int n3, int n4) {
        this.mData.setChar(n, n2, by, n3, n4);
    }

    @Override
    public void set(int n, int n2, int n3, int n4, int n5) {
        this.mData.setChar(n, n2, n3, n4, n5);
    }

    public void setColorScheme(ColorScheme colorScheme) {
        this.mData.setDefaultColors(colorScheme.getForeColorIndex(), colorScheme.getBackColorIndex());
    }

    @Override
    public void setLineWrap(int n) {
        this.mData.setLineWrap(n);
    }
}

