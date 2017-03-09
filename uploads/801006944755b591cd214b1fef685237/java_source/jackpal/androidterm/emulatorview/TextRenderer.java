/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 */
package jackpal.androidterm.emulatorview;

import android.graphics.Canvas;

interface TextRenderer {
    public static final int MODE_ALT_SHIFT = 2;
    public static final int MODE_CTRL_SHIFT = 4;
    public static final int MODE_FN_SHIFT = 6;
    public static final int MODE_LOCKED = 2;
    public static final int MODE_MASK = 3;
    public static final int MODE_OFF = 0;
    public static final int MODE_ON = 1;
    public static final int MODE_SHIFT_SHIFT = 0;

    public void drawTextRun(Canvas var1, float var2, float var3, int var4, int var5, char[] var6, int var7, int var8, boolean var9, int var10, int var11, int var12, int var13, int var14, int var15);

    public int getCharacterHeight();

    public float getCharacterWidth();

    public int getTopMargin();

    public void setReverseVideo(boolean var1);
}

