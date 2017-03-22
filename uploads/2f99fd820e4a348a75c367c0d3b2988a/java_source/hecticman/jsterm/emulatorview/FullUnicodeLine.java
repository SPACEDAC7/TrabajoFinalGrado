/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm.emulatorview;

import hecticman.jsterm.emulatorview.UnicodeTranscript;

class FullUnicodeLine {
    private static final float SPARE_CAPACITY_FACTOR = 1.5f;
    private int mColumns;
    private short[] mOffset;
    private char[] mText;

    public FullUnicodeLine(int n) {
        this.commonConstructor(n);
        char[] arrc = this.mText;
        int n2 = 0;
        do {
            if (n2 >= n) {
                this.mOffset[0] = (short)n;
                return;
            }
            arrc[n2] = 32;
            ++n2;
        } while (true);
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
     * Enabled aggressive block sorting
     */
    public void setChar(int n, int n2) {
        int n3;
        int n4 = this.mColumns;
        if (n < 0 || n >= n4) {
            throw new IllegalArgumentException();
        }
        char[] arrc = this.mText;
        short[] arrs = this.mOffset;
        int n5 = arrs[0];
        int n6 = this.findStartOfColumn(n);
        int n7 = UnicodeTranscript.charWidth(n2);
        int n8 = Character.isHighSurrogate(arrc[n6]) ? UnicodeTranscript.charWidth(Character.toCodePoint(arrc[n6], arrc[n6 + 1])) : UnicodeTranscript.charWidth(arrc[n6]);
        int n9 = n + n8 < n4 ? this.findStartOfColumn(n + n8) - n6 : n5 - n6;
        int n10 = n3 = Character.charCount(n2);
        if (n7 == 0) {
            n10 = n3 + n9;
        }
        n3 = n10 - n9;
        char[] arrc2 = arrc;
        if (n3 > 0) {
            if (n5 + n3 > arrc.length) {
                char[] arrc3 = new char[arrc.length + n4];
                System.arraycopy(arrc, 0, arrc3, 0, n6);
                System.arraycopy(arrc, n6 + n9, arrc3, n6 + n10, n5 - n6 - n9);
                arrc2 = arrc3;
                this.mText = arrc3;
            } else {
                System.arraycopy(arrc, n6 + n9, arrc, n6 + n10, n5 - n6 - n9);
                arrc2 = arrc;
            }
        }
        if (n7 > 0) {
            Character.toChars(n2, arrc2, n6);
        } else {
            Character.toChars(n2, arrc2, n6 + n9);
        }
        if (n3 < 0) {
            System.arraycopy(arrc2, n6 + n9, arrc2, n6 + n10, n5 - n6 - n9);
        }
        int n11 = n5;
        if (n3 != 0) {
            n11 = n5 + n3;
            arrs[0] = (short)n11;
        }
        if (n8 == 2 && n7 == 1) {
            n2 = n6 + n10;
            if (n11 + 1 > arrc2.length) {
                arrc = new char[arrc2.length + n4];
                System.arraycopy(arrc2, 0, arrc, 0, n2);
                System.arraycopy(arrc2, n2, arrc, n2 + 1, n11 - n2);
                arrc2 = arrc;
                this.mText = arrc;
            } else {
                System.arraycopy(arrc2, n2, arrc2, n2 + 1, n11 - n2);
            }
            arrc2[n2] = 32;
            arrs[0] = (short)(arrs[0] + 1);
            if (n == 0) {
                arrs[1] = (short)(n10 - 1);
            } else if (n + 1 < n4) {
                arrs[n + 1] = (short)(arrs[n] + n10 - 1);
            }
            n9 = n + 1;
            n2 = n3 + 1;
        } else {
            n2 = n3;
            n9 = n;
            if (n8 == 1) {
                n2 = n3;
                n9 = n;
                if (n7 == 2) {
                    if (n == n4 - 1) {
                        arrc2[n6] = 32;
                        arrs[0] = (short)(n6 + 1);
                        n2 = 0;
                        n9 = n;
                    } else if (n == n4 - 2) {
                        arrs[n + 1] = (short)(arrs[n] - 1);
                        arrs[0] = (short)(n6 + n10);
                        n2 = 0;
                        n9 = n;
                    } else {
                        n8 = n6 + n10;
                        n2 = Character.isHighSurrogate(arrc2[n8]) ? UnicodeTranscript.charWidth(Character.toCodePoint(arrc2[n8], arrc2[n8 + 1])) : UnicodeTranscript.charWidth(arrc2[n8]);
                        n9 = n + n2 + 1 < n4 ? this.findStartOfColumn(n + n2 + 1) - n8 : n11 - n8;
                        if (n2 == 2) {
                            arrc2[n8] = 32;
                            n2 = n3;
                            if (n9 > 1) {
                                System.arraycopy(arrc2, n8 + n9, arrc2, n8 + 1, n11 - n8 - n9);
                                n2 = n3 - (n9 - 1);
                                arrs[0] = (short)(arrs[0] - (n9 - 1));
                            }
                        } else {
                            System.arraycopy(arrc2, n8 + n9, arrc2, n8, n11 - n8 - n9);
                            n2 = n3 - n9;
                            arrs[0] = (short)this.findStartOfColumn(n4 - 1);
                        }
                        if (n == 0) {
                            arrs[1] = -1;
                        } else {
                            arrs[n + 1] = (short)(arrs[n] - 1);
                        }
                        n9 = n + 1;
                    }
                }
            }
        }
        if (n2 != 0) {
            for (n = n9 + 1; n < n4; ++n) {
                arrs[n] = (short)(arrs[n] + n2);
            }
        }
    }
}

