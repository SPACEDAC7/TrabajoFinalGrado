/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Typeface
 *  android.util.FloatMath
 */
package jackpal.androidterm.emulatorview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.FloatMath;
import jackpal.androidterm.emulatorview.BaseTextRenderer;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.TextStyle;

class PaintRenderer
extends BaseTextRenderer {
    private static final char[] EXAMPLE_CHAR = new char[]{'X'};
    private int mCharAscent;
    private int mCharDescent;
    private int mCharHeight;
    private float mCharWidth;
    private Paint mTextPaint = new Paint();

    public PaintRenderer(int n, ColorScheme colorScheme) {
        super(colorScheme);
        this.mTextPaint.setTypeface(Typeface.MONOSPACE);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTextSize((float)n);
        this.mCharHeight = (int)FloatMath.ceil((float)this.mTextPaint.getFontSpacing());
        this.mCharAscent = (int)FloatMath.ceil((float)this.mTextPaint.ascent());
        this.mCharDescent = this.mCharHeight + this.mCharAscent;
        this.mCharWidth = this.mTextPaint.measureText(EXAMPLE_CHAR, 0, 1);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void drawTextRun(Canvas canvas, float f, float f2, int n, int n2, char[] arrc, int n3, int n4, boolean bl, int n5, int n6, int n7, int n8, int n9, int n10) {
        int n11 = TextStyle.decodeForeColor(n5);
        int n12 = TextStyle.decodeBackColor(n5);
        int n13 = TextStyle.decodeEffect(n5);
        boolean bl2 = this.mReverseVideo;
        boolean bl3 = (n13 & 18) != 0;
        n5 = n12;
        int n14 = n11;
        if (bl2 ^ bl3) {
            n14 = n12;
            n5 = n11;
        }
        if (bl) {
            n5 = 259;
        }
        n11 = (n13 & 8) != 0 ? 1 : 0;
        n12 = n5;
        if (n11 != 0) {
            n12 = n5;
            if (n5 < 8) {
                n12 = n5 + 8;
            }
        }
        this.mTextPaint.setColor(this.mPalette[n12]);
        float f3 = f + (float)n * this.mCharWidth;
        canvas.drawRect(f3, (float)this.mCharAscent + f2 - (float)this.mCharDescent, f3 + (float)n2 * this.mCharWidth, f2, this.mTextPaint);
        n = n <= n6 && n6 < n + n2 ? 1 : 0;
        float f4 = 0.0f;
        if (n != 0) {
            f4 = f + (float)n6 * this.mCharWidth;
            this.drawCursorImp(canvas, (int)f4, f2, (float)n9 * this.mCharWidth, this.mCharHeight, n10);
        }
        if ((n13 & 32) != 0) {
            return;
        }
        n2 = 0;
        if (n2 == 0) {
            block15 : {
                n2 = (n13 & 1) != 0 ? 1 : 0;
                n5 = (n13 & 4) != 0 ? 1 : 0;
                if (n2 != 0) {
                    this.mTextPaint.setFakeBoldText(true);
                    if (n5 == 0) break block15;
                }
                this.mTextPaint.setUnderlineText(true);
            }
            n6 = n14 < 8 && n2 != 0 ? this.mPalette[n14 + 8] : this.mPalette[n14];
            this.mTextPaint.setColor(n6);
            f = f2 - (float)this.mCharDescent;
            if (n != 0) {
                n = n7 - n3;
                n4 -= n + n8;
                if (n > 0) {
                    canvas.drawText(arrc, n3, n, f3, f, this.mTextPaint);
                }
                this.mTextPaint.setColor(this.mPalette[258]);
                canvas.drawText(arrc, n7, n8, f4, f, this.mTextPaint);
                if (n4 > 0) {
                    this.mTextPaint.setColor(n6);
                    canvas.drawText(arrc, n7 + n8, n4, f4 + (float)n9 * this.mCharWidth, f, this.mTextPaint);
                }
            } else {
                canvas.drawText(arrc, n3, n4, f3, f, this.mTextPaint);
            }
            if (n2 != 0) {
                this.mTextPaint.setFakeBoldText(false);
            }
            if (n5 != 0) {
                this.mTextPaint.setUnderlineText(false);
            }
        }
    }

    @Override
    public int getCharacterHeight() {
        return this.mCharHeight;
    }

    @Override
    public float getCharacterWidth() {
        return this.mCharWidth;
    }

    @Override
    public int getTopMargin() {
        return this.mCharDescent;
    }
}

