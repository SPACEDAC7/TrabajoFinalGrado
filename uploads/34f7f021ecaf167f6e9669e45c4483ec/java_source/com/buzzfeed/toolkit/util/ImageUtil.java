/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.PorterDuffXfermode
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.Xfermode
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Xfermode;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.UIUtil;

public class ImageUtil {
    public static final float ASPECT_RATIO_TALL = 0.666f;
    public static final float ASPECT_RATIO_WIDE = 0.35f;

    private ImageUtil() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int getCacheableImageHeight(boolean bl) {
        float f2;
        float f3 = UIUtil.getScreenWidth();
        if (bl) {
            f2 = 0.666f;
            do {
                return (int)(f2 * f3);
                break;
            } while (true);
        }
        f2 = 0.35f;
        return (int)(f2 * f3);
    }

    public static int getCacheableImageWidth() {
        return UIUtil.getScreenWidth();
    }

    public static Bitmap getCircularBitmap(Context context, Bitmap bitmap) {
        Bitmap bitmap2 = Bitmap.createBitmap((int)bitmap.getWidth(), (int)bitmap.getHeight(), (Bitmap.Config)Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        int n2 = bitmap.getWidth();
        if (bitmap.getWidth() > bitmap.getHeight()) {
            n2 = bitmap.getHeight();
        }
        int n3 = context.getResources().getColor(R.color.rounded_bitmap_paint);
        context = new Paint();
        Rect rect = new Rect(0, 0, n2, n2);
        RectF rectF = new RectF(rect);
        float f2 = n2 / 2;
        context.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        context.setColor(n3);
        canvas.drawRoundRect(rectF, f2, f2, (Paint)context);
        context.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, (Paint)context);
        return bitmap2;
    }

    public static String getDownsizeWidthUrl(String string2, int n2) {
        return string2 + "?downsize=" + n2 + ":*";
    }

    public static Bitmap getRoundedCornersBitmap(Context context, Bitmap bitmap, float f2) {
        Bitmap bitmap2 = Bitmap.createBitmap((int)bitmap.getWidth(), (int)bitmap.getHeight(), (Bitmap.Config)Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        int n2 = context.getResources().getColor(R.color.rounded_bitmap_paint);
        context = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        context.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        context.setColor(n2);
        canvas.drawRoundRect(rectF, f2, f2, (Paint)context);
        context.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, (Paint)context);
        return bitmap2;
    }
}

