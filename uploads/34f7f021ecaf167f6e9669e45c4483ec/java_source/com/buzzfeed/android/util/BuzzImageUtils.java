/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$CompressFormat
 *  android.graphics.BitmapFactory
 *  android.graphics.BitmapFactory$Options
 *  android.graphics.Matrix
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.buzzfeed.android.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Build;
import com.buzzfeed.android.util.ExifUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class BuzzImageUtils {
    private static int CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH = 425;
    private static final String TAG = BuzzImageUtils.class.getSimpleName();

    public static void downsizeImageSaveToPathOut(String string2, String object) {
        String string3 = TAG + ".downsizeImageSaveToPathOut";
        string2 = BuzzImageUtils.resizeImage(string2);
        try {
            object = new FileOutputStream((String)object);
            string2.compress(Bitmap.CompressFormat.JPEG, 90, (OutputStream)object);
            object.close();
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string3, "Error resizing image", var0_1);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bitmap resizeImage(String string2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile((String)string2, (BitmapFactory.Options)options);
        int n2 = (int)Math.floor(options.outWidth / CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH);
        options = new BitmapFactory.Options();
        options.inSampleSize = n2;
        options = BitmapFactory.decodeFile((String)string2, (BitmapFactory.Options)options);
        Matrix matrix = new Matrix();
        n2 = Integer.valueOf(Build.VERSION.SDK);
        if (options.getWidth() > CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            float f2 = n2 > 4 ? (ExifUtils.getExifRotation(string2) != 0 ? (float)CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH / (float)options.getHeight() : (float)CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH / (float)options.getWidth()) : (float)CONTRIBUTE_UPLOAD_IMAGE_MAX_WIDTH / (float)options.getWidth();
            options2.outWidth = (int)((float)options.getWidth() * f2 + 0.5f);
            options2.outHeight = (int)((float)options.getHeight() * f2 + 0.5f);
            matrix.postScale((float)options2.outWidth / (float)options.getWidth(), (float)options2.outHeight / (float)options.getHeight());
        }
        if (n2 > 4 && (n2 = ExifUtils.getExifRotation(string2)) != 0) {
            matrix.postRotate((float)n2);
        }
        return Bitmap.createBitmap((Bitmap)options, (int)0, (int)0, (int)options.getWidth(), (int)options.getHeight(), (Matrix)matrix, (boolean)true);
    }
}

