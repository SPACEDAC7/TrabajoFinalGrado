/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

final class TextStyle {
    static final int ciBackground = 257;
    static final int ciColorLength = 260;
    static final int ciCursorBackground = 259;
    static final int ciCursorForeground = 258;
    static final int ciForeground = 256;
    static final int fxBlink = 8;
    static final int fxBold = 1;
    static final int fxInverse = 16;
    static final int fxInvisible = 32;
    static final int fxItalic = 2;
    static final int fxNormal = 0;
    static final int fxUnderline = 4;
    static final int kNormalTextStyle = TextStyle.encode(256, 257, 0);

    private TextStyle() {
        throw new UnsupportedOperationException();
    }

    static int decodeBackColor(int n) {
        return n & 511;
    }

    static int decodeEffect(int n) {
        return n >> 18 & 63;
    }

    static int decodeForeColor(int n) {
        return n >> 9 & 511;
    }

    static int encode(int n, int n2, int n3) {
        return (n3 & 63) << 18 | (n & 511) << 9 | n2 & 511;
    }
}

