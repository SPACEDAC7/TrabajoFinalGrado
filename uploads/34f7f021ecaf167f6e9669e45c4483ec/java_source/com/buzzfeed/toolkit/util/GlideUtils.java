/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.View
 *  android.widget.ImageView
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorRes;
import android.support.v4.graphics.drawable.RoundedBitmapDrawableFactory;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.BitmapTypeRequest;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.BitmapImageViewTarget;
import com.bumptech.glide.request.target.GlideDrawableImageViewTarget;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.ImageUtil;
import java.util.Stack;

public class GlideUtils {
    private static final int IMAGE_LOADED_TAG_ID;
    private static final String LOADED = "loaded";
    private static final int PLACEHOLDER_COLOR;

    static {
        PLACEHOLDER_COLOR = R.color.buzzfeed_light_gray;
        IMAGE_LOADED_TAG_ID = R.id.image_loaded;
    }

    private static boolean dimensionsAreSet(int n2, int n3) {
        if (n2 > 0 && n3 > 0) {
            return true;
        }
        return false;
    }

    public static int getTransitionDuration(Context context) {
        return context.getResources().getInteger(R.integer.transition_long_duration_millis);
    }

    public static boolean isImageLoaded(ImageView imageView) {
        if (imageView != null && "loaded".equals(imageView.getTag(IMAGE_LOADED_TAG_ID))) {
            return true;
        }
        return false;
    }

    public static void loadImage(Context context, ImageView imageView, String string2) {
        GlideUtils.loadImage(context, imageView, string2, PLACEHOLDER_COLOR);
    }

    public static void loadImage(Context context, ImageView imageView, String string2, @ColorRes int n2) {
        Glide.with(context).load(string2).diskCacheStrategy(DiskCacheStrategy.ALL).crossFade(GlideUtils.getTransitionDuration(context)).placeholder(n2).into(imageView);
    }

    public static void loadImage(Context context, final ImageView imageView, String string2, @ColorRes int n2, final GlideFailureListener glideFailureListener) {
        imageView.setTag(IMAGE_LOADED_TAG_ID, (Object)null);
        Glide.with(context).load(string2).crossFade().placeholder(n2).into(new GlideDrawableImageViewTarget(imageView){

            @Override
            public void onLoadFailed(Exception exception, Drawable drawable2) {
                super.onLoadFailed(exception, drawable2);
                if (glideFailureListener != null) {
                    glideFailureListener.onFailure();
                }
            }

            @Override
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                super.onResourceReady(glideDrawable, glideAnimation);
                glideAnimation.animate(glideDrawable, this);
                imageView.setTag(IMAGE_LOADED_TAG_ID, (Object)"loaded");
            }
        });
    }

    public static void loadImageCenterCrop(Context context, ImageView imageView, String string2) {
        Glide.with(context).load(string2).centerCrop().placeholder(PLACEHOLDER_COLOR).into(imageView);
    }

    public static void loadImageRounded(final Context context, final ImageView imageView, String string2, final float f2) {
        Glide.with(context).load(string2).asBitmap().placeholder(PLACEHOLDER_COLOR).diskCacheStrategy(DiskCacheStrategy.ALL).into(new BitmapImageViewTarget(imageView){

            @Override
            protected void setResource(Bitmap object) {
                object = RoundedBitmapDrawableFactory.create(context.getResources(), (Bitmap)object);
                object.setCornerRadius(TypedValue.applyDimension((int)1, (float)f2, (DisplayMetrics)context.getResources().getDisplayMetrics()));
                imageView.setImageDrawable((Drawable)object);
            }
        });
    }

    public static void loadImageStack(Context context, ImageView imageView, Stack<String> stack) {
        GlideUtils.loadImageStack(context, imageView, stack, 0, 0);
    }

    public static void loadImageStack(Context context, ImageView imageView, Stack<String> stack, int n2, int n3) {
        GlideUtils.loadImageStackWithCustomPlaceholderColor(context, imageView, stack, n2, n3, PLACEHOLDER_COLOR);
    }

    public static void loadImageStackRounded(final Context context, final ImageView imageView, final Stack<String> stack, final float f2) {
        if (stack.isEmpty()) {
            Glide.clear((View)imageView);
            return;
        }
        Glide.with(context).load(stack.pop()).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).into(new BitmapImageViewTarget(imageView){

            @Override
            public void onLoadFailed(Exception exception, Drawable drawable2) {
                super.onLoadFailed(exception, drawable2);
                if (!stack.empty()) {
                    GlideUtils.loadImageStackRounded(context, imageView, stack, f2);
                }
            }

            @Override
            public void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
                super.onResourceReady(bitmap, glideAnimation);
                glideAnimation.animate((Bitmap)bitmap, this);
            }

            @Override
            protected void setResource(Bitmap object) {
                object = RoundedBitmapDrawableFactory.create(context.getResources(), (Bitmap)object);
                object.setCornerRadius(TypedValue.applyDimension((int)1, (float)f2, (DisplayMetrics)context.getResources().getDisplayMetrics()));
                imageView.setImageDrawable((Drawable)object);
            }
        });
    }

    public static void loadImageStackWithCustomPlaceholderColor(final Context context, final ImageView imageView, final Stack<String> stack, final int n2, final int n3, int n4) {
        if (stack.isEmpty()) {
            Glide.clear((View)imageView);
            return;
        }
        imageView.setTag(IMAGE_LOADED_TAG_ID, (Object)null);
        Object object = stack.pop();
        if (GlideUtils.dimensionsAreSet(n2, n3)) {
            object = ImageUtil.getDownsizeWidthUrl((String)object, n2);
        }
        object = Glide.with(context).load((String)object).crossFade().placeholder(n4).centerCrop();
        if (GlideUtils.dimensionsAreSet(n2, n3)) {
            object.override(n2, n3);
        }
        object.into(new GlideDrawableImageViewTarget(imageView){

            @Override
            public void onLoadFailed(Exception exception, Drawable drawable2) {
                super.onLoadFailed(exception, drawable2);
                if (!stack.empty()) {
                    GlideUtils.loadImageStack(context, imageView, stack, n2, n3);
                }
            }

            @Override
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                super.onResourceReady(glideDrawable, glideAnimation);
                glideAnimation.animate(glideDrawable, this);
                imageView.setTag(IMAGE_LOADED_TAG_ID, (Object)"loaded");
            }
        });
    }

    public static interface GlideFailureListener {
        public void onFailure();
    }

}

