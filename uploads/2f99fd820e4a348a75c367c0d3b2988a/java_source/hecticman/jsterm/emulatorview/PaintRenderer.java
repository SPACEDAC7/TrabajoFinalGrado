/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Typeface
 *  android.util.FloatMath
 */
package hecticman.jsterm.emulatorview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.FloatMath;
import hecticman.jsterm.emulatorview.BaseTextRenderer;
import hecticman.jsterm.emulatorview.ColorScheme;

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
    public void drawTextRun(Canvas canvas, float f, float f2, int n, int n2, char[] arrc, int n3, int n4, boolean bl, int n5, int n6) {
        block6 : {
            if (bl) {
                this.mTextPaint.setColor(-8355712);
            } else {
                this.mTextPaint.setColor(this.mBackPaint[n6 & 7]);
            }
            canvas.drawRect(f, (float)this.mCharAscent + f2 - (float)this.mCharDescent, (f += (float)n * this.mCharWidth) + (float)n2 * this.mCharWidth, f2, this.mTextPaint);
            n = (n5 & 8) != 0 ? 1 : 0;
            n2 = (n6 & 8) != 0 ? 1 : 0;
            if (n != 0) {
                this.mTextPaint.setFakeBoldText(true);
                if (n2 == 0) break block6;
            }
            this.mTextPaint.setUnderlineText(true);
        }
        this.mTextPaint.setColor(this.mForePaint[n5]);
        canvas.drawText(arrc, n3, n4, f, f2 - (float)this.mCharDescent, this.mTextPaint);
        if (n != 0) {
            this.mTextPaint.setFakeBoldText(false);
        }
        if (n2 != 0) {
            this.mTextPaint.setUnderlineText(false);
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

