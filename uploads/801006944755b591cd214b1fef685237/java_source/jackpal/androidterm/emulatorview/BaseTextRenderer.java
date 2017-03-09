/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.ColorMatrix
 *  android.graphics.ColorMatrixColorFilter
 *  android.graphics.Matrix
 *  android.graphics.Matrix$ScaleToFit
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.graphics.RectF
 */
package jackpal.androidterm.emulatorview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.TextRenderer;

abstract class BaseTextRenderer
implements TextRenderer {
    static final ColorScheme defaultColorScheme;
    private static final Matrix.ScaleToFit mScaleType;
    protected static final int[] sXterm256Paint;
    private final Path mAltCursor;
    private final Paint mCopyRedToAlphaPaint;
    private final Path mCtrlCursor;
    private Bitmap mCursorBitmap;
    private int mCursorBitmapCursorMode = -1;
    private final Paint mCursorPaint;
    private final Paint mCursorScreenPaint;
    private final Paint mCursorStrokePaint;
    private final Path mFnCursor;
    private float mLastCharHeight;
    private float mLastCharWidth;
    protected int[] mPalette;
    protected boolean mReverseVideo;
    private Matrix mScaleMatrix;
    private final Path mShiftCursor;
    private RectF mTempDst;
    private RectF mTempSrc;
    private Bitmap mWorkBitmap;

    static {
        sXterm256Paint = new int[]{-16777216, -3342336, -16724736, -3289856, -16776978, -3342131, -16724531, -1710619, -8421505, -65536, -16711936, -256, -10724097, -65281, -16711681, -1, -16777216, -16777121, -16777081, -16777041, -16777001, -16776961, -16752896, -16752801, -16752761, -16752721, -16752681, -16752641, -16742656, -16742561, -16742521, -16742481, -16742441, -16742401, -16732416, -16732321, -16732281, -16732241, -16732201, -16732161, -16722176, -16722081, -16722041, -16722001, -16721961, -16721921, -16711936, -16711841, -16711801, -16711761, -16711721, -16711681, -10551296, -10551201, -10551161, -10551121, -10551081, -10551041, -10526976, -10526881, -10526841, -10526801, -10526761, -10526721, -10516736, -10516641, -10516601, -10516561, -10516521, -10516481, -10506496, -10506401, -10506361, -10506321, -10506281, -10506241, -10496256, -10496161, -10496121, -10496081, -10496041, -10496001, -10486016, -10485921, -10485881, -10485841, -10485801, -10485761, -7929856, -7929761, -7929721, -7929681, -7929641, -7929601, -7905536, -7905441, -7905401, -7905361, -7905321, -7905281, -7895296, -7895201, -7895161, -7895121, -7895081, -7895041, -7885056, -7884961, -7884921, -7884881, -7884841, -7884801, -7874816, -7874721, -7874681, -7874641, -7874601, -7874561, -7864576, -7864481, -7864441, -7864401, -7864361, -7864321, -5308416, -5308321, -5308281, -5308241, -5308201, -5308161, -5284096, -5284001, -5283961, -5283921, -5283881, -5283841, -5273856, -5273761, -5273721, -5273681, -5273641, -5273601, -5263616, -5263521, -5263481, -5263441, -5263401, -5263361, -5253376, -5253281, -5253241, -5253201, -5253161, -5253121, -5243136, -5243041, -5243001, -5242961, -5242921, -5242881, -2686976, -2686881, -2686841, -2686801, -2686761, -2686721, -2662656, -2662561, -2662521, -2662481, -2662441, -2662401, -2652416, -2652321, -2652281, -2652241, -2652201, -2652161, -2642176, -2642081, -2642041, -2642001, -2641961, -2641921, -2631936, -2631841, -2631801, -2631761, -2631721, -2631681, -2621696, -2621601, -2621561, -2621521, -2621481, -2621441, -65536, -65441, -65401, -65361, -65321, -65281, -41216, -41121, -41081, -41041, -41001, -40961, -30976, -30881, -30841, -30801, -30761, -30721, -20736, -20641, -20601, -20561, -20521, -20481, -10496, -10401, -10361, -10321, -10281, -10241, -256, -161, -121, -81, -41, -1, -16250872, -15592942, -14935012, -14277082, -13619152, -12961222, -12303292, -11645362, -10987432, -10329502, -9671572, -9013642, -8355712, -7697782, -7039852, -6381922, -5723992, -5066062, -4408132, -3750202, -3092272, -2434342, -1776412, -1118482};
        defaultColorScheme = new ColorScheme(-3355444, -16777216);
        mScaleType = Matrix.ScaleToFit.FILL;
    }

    public BaseTextRenderer(ColorScheme colorScheme) {
        ColorScheme colorScheme2 = colorScheme;
        if (colorScheme == null) {
            colorScheme2 = defaultColorScheme;
        }
        this.setDefaultColors(colorScheme2);
        this.mCursorScreenPaint = new Paint();
        this.mCursorScreenPaint.setColor(colorScheme2.getCursorBackColor());
        this.mCursorPaint = new Paint();
        this.mCursorPaint.setColor(-7303024);
        this.mCursorPaint.setAntiAlias(true);
        this.mCursorStrokePaint = new Paint(this.mCursorPaint);
        this.mCursorStrokePaint.setStrokeWidth(0.1f);
        this.mCursorStrokePaint.setStyle(Paint.Style.STROKE);
        this.mCopyRedToAlphaPaint = new Paint();
        colorScheme = new ColorMatrix();
        colorScheme.set(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        this.mCopyRedToAlphaPaint.setColorFilter((ColorFilter)new ColorMatrixColorFilter((ColorMatrix)colorScheme));
        this.mShiftCursor = new Path();
        this.mShiftCursor.lineTo(0.5f, 0.33f);
        this.mShiftCursor.lineTo(1.0f, 0.0f);
        this.mAltCursor = new Path();
        this.mAltCursor.moveTo(0.0f, 1.0f);
        this.mAltCursor.lineTo(0.5f, 0.66f);
        this.mAltCursor.lineTo(1.0f, 1.0f);
        this.mCtrlCursor = new Path();
        this.mCtrlCursor.moveTo(0.0f, 0.25f);
        this.mCtrlCursor.lineTo(1.0f, 0.5f);
        this.mCtrlCursor.lineTo(0.0f, 0.75f);
        this.mFnCursor = new Path();
        this.mFnCursor.moveTo(1.0f, 0.25f);
        this.mFnCursor.lineTo(0.0f, 0.5f);
        this.mFnCursor.lineTo(1.0f, 0.75f);
        this.mTempSrc = new RectF();
        this.mTempSrc.set(0.0f, 0.0f, 1.0f, 1.0f);
        this.mTempDst = new RectF();
        this.mScaleMatrix = new Matrix();
    }

    private static int[] cloneDefaultColors() {
        int n = sXterm256Paint.length;
        int[] arrn = new int[260];
        System.arraycopy(sXterm256Paint, 0, arrn, 0, n);
        return arrn;
    }

    private void drawCursorHelper(Canvas canvas, Path path, int n, int n2) {
        switch (n >> n2 & 3) {
            default: {
                return;
            }
            case 1: {
                canvas.drawPath(path, this.mCursorStrokePaint);
                return;
            }
            case 2: 
        }
        canvas.drawPath(path, this.mCursorPaint);
    }

    private void setDefaultColors(ColorScheme colorScheme) {
        this.mPalette = BaseTextRenderer.cloneDefaultColors();
        this.mPalette[256] = colorScheme.getForeColor();
        this.mPalette[257] = colorScheme.getBackColor();
        this.mPalette[258] = colorScheme.getCursorForeColor();
        this.mPalette[259] = colorScheme.getCursorBackColor();
    }

    protected void drawCursorImp(Canvas canvas, float f, float f2, float f3, float f4, int n) {
        if (n == 0) {
            canvas.drawRect(f, f2 - f4, f + f3, f2, this.mCursorScreenPaint);
            return;
        }
        if (f3 != this.mLastCharWidth || f4 != this.mLastCharHeight) {
            this.mLastCharWidth = f3;
            this.mLastCharHeight = f4;
            this.mTempDst.set(0.0f, 0.0f, f3, f4);
            this.mScaleMatrix.setRectToRect(this.mTempSrc, this.mTempDst, mScaleType);
            this.mCursorBitmap = Bitmap.createBitmap((int)((int)f3), (int)((int)f4), (Bitmap.Config)Bitmap.Config.ALPHA_8);
            this.mWorkBitmap = Bitmap.createBitmap((int)((int)f3), (int)((int)f4), (Bitmap.Config)Bitmap.Config.ARGB_8888);
            this.mCursorBitmapCursorMode = -1;
        }
        if (n != this.mCursorBitmapCursorMode) {
            this.mCursorBitmapCursorMode = n;
            this.mWorkBitmap.eraseColor(-1);
            Canvas canvas2 = new Canvas(this.mWorkBitmap);
            canvas2.concat(this.mScaleMatrix);
            this.drawCursorHelper(canvas2, this.mShiftCursor, n, 0);
            this.drawCursorHelper(canvas2, this.mAltCursor, n, 2);
            this.drawCursorHelper(canvas2, this.mCtrlCursor, n, 4);
            this.drawCursorHelper(canvas2, this.mFnCursor, n, 6);
            this.mCursorBitmap.eraseColor(0);
            new Canvas(this.mCursorBitmap).drawBitmap(this.mWorkBitmap, 0.0f, 0.0f, this.mCopyRedToAlphaPaint);
        }
        canvas.drawBitmap(this.mCursorBitmap, f, f2 - f4, this.mCursorScreenPaint);
    }

    @Override
    public void setReverseVideo(boolean bl) {
        this.mReverseVideo = bl;
    }
}

