/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

public class ColorScheme {
    private static final int sDefaultCursorBackColor = -8355712;
    private int backColor;
    private int cursorBackColor;
    private int cursorForeColor;
    private int foreColor;

    public ColorScheme(int n, int n2) {
        this.foreColor = n;
        this.backColor = n2;
        this.setDefaultCursorColors();
    }

    public ColorScheme(int n, int n2, int n3, int n4) {
        this.foreColor = n;
        this.backColor = n2;
        this.cursorForeColor = n3;
        this.cursorBackColor = n4;
    }

    public ColorScheme(int[] arrn) {
        int n = arrn.length;
        if (n != 2 && n != 4) {
            throw new IllegalArgumentException();
        }
        this.foreColor = arrn[0];
        this.backColor = arrn[1];
        if (n == 2) {
            this.setDefaultCursorColors();
            return;
        }
        this.cursorForeColor = arrn[2];
        this.cursorBackColor = arrn[3];
    }

    private static int channelDistance(int n, int n2, int n3) {
        return Math.abs(ColorScheme.getChannel(n, n3) - ColorScheme.getChannel(n2, n3));
    }

    private static int distance(int n, int n2) {
        return ColorScheme.channelDistance(n, n2, 0) * 3 + ColorScheme.channelDistance(n, n2, 1) * 5 + ColorScheme.channelDistance(n, n2, 2);
    }

    private static int getChannel(int n, int n2) {
        return n >> (2 - n2) * 8 & 255;
    }

    private void setDefaultCursorColors() {
        this.cursorBackColor = -8355712;
        if (ColorScheme.distance(this.foreColor, this.cursorBackColor) * 2 >= ColorScheme.distance(this.backColor, this.cursorBackColor)) {
            this.cursorForeColor = this.foreColor;
            return;
        }
        this.cursorForeColor = this.backColor;
    }

    public int getBackColor() {
        return this.backColor;
    }

    public int getCursorBackColor() {
        return this.cursorBackColor;
    }

    public int getCursorForeColor() {
        return this.cursorForeColor;
    }

    public int getForeColor() {
        return this.foreColor;
    }
}

