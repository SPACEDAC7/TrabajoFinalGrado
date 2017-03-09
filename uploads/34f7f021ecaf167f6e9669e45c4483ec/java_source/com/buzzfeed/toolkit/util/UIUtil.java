/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Point
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.drawable.Drawable
 *  android.provider.Settings
 *  android.provider.Settings$System
 *  android.text.SpannableString
 *  android.text.TextPaint
 *  android.text.style.URLSpan
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.Display
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewPropertyAnimator
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnGlobalLayoutListener
 *  android.view.Window
 *  android.view.WindowManager
 *  android.view.WindowManager$LayoutParams
 *  android.widget.ProgressBar
 *  android.widget.TextView
 */
package com.buzzfeed.toolkit.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.support.annotation.ColorRes;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.buzzfeed.toolkit.util.VersionUtil;

public class UIUtil {
    public static final String PROXIMA_NOVA_SEMI_BOLD_FONT_NAME = "fonts/ProximaNova-Sbold.ttf";

    public static void alignViewAbove(Activity activity, View view, View view2) {
        view2.setTranslationY((float)UIUtil.getTopOffset(activity, view) - (float)view2.getMeasuredHeight());
    }

    public static void alignViewBelow(Activity activity, View view, View view2) {
        view2.setTranslationY((float)UIUtil.getBottomOffset(activity, view));
    }

    public static void alignViewBottom(Activity activity, View view, View view2) {
        view2.setY((float)UIUtil.getBottomOffset(activity, view) - (float)view2.getMeasuredHeight());
    }

    public static void alignViewTop(Activity activity, View view, View view2) {
        view2.setY((float)UIUtil.getTopOffset(activity, view));
    }

    public static boolean areViewsOverlapping(Activity activity, View view, View view2) {
        if (UIUtil.getBottomOffset(activity, view) - UIUtil.getTopOffset(activity, view2) > 5) {
            return true;
        }
        return false;
    }

    @Deprecated
    public static Bitmap blurBitmap(Context context, Bitmap bitmap, int n2) {
        return bitmap;
    }

    @Deprecated
    public static Bitmap blurView(View view, int n2) {
        if (view.getLayoutParams().width > 0 && n2 <= 25) {
            Bitmap bitmap = Bitmap.createBitmap((int)view.getLayoutParams().width, (int)view.getLayoutParams().height, (Bitmap.Config)Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmap));
            view = UIUtil.blurBitmap(view.getContext(), bitmap, n2);
            bitmap.recycle();
            return view;
        }
        return null;
    }

    public static /* varargs */ void cancelAnimation(View ... arrview) {
        int n2 = arrview.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            arrview[i2].animate().cancel();
        }
    }

    public static float convertDpToPx(Context context, float f2) {
        return f2 * ((float)context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static float convertPxToDp(Context context, float f2) {
        return f2 / ((float)context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static Bitmap createColorBitmap(int n2, int n3, int n4) {
        Bitmap bitmap = Bitmap.createBitmap((int)n3, (int)n4, (Bitmap.Config)Bitmap.Config.ARGB_8888);
        bitmap.eraseColor(n2);
        return bitmap;
    }

    public static void enableRotation(Activity activity, boolean bl) {
        if (bl && UIUtil.isSystemRotationSettingEnabled((Context)activity)) {
            activity.setRequestedOrientation(-1);
            return;
        }
        activity.setRequestedOrientation(1);
    }

    public static /* varargs */ void fadeInViews(long l2, View ... arrview) {
        for (View view : arrview) {
            view.setVisibility(0);
            view.animate().alpha(1.0f).setStartDelay(0).setDuration(l2).start();
        }
    }

    public static /* varargs */ void fadeInViewsFor(final long l2, final long l3, View ... arrview) {
        for (final View view : arrview) {
            view.setVisibility(0);
            ViewPropertyAnimator viewPropertyAnimator = view.animate().alpha(1.0f).setDuration(l2).setStartDelay(0);
            UIUtil.withEndActionApi14(viewPropertyAnimator, new Runnable(){

                @Override
                public void run() {
                    UIUtil.fadeOutViewsWithDelay(l2, l3, view);
                }
            });
            viewPropertyAnimator.start();
        }
    }

    public static /* varargs */ void fadeOutViews(long l2, View ... arrview) {
        for (final View view : arrview) {
            ViewPropertyAnimator viewPropertyAnimator = view.animate().alpha(0.0f).setStartDelay(0).setDuration(l2);
            UIUtil.withEndActionApi14(viewPropertyAnimator, new Runnable(){

                @Override
                public void run() {
                    view.setVisibility(4);
                }
            });
            viewPropertyAnimator.start();
        }
    }

    public static /* varargs */ void fadeOutViewsWithDelay(long l2, long l3, View ... arrview) {
        for (final View view : arrview) {
            ViewPropertyAnimator viewPropertyAnimator = view.animate().alpha(0.0f).setStartDelay(l3).setDuration(l2);
            UIUtil.withEndActionApi14(viewPropertyAnimator, new Runnable(){

                @Override
                public void run() {
                    view.setVisibility(4);
                }
            });
            viewPropertyAnimator.start();
        }
    }

    public static <T extends Fragment> T findFrag(FragmentActivity fragmentActivity, String string2) {
        return (T)fragmentActivity.getSupportFragmentManager().findFragmentByTag(string2);
    }

    public static <T extends View> T findView(Activity activity, int n2) {
        return (T)activity.findViewById(n2);
    }

    public static <T extends View> T findView(View view, int n2) {
        return (T)view.findViewById(n2);
    }

    public static int getActionBarHeight(Context context) {
        TypedValue typedValue = new TypedValue();
        int n2 = 0;
        if (context.getTheme().resolveAttribute(16843499, typedValue, true)) {
            n2 = TypedValue.complexToDimensionPixelSize((int)typedValue.data, (DisplayMetrics)context.getResources().getDisplayMetrics());
        }
        return n2;
    }

    public static int getBottomOffset(Activity activity, View view) {
        return UIUtil.getTopOffset(activity, view) + view.getMeasuredHeight();
    }

    public static int getContentHeight(Activity activity) {
        int n2;
        Display display = ((WindowManager)activity.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        display.getSize(point);
        int n3 = n2 = point.y;
        if (!UIUtil.isWindowFullscreen(activity)) {
            n3 = n2 - UIUtil.getStatusBarHeight((Context)activity);
        }
        return n3;
    }

    public static int getContentWidth(Context context) {
        context = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        context.getSize(point);
        return point.x;
    }

    public static int getLeftOffset(View view) {
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        return arrn[0];
    }

    public static int getNavBarHeight(Context context) {
        int n2 = 0;
        int n3 = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (n3 > 0) {
            n2 = context.getResources().getDimensionPixelSize(n3);
        }
        return n2;
    }

    public static int getRealScreenHeight(Context context) {
        return UIUtil.getScreenResolution((Context)context).y;
    }

    public static int getRealScreenWidth(Context context) {
        return UIUtil.getScreenResolution((Context)context).x;
    }

    public static float getScreenDensityDpi() {
        return UIUtil.getScreenDensityDpi(Resources.getSystem());
    }

    public static float getScreenDensityDpi(Resources resources) {
        return resources.getDisplayMetrics().densityDpi;
    }

    public static int getScreenHeight() {
        return UIUtil.getScreenHeight(Resources.getSystem());
    }

    public static int getScreenHeight(Resources resources) {
        return resources.getDisplayMetrics().heightPixels;
    }

    @TargetApi(value=17)
    public static Point getScreenResolution(Context context) {
        context = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        context.getRealSize(point);
        return point;
    }

    public static int getScreenWidth() {
        return UIUtil.getScreenWidth(Resources.getSystem());
    }

    public static int getScreenWidth(Resources resources) {
        return resources.getDisplayMetrics().widthPixels;
    }

    public static int getStatusBarHeight(Context context) {
        int n2 = 0;
        int n3 = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (n3 > 0) {
            n2 = context.getResources().getDimensionPixelSize(n3);
        }
        return n2;
    }

    public static int getTopOffset(Activity activity, View view) {
        int n2;
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        int n3 = n2 = arrn[1];
        if (!UIUtil.isWindowFullscreen(activity)) {
            n3 = n2 - UIUtil.getStatusBarHeight((Context)activity);
        }
        return n3;
    }

    public static float getVisibleHeight(Activity activity) {
        if (UIUtil.isWindowFullscreen(activity)) {
            return UIUtil.getScreenResolution((Context)activity).y;
        }
        return UIUtil.getContentHeight(activity);
    }

    public static boolean isLandscape(Context context) {
        if (context.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public static boolean isPortrait(Context context) {
        if (context.getResources().getConfiguration().orientation == 1) {
            return true;
        }
        return false;
    }

    private static boolean isSystemRotationSettingEnabled(Context context) {
        if (Settings.System.getInt((ContentResolver)context.getContentResolver(), (String)"accelerometer_rotation", (int)0) == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isWindowFullscreen(Activity activity) {
        boolean bl = (activity.getWindow().getDecorView().getSystemUiVisibility() & 4) != 0;
        if ((activity.getWindow().getAttributes().flags & 2048) == 0) return true;
        boolean bl2 = true;
        if (!bl) return false;
        if (!bl2) {
            return true;
        }
        return false;
    }

    private static void removeOnGlobalLayoutListenerApi14(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (!VersionUtil.hasJellyBean()) {
            view.getViewTreeObserver().removeGlobalOnLayoutListener(onGlobalLayoutListener);
            return;
        }
        view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void runAfterLayout(final View view, final Runnable runnable) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(){

            public void onGlobalLayout() {
                runnable.run();
                UIUtil.removeOnGlobalLayoutListenerApi14(view, this);
            }
        });
    }

    public static void setBackgroundOfView(View view, int n2) {
        if (!VersionUtil.hasJellyBean()) {
            view.setBackgroundDrawable(ContextCompat.getDrawable(view.getContext(), n2));
            return;
        }
        view.setBackground(ContextCompat.getDrawable(view.getContext(), n2));
    }

    public static void setMenuItemVisiblity(MenuItem menuItem, boolean bl) {
        if (menuItem != null) {
            menuItem.setVisible(bl);
            menuItem.setEnabled(bl);
        }
    }

    public static void stripUnderlines(TextView textView) {
        SpannableString spannableString = new SpannableString(textView.getText());
        for (URLSpan uRLSpan : (URLSpan[])spannableString.getSpans(0, spannableString.length(), (Class)URLSpan.class)) {
            int n2 = spannableString.getSpanStart((Object)uRLSpan);
            int n3 = spannableString.getSpanEnd((Object)uRLSpan);
            spannableString.removeSpan((Object)uRLSpan);
            spannableString.setSpan((Object)new URLSpanNoUnderline(uRLSpan.getURL()), n2, n3, 0);
        }
        textView.setText((CharSequence)spannableString);
    }

    public static void tintProgressBar(Context context, ProgressBar progressBar, @ColorRes int n2) {
        if (progressBar == null || progressBar.getIndeterminateDrawable() == null) {
            return;
        }
        progressBar.getIndeterminateDrawable().setColorFilter(ContextCompat.getColor(context, n2), PorterDuff.Mode.SRC_IN);
    }

    private static void withEndActionApi14(ViewPropertyAnimator viewPropertyAnimator, final Runnable runnable) {
        if (!VersionUtil.hasJellyBean()) {
            viewPropertyAnimator.setListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

                public void onAnimationEnd(Animator animator2) {
                    runnable.run();
                }
            });
            return;
        }
        viewPropertyAnimator.withEndAction(new Runnable(){

            @Override
            public void run() {
                runnable.run();
            }
        });
    }

    private static class URLSpanNoUnderline
    extends URLSpan {
        public URLSpanNoUnderline(String string2) {
            super(string2);
        }

        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
        }
    }

}

