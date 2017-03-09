/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.BitmapFactory
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.ColorMatrixColorFilter
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.PorterDuffXfermode
 *  android.graphics.Rect
 *  android.graphics.Xfermode
 */
package jackpal.androidterm.emulatorview;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Xfermode;
import jackpal.androidterm.emulatorview.BaseTextRenderer;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.R;
import jackpal.androidterm.emulatorview.TextStyle;
import jackpal.androidterm.emulatorview.compat.AndroidCompat;

class Bitmap4x8FontRenderer
extends BaseTextRenderer {
    private static final float BYTE_SCALE = 0.003921569f;
    private static final int kCharacterHeight = 8;
    private static final int kCharacterWidth = 4;
    private float[] mColorMatrix;
    private int mCurrentBackColor;
    private int mCurrentForeColor;
    private Bitmap mFont;
    private Paint mPaint;

    /*
     * Enabled aggressive block sorting
     */
    public Bitmap4x8FontRenderer(Resources resources, ColorScheme colorScheme) {
        super(colorScheme);
        int n = AndroidCompat.SDK <= 3 ? R.drawable.atari_small : R.drawable.atari_small_nodpi;
        this.mFont = BitmapFactory.decodeResource((Resources)resources, (int)n);
        this.mPaint = new Paint();
        this.mPaint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void drawTextRunHelper(Canvas canvas, float f, float f2, int n, char[] arrc, int n2, int n3, int n4, int n5) {
        this.setColorMatrix(this.mPalette[n4], this.mPalette[n5]);
        int n6 = (int)f + n * 4;
        n = (int)f2;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        rect2.top = n - 8;
        rect2.bottom = n;
        n = this.mPalette[n5] != this.mPalette[257] ? 1 : 0;
        n4 = 0;
        n5 = n6;
        while (n4 < n3) {
            int n7 = arrc[n4 + n2];
            if (n7 < 128 && (n7 != 32 || n != 0)) {
                n6 = (n7 & 31) * 4;
                n7 = (n7 >> 5 & 3) * 8;
                rect.set(n6, n7, n6 + 4, n7 + 8);
                rect2.left = n5;
                rect2.right = n5 + 4;
                canvas.drawBitmap(this.mFont, rect, rect2, this.mPaint);
            }
            n5 += 4;
            ++n4;
        }
        return;
    }

    private void setColorMatrix(int n, int n2) {
        if (n != this.mCurrentForeColor || n2 != this.mCurrentBackColor || this.mColorMatrix == null) {
            this.mCurrentForeColor = n;
            this.mCurrentBackColor = n2;
            if (this.mColorMatrix == null) {
                this.mColorMatrix = new float[20];
                this.mColorMatrix[18] = 1.0f;
            }
            for (int i = 0; i < 3; ++i) {
                int n3 = 2 - i << 3;
                int n4 = n >> n3 & 255;
                this.mColorMatrix[i * 6] = (float)((n2 >> n3 & 255) - n4) * 0.003921569f;
                this.mColorMatrix[i * 5 + 4] = n4;
            }
            this.mPaint.setColorFilter((ColorFilter)new ColorMatrixColorFilter(this.mColorMatrix));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void drawTextRun(Canvas canvas, float f, float f2, int n, int n2, char[] arrc, int n3, int n4, boolean bl, int n5, int n6, int n7, int n8, int n9, int n10) {
        n8 = TextStyle.decodeForeColor(n5);
        n9 = TextStyle.decodeBackColor(n5);
        n10 = TextStyle.decodeEffect(n5);
        int n11 = this.mReverseVideo;
        n5 = (n10 & 18) != 0 ? 1 : 0;
        n7 = n8;
        n2 = n9;
        if ((n11 ^ n5) != 0) {
            n7 = n9;
            n2 = n8;
        }
        n8 = (n10 & 1) != 0 ? 1 : 0;
        n5 = n7;
        if (n8 != 0) {
            n5 = n7;
            if (n7 < 8) {
                n5 = n7 + 8;
            }
        }
        n8 = (n10 & 8) != 0 ? 1 : 0;
        n7 = n2;
        if (n8 != 0) {
            n7 = n2;
            if (n2 < 8) {
                n7 = n2 + 8;
            }
        }
        n2 = n7;
        if (bl) {
            n2 = 259;
        }
        n7 = (n10 & 32) != 0 ? 1 : 0;
        if (n7 != 0) {
            n5 = n2;
        }
        this.drawTextRunHelper(canvas, f, f2, n, arrc, n3, n4, n5, n2);
        if (n <= n6 && n6 < n + n4) {
            this.drawTextRunHelper(canvas, f, f2, n6, arrc, n6 - n, 1, 258, 259);
        }
    }

    @Override
    public int getCharacterHeight() {
        return 8;
    }

    @Override
    public float getCharacterWidth() {
        return 4.0f;
    }

    @Override
    public int getTopMargin() {
        return 0;
    }
}

