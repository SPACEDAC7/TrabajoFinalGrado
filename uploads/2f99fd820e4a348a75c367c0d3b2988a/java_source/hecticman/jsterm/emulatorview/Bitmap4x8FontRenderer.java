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
package hecticman.jsterm.emulatorview;

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
import hecticman.jsterm.emulatorview.BaseTextRenderer;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.R;
import hecticman.jsterm.emulatorview.compat.AndroidCompat;

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
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void setColorMatrix(int n, int n2) {
        if (n == this.mCurrentForeColor && n2 == this.mCurrentBackColor && this.mColorMatrix != null) return;
        this.mCurrentForeColor = n;
        this.mCurrentBackColor = n2;
        if (this.mColorMatrix == null) {
            this.mColorMatrix = new float[20];
            this.mColorMatrix[18] = 1.0f;
        }
        int n3 = 0;
        do {
            if (n3 >= 3) {
                this.mPaint.setColorFilter((ColorFilter)new ColorMatrixColorFilter(this.mColorMatrix));
                return;
            }
            int n4 = 2 - n3 << 3;
            int n5 = n >> n4 & 255;
            this.mColorMatrix[n3 * 6] = (float)((n2 >> n4 & 255) - n5) * 0.003921569f;
            this.mColorMatrix[n3 * 5 + 4] = n5;
            ++n3;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void drawTextRun(Canvas canvas, float f, float f2, int n, int n2, char[] arrc, int n3, int n4, boolean bl, int n5, int n6) {
        n5 = this.mForePaint[n5];
        n2 = bl ? -8355712 : this.mBackPaint[n6 & 7];
        this.setColorMatrix(n5, n2);
        n2 = (int)f + n * 4;
        n = (int)f2;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        rect2.top = n - 8;
        rect2.bottom = n;
        n = 0;
        while (n < n4) {
            n6 = (char)(arrc[n + n3] & 255);
            if ((bl || n6 != 32) && n6 < 128) {
                n5 = (n6 & 31) * 4;
                n6 = (n6 >> 5 & 3) * 8;
                rect.set(n5, n6, n5 + 4, n6 + 8);
                rect2.left = n2;
                rect2.right = n2 + 4;
                canvas.drawBitmap(this.mFont, rect, rect2, this.mPaint);
            }
            n2 += 4;
            ++n;
        }
        return;
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

