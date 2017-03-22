/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm.emulatorview;

import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.TextRenderer;

abstract class BaseTextRenderer
implements TextRenderer {
    static final ColorScheme defaultColorScheme = new ColorScheme(7, -3355444, 0, -16777216);
    protected static final int mCursorPaint = -8355712;
    protected int[] mBackPaint = new int[]{-16777216, -3407872, -16724992, -3355648, -16777012, -65332, -16724788, -1};
    protected int[] mForePaint = new int[]{-16777216, -3407872, -16724992, -3355648, -16777012, -3407668, -16724788, -3355444, -10066330, -65536, -16711936, -256, -16776961, -65281, -16711681, -1};

    public BaseTextRenderer(ColorScheme colorScheme) {
        ColorScheme colorScheme2 = colorScheme;
        if (colorScheme == null) {
            colorScheme2 = defaultColorScheme;
        }
        this.setDefaultColors(colorScheme2.getForeColorIndex(), colorScheme2.getForeColor(), colorScheme2.getBackColorIndex(), colorScheme2.getBackColor());
    }

    private void setDefaultColors(int n, int n2, int n3, int n4) {
        this.mForePaint[n] = n2;
        this.mBackPaint[n3] = n4;
    }
}

