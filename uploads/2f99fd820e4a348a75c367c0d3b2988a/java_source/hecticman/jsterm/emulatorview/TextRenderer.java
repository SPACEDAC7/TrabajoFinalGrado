/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 */
package hecticman.jsterm.emulatorview;

import android.graphics.Canvas;

interface TextRenderer {
    public void drawTextRun(Canvas var1, float var2, float var3, int var4, int var5, char[] var6, int var7, int var8, boolean var9, int var10, int var11);

    public int getCharacterHeight();

    public float getCharacterWidth();

    public int getTopMargin();
}

