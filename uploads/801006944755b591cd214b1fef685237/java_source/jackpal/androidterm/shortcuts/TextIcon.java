/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Paint$Align
 *  android.graphics.Rect
 *  android.util.FloatMath
 */
package jackpal.androidterm.shortcuts;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.FloatMath;

public class TextIcon {
    /*
     * Enabled aggressive block sorting
     */
    public static Bitmap getTextIcon(String arrstring, int n, int n2, int n3) {
        float f;
        int n4;
        arrstring = arrstring.trim().split("\\s*\n\\s*");
        int n5 = arrstring.length;
        Rect rect = new Rect();
        Paint paint = new Paint(1);
        paint.setShadowLayer(2.0f, 10.0f, 10.0f, -16777216);
        paint.setColor(n);
        paint.setSubpixelText(true);
        paint.setTextSize(256.0f);
        paint.setTextAlign(Paint.Align.CENTER);
        float[] arrf = new float[n5];
        float f2 = 0.0f;
        float f3 = 0.0f;
        for (n = 0; n < n5; ++n) {
            paint.getTextBounds(arrstring[n], 0, arrstring[n].length(), rect);
            float f4 = Float.valueOf(Math.abs(rect.top - rect.bottom)).floatValue();
            float f5 = Float.valueOf(Math.abs(rect.right - rect.left)).floatValue();
            f = f4;
            if (n5 > 1) {
                f = f4 + 0.1f * f4;
            }
            arrf[n] = f;
            f2 += f;
            f = f3;
            if (f5 > f3) {
                f = f5;
            }
            f3 = f;
        }
        f = (float)n2 * f2 / (float)n3;
        n = (int)f2;
        n = (int)f3;
        if (f3 < f) {
            n4 = (int)FloatMath.ceil((float)f);
            n = (int)FloatMath.ceil((float)f2);
        } else {
            n4 = (int)FloatMath.ceil((float)f3);
            n = (int)FloatMath.ceil((float)(n3 * n4 / n2));
        }
        rect = Bitmap.createBitmap((int)n4, (int)n, (Bitmap.Config)Bitmap.Config.ARGB_8888);
        rect.setDensity(0);
        Canvas canvas = new Canvas((Bitmap)rect);
        f = (float)n4 / 2.0f;
        f3 = (float)n / 2.0f - f2 / 2.0f + arrf[0] / 2.0f;
        n = 0;
        while (n < n5) {
            canvas.drawText(arrstring[n], f, f3 += arrf[n] / 2.0f, paint);
            f3 += arrf[n] / 2.0f;
            ++n;
        }
        return Bitmap.createScaledBitmap((Bitmap)rect, (int)n2, (int)n3, (boolean)true);
    }
}

