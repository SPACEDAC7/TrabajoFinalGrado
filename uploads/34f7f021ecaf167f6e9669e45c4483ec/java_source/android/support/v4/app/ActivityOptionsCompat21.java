/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.ActivityOptions
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.os.Bundle
 *  android.util.Pair
 *  android.view.View
 */
package android.support.v4.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

class ActivityOptionsCompat21 {
    private final ActivityOptions mActivityOptions;

    private ActivityOptionsCompat21(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
    }

    public static ActivityOptionsCompat21 makeCustomAnimation(Context context, int n2, int n3) {
        return new ActivityOptionsCompat21(ActivityOptions.makeCustomAnimation((Context)context, (int)n2, (int)n3));
    }

    public static ActivityOptionsCompat21 makeScaleUpAnimation(View view, int n2, int n3, int n4, int n5) {
        return new ActivityOptionsCompat21(ActivityOptions.makeScaleUpAnimation((View)view, (int)n2, (int)n3, (int)n4, (int)n5));
    }

    public static ActivityOptionsCompat21 makeSceneTransitionAnimation(Activity activity, View view, String string2) {
        return new ActivityOptionsCompat21(ActivityOptions.makeSceneTransitionAnimation((Activity)activity, (View)view, (String)string2));
    }

    public static ActivityOptionsCompat21 makeSceneTransitionAnimation(Activity activity, View[] arrview, String[] arrstring) {
        Pair[] arrpair = null;
        if (arrview != null) {
            Pair[] arrpair2 = new Pair[arrview.length];
            int n2 = 0;
            do {
                arrpair = arrpair2;
                if (n2 >= arrpair2.length) break;
                arrpair2[n2] = Pair.create((Object)arrview[n2], (Object)arrstring[n2]);
                ++n2;
            } while (true);
        }
        return new ActivityOptionsCompat21(ActivityOptions.makeSceneTransitionAnimation((Activity)activity, (Pair[])arrpair));
    }

    public static ActivityOptionsCompat21 makeTaskLaunchBehind() {
        return new ActivityOptionsCompat21(ActivityOptions.makeTaskLaunchBehind());
    }

    public static ActivityOptionsCompat21 makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int n2, int n3) {
        return new ActivityOptionsCompat21(ActivityOptions.makeThumbnailScaleUpAnimation((View)view, (Bitmap)bitmap, (int)n2, (int)n3));
    }

    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }

    public void update(ActivityOptionsCompat21 activityOptionsCompat21) {
        this.mActivityOptions.update(activityOptionsCompat21.mActivityOptions);
    }
}

