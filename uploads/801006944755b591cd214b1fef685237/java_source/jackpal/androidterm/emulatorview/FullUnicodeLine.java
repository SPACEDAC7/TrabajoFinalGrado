/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

class FullUnicodeLine {
    private static final float SPARE_CAPACITY_FACTOR = 1.5f;
    private int mColumns;
    private short[] mOffset;
    private char[] mText;

    public FullUnicodeLine(int n) {
        this.commonConstructor(n);
        char[] arrc = this.mText;
        for (int i = 0; i < n; ++i) {
            arrc[i] = 32;
        }
        this.mOffset[0] = (short)n;
    }

    public FullUnicodeLine(char[] arrc) {
        this.commonConstructor(arrc.length);
        System.arraycopy(arrc, 0, this.mText, 0, this.mColumns);
        this.mOffset[0] = (short)arrc.length;
    }

    private void commonConstructor(int n) {
        this.mColumns = n;
        this.mOffset = new short[n];
        this.mText = new char[(int)(1.5f * (float)n)];
    }

    public int findStartOfColumn(int n) {
        if (n == 0) {
            return 0;
        }
        return this.mOffset[n] + n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean getChar(int n, int n2, char[] arrc, int n3) {
        int n4 = this.findStartOfColumn(n);
        n = n + 1 < this.mColumns ? this.findStartOfColumn(n + 1) - n4 : this.getSpaceUsed() - n4;
        if (n2 >= n) {
            throw new IllegalArgumentException();
        }
        arrc[n3] = this.mText[n4 + n2];
        if (n2 + 1 < n) {
            return true;
        }
        return false;
    }

    public char[] getLine() {
        return this.mText;
    }

    public int getSpaceUsed() {
        return this.mOffset[0];
    }

    /*
     * Exception decompiling
     */
    public void setChar(int var1_1, int var2_2) {
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
}

