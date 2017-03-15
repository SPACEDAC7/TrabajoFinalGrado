/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Matrix
 *  android.graphics.Paint
 *  android.graphics.RectF
 *  android.media.ExifInterface
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 */
package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public final class TransformationUtils {
    public static final int PAINT_FLAGS = 6;
    private static final String TAG = "TransformationUtils";

    private TransformationUtils() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bitmap centerCrop(Bitmap bitmap, Bitmap bitmap2, int n2, int n3) {
        float f2;
        Bitmap bitmap3;
        if (bitmap2 == null) {
            return null;
        }
        if (bitmap2.getWidth() == n2) {
            bitmap3 = bitmap2;
            if (bitmap2.getHeight() == n3) return bitmap3;
        }
        float f3 = 0.0f;
        float f4 = 0.0f;
        bitmap3 = new Matrix();
        if (bitmap2.getWidth() * n3 > bitmap2.getHeight() * n2) {
            f2 = (float)n3 / (float)bitmap2.getHeight();
            f3 = ((float)n2 - (float)bitmap2.getWidth() * f2) * 0.5f;
        } else {
            f2 = (float)n2 / (float)bitmap2.getWidth();
            f4 = ((float)n3 - (float)bitmap2.getHeight() * f2) * 0.5f;
        }
        bitmap3.setScale(f2, f2);
        bitmap3.postTranslate((float)((int)(f3 + 0.5f)), (float)((int)(f4 + 0.5f)));
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap((int)n2, (int)n3, (Bitmap.Config)TransformationUtils.getSafeConfig(bitmap2));
        }
        TransformationUtils.setAlpha(bitmap2, bitmap);
        new Canvas(bitmap).drawBitmap(bitmap2, (Matrix)bitmap3, new Paint(6));
        return bitmap;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bitmap fitCenter(Bitmap bitmap, BitmapPool bitmapPool, int n2, int n3) {
        Bitmap bitmap2;
        if (bitmap.getWidth() == n2 && bitmap.getHeight() == n3) {
            if (!Log.isLoggable((String)"TransformationUtils", (int)2)) return bitmap;
            {
                Log.v((String)"TransformationUtils", (String)"requested target size matches input, returning input");
            }
            return bitmap;
        }
        float f2 = Math.min((float)n2 / (float)bitmap.getWidth(), (float)n3 / (float)bitmap.getHeight());
        int n4 = (int)((float)bitmap.getWidth() * f2);
        int n5 = (int)((float)bitmap.getHeight() * f2);
        if (bitmap.getWidth() == n4 && bitmap.getHeight() == n5) {
            if (!Log.isLoggable((String)"TransformationUtils", (int)2)) return bitmap;
            {
                Log.v((String)"TransformationUtils", (String)"adjusted target size matches input, returning input");
                return bitmap;
            }
        }
        Bitmap.Config config = TransformationUtils.getSafeConfig(bitmap);
        bitmapPool = bitmap2 = bitmapPool.get(n4, n5, config);
        if (bitmap2 == null) {
            bitmapPool = Bitmap.createBitmap((int)n4, (int)n5, (Bitmap.Config)config);
        }
        TransformationUtils.setAlpha(bitmap, (Bitmap)bitmapPool);
        if (Log.isLoggable((String)"TransformationUtils", (int)2)) {
            Log.v((String)"TransformationUtils", (String)("request: " + n2 + "x" + n3));
            Log.v((String)"TransformationUtils", (String)("toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight()));
            Log.v((String)"TransformationUtils", (String)("toReuse: " + bitmapPool.getWidth() + "x" + bitmapPool.getHeight()));
            Log.v((String)"TransformationUtils", (String)("minPct:   " + f2));
        }
        bitmap2 = new Canvas((Bitmap)bitmapPool);
        config = new Matrix();
        config.setScale(f2, f2);
        bitmap2.drawBitmap(bitmap, (Matrix)config, new Paint(6));
        return bitmapPool;
    }

    public static int getExifOrientationDegrees(int n2) {
        switch (n2) {
            default: {
                return 0;
            }
            case 5: 
            case 6: {
                return 90;
            }
            case 3: 
            case 4: {
                return 180;
            }
            case 7: 
            case 8: 
        }
        return 270;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Deprecated
    @TargetApi(value=5)
    public static int getOrientation(String string2) {
        int n2 = 0;
        try {
            int n3 = TransformationUtils.getExifOrientationDegrees(new ExifInterface(string2).getAttributeInt("Orientation", 0));
            return n3;
        }
        catch (Exception var1_3) {
            if (!Log.isLoggable((String)"TransformationUtils", (int)6)) return n2;
            Log.e((String)"TransformationUtils", (String)("Unable to get orientation for image with path=" + string2), (Throwable)var1_3);
            return 0;
        }
    }

    private static Bitmap.Config getSafeConfig(Bitmap bitmap) {
        if (bitmap.getConfig() != null) {
            return bitmap.getConfig();
        }
        return Bitmap.Config.ARGB_8888;
    }

    static void initializeMatrixForRotation(int n2, Matrix matrix) {
        switch (n2) {
            default: {
                return;
            }
            case 2: {
                matrix.setScale(-1.0f, 1.0f);
                return;
            }
            case 3: {
                matrix.setRotate(180.0f);
                return;
            }
            case 4: {
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            }
            case 5: {
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            }
            case 6: {
                matrix.setRotate(90.0f);
                return;
            }
            case 7: {
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            }
            case 8: 
        }
        matrix.setRotate(-90.0f);
    }

    @Deprecated
    public static Bitmap orientImage(String string2, Bitmap bitmap) {
        return TransformationUtils.rotateImage(bitmap, TransformationUtils.getOrientation(string2));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Bitmap rotateImage(Bitmap bitmap, int n2) {
        Bitmap bitmap2;
        Bitmap bitmap3 = bitmap2 = bitmap;
        if (n2 == 0) return bitmap3;
        try {
            bitmap3 = new Matrix();
            bitmap3.setRotate((float)n2);
            return Bitmap.createBitmap((Bitmap)bitmap, (int)0, (int)0, (int)bitmap.getWidth(), (int)bitmap.getHeight(), (Matrix)bitmap3, (boolean)true);
        }
        catch (Exception var0_1) {
            bitmap3 = bitmap2;
            if (!Log.isLoggable((String)"TransformationUtils", (int)6)) return bitmap3;
            Log.e((String)"TransformationUtils", (String)"Exception when trying to orient image", (Throwable)var0_1);
            return bitmap2;
        }
    }

    public static Bitmap rotateImageExif(Bitmap bitmap, BitmapPool bitmapPool, int n2) {
        Bitmap bitmap2;
        Matrix matrix = new Matrix();
        TransformationUtils.initializeMatrixForRotation(n2, matrix);
        if (matrix.isIdentity()) {
            return bitmap;
        }
        RectF rectF = new RectF(0.0f, 0.0f, (float)bitmap.getWidth(), (float)bitmap.getHeight());
        matrix.mapRect(rectF);
        n2 = Math.round(rectF.width());
        int n3 = Math.round(rectF.height());
        Bitmap.Config config = TransformationUtils.getSafeConfig(bitmap);
        bitmapPool = bitmap2 = bitmapPool.get(n2, n3, config);
        if (bitmap2 == null) {
            bitmapPool = Bitmap.createBitmap((int)n2, (int)n3, (Bitmap.Config)config);
        }
        matrix.postTranslate(- rectF.left, - rectF.top);
        new Canvas((Bitmap)bitmapPool).drawBitmap(bitmap, matrix, new Paint(6));
        return bitmapPool;
    }

    @TargetApi(value=12)
    public static void setAlpha(Bitmap bitmap, Bitmap bitmap2) {
        if (Build.VERSION.SDK_INT >= 12 && bitmap2 != null) {
            bitmap2.setHasAlpha(bitmap.hasAlpha());
        }
    }
}

