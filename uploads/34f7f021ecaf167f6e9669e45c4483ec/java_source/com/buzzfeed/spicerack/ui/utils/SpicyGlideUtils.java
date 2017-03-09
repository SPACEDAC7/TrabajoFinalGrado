/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.ImageView
 */
package com.buzzfeed.spicerack.ui.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.GlideDrawableImageViewTarget;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.toolkit.util.ImageUtil;
import java.util.Stack;

public class SpicyGlideUtils {
    public static final int DEFAULT_PLACEHOLDER_COLOR = R.color.buzzfeed_light_gray;

    private static int getFinalHeight(int n2, SubBuzz.Images.Image image) {
        float f2 = (float)n2 / (float)image.getWidth();
        return Math.round((float)image.getHeight() * f2);
    }

    public static int getTransitionDuration(Context context) {
        return context.getResources().getInteger(R.integer.transition_long_duration_millis);
    }

    private static boolean isGif(String string2) {
        if (string2 != null && string2.endsWith(".gif")) {
            return true;
        }
        return false;
    }

    public static void load(Context context, String string2, ImageView imageView) {
        SpicyGlideUtils.loadWithColor(context, string2, imageView);
    }

    public static void load(Context context, String string2, ImageView imageView, int n2, int n3) {
        SpicyGlideUtils.loadWithColor(context, string2, imageView, n2, n3);
    }

    public static void loadGif(Context context, String string2, ImageView imageView) {
        SpicyGlideUtils.loadGif(context, string2, imageView, null);
    }

    public static void loadGif(Context context, String string2, final ImageView imageView, final GlideFailureListener glideFailureListener) {
        Glide.with(context).load(string2).diskCacheStrategy(DiskCacheStrategy.SOURCE).placeholder(DEFAULT_PLACEHOLDER_COLOR).thumbnail(0.3f).sizeMultiplier(0.7f).crossFade(SpicyGlideUtils.getTransitionDuration(context)).into(new GlideDrawableImageViewTarget(imageView){

            @Override
            public void onLoadFailed(Exception exception, Drawable drawable2) {
                super.onLoadFailed(exception, drawable2);
                if (glideFailureListener != null) {
                    glideFailureListener.onLoadFailed();
                }
            }

            @Override
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                super.onResourceReady(glideDrawable, glideAnimation);
                imageView.setImageDrawable((Drawable)glideDrawable);
            }
        });
    }

    public static void loadImageSpice(final Stack<SubBuzz.Images.Image> stack, final int n2, final ImageView imageView) {
        int n3;
        if (stack.isEmpty()) {
            Glide.clear((View)imageView);
            return;
        }
        SubBuzz.Images.Image image = stack.pop();
        if (SpicyGlideUtils.isGif(image.getUrl())) {
            int n4;
            imageView.getLayoutParams().height = n4 = SpicyGlideUtils.getFinalHeight(n2, image);
            SpicyGlideUtils.loadGif(imageView.getContext(), image.getUrl(), imageView, new GlideFailureListener(){

                @Override
                public void onLoadFailed() {
                    SpicyGlideUtils.loadImageSpice(stack, n2, imageView);
                }
            });
            return;
        }
        imageView.getLayoutParams().height = n3 = SpicyGlideUtils.getFinalHeight(n2, image);
        if (n2 > 0 && n3 > 0) {
            SpicyGlideUtils.loadWithColor(imageView.getContext(), image.getUrl(), imageView, n2, n3, new GlideFailureListener(){

                @Override
                public void onLoadFailed() {
                    SpicyGlideUtils.loadImageSpice(stack, n2, imageView);
                }
            });
            return;
        }
        SpicyGlideUtils.loadWithColor(imageView.getContext(), image.getUrl(), imageView, new GlideFailureListener(){

            @Override
            public void onLoadFailed() {
                SpicyGlideUtils.loadImageSpice(stack, n2, imageView);
            }
        });
    }

    public static void loadImageStack(final Stack<String> stack, final ImageView imageView, final int n2) {
        if (stack.isEmpty()) {
            Glide.clear((View)imageView);
            return;
        }
        String string2 = stack.pop();
        Glide.with(imageView.getContext()).load(string2).listener((RequestListener)new RequestListener<String, GlideDrawable>(){

            @Override
            public boolean onException(Exception exception, String string2, Target<GlideDrawable> target, boolean bl) {
                SpicyGlideUtils.loadImageStack(stack, imageView, n2);
                return true;
            }

            @Override
            public boolean onResourceReady(GlideDrawable glideDrawable, String string2, Target<GlideDrawable> target, boolean bl, boolean bl2) {
                return false;
            }
        }).diskCacheStrategy(DiskCacheStrategy.SOURCE).centerCrop().into(imageView);
    }

    public static void loadSpiceHeader(final Stack<String> stack, final int n2, final int n3, final ImageView imageView, final RequestListener<String, GlideDrawable> requestListener) {
        if (stack.isEmpty()) {
            Glide.clear((View)imageView);
            return;
        }
        String string2 = ImageUtil.getDownsizeWidthUrl(stack.pop(), n2);
        Glide.with(imageView.getContext().getApplicationContext()).load(string2).listener((RequestListener)new RequestListener<String, GlideDrawable>(){

            @Override
            public boolean onException(Exception exception, String string2, Target<GlideDrawable> target, boolean bl) {
                if (stack.size() <= 0) {
                    return requestListener.onException(exception, string2, target, bl);
                }
                SpicyGlideUtils.loadSpiceHeader(stack, n2, n3, imageView, requestListener);
                return true;
            }

            @Override
            public boolean onResourceReady(GlideDrawable glideDrawable, String string2, Target<GlideDrawable> target, boolean bl, boolean bl2) {
                return requestListener.onResourceReady(glideDrawable, string2, target, bl, bl2);
            }
        }).diskCacheStrategy(DiskCacheStrategy.ALL).override(n2, n3).centerCrop().dontAnimate().into(imageView);
    }

    public static void loadWithColor(Context context, String string2, ImageView imageView) {
        SpicyGlideUtils.loadWithColor(context, string2, imageView, null);
    }

    public static void loadWithColor(Context context, String string2, ImageView imageView, int n2, int n3) {
        SpicyGlideUtils.loadWithColor(context, string2, imageView, n2, n3, null);
    }

    public static void loadWithColor(Context context, String string2, ImageView imageView, int n2, int n3, final GlideFailureListener glideFailureListener) {
        Glide.with(context).load(string2).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(DEFAULT_PLACEHOLDER_COLOR).override(n2, n3).crossFade(SpicyGlideUtils.getTransitionDuration(context)).into(new GlideDrawableImageViewTarget(imageView){

            @Override
            public void onLoadFailed(Exception exception, Drawable drawable2) {
                super.onLoadFailed(exception, drawable2);
                if (glideFailureListener != null) {
                    glideFailureListener.onLoadFailed();
                }
            }

            @Override
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                super.onResourceReady(glideDrawable, glideAnimation);
            }
        });
    }

    public static void loadWithColor(Context context, String string2, ImageView imageView, final GlideFailureListener glideFailureListener) {
        Glide.with(context).load(string2).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(DEFAULT_PLACEHOLDER_COLOR).crossFade(SpicyGlideUtils.getTransitionDuration(context)).into(new GlideDrawableImageViewTarget(imageView){

            @Override
            public void onLoadFailed(Exception exception, Drawable drawable2) {
                super.onLoadFailed(exception, drawable2);
                if (glideFailureListener != null) {
                    glideFailureListener.onLoadFailed();
                }
            }

            @Override
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                super.onResourceReady(glideDrawable, glideAnimation);
            }
        });
    }

    static interface GlideFailureListener {
        public void onLoadFailed();
    }

}

