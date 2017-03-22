/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm.emulatorview;

public class ColorScheme {
    private int backColor;
    private int backColorIndex;
    private int foreColor;
    private int foreColorIndex;

    public ColorScheme(int n, int n2, int n3, int n4) {
        this.foreColorIndex = n;
        this.foreColor = n2;
        this.backColorIndex = n3;
        this.backColor = n4;
    }

    public ColorScheme(int[] arrn) {
        if (arrn.length != 4) {
            throw new IllegalArgumentException();
        }
        this.foreColorIndex = arrn[0];
        this.foreColor = arrn[1];
        this.backColorIndex = arrn[2];
        this.backColor = arrn[3];
    }

    public int getBackColor() {
        return this.backColor;
    }

    public int getBackColorIndex() {
        return this.backColorIndex;
    }

    public int getForeColor() {
        return this.foreColor;
    }

    public int getForeColorIndex() {
        return this.foreColorIndex;
    }
}

