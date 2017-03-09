/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.ActivityOptions
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.Rect
 *  android.os.Bundle
 *  android.util.Pair
 *  android.view.View
 */
package android.support.v4.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Pair;
import android.view.View;

class ActivityOptionsCompat24 {
    private final ActivityOptions mActivityOptions;

    private ActivityOptionsCompat24(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
    }

    public static ActivityOptionsCompat24 makeBasic() {
        return new ActivityOptionsCompat24(ActivityOptions.makeBasic());
    }

    public static ActivityOptionsCompat24 makeClipRevealAnimation(View view, int n2, int n3, int n4, int n5) {
        return new ActivityOptionsCompat24(ActivityOptions.makeClipRevealAnimation((View)view, (int)n2, (int)n3, (int)n4, (int)n5));
    }

    public static ActivityOptionsCompat24 makeCustomAnimation(Context context, int n2, int n3) {
        return new ActivityOptionsCompat24(ActivityOptions.makeCustomAnimation((Context)context, (int)n2, (int)n3));
    }

    public static ActivityOptionsCompat24 makeScaleUpAnimation(View view, int n2, int n3, int n4, int n5) {
        return new ActivityOptionsCompat24(ActivityOptions.makeScaleUpAnimation((View)view, (int)n2, (int)n3, (int)n4, (int)n5));
    }

    public static ActivityOptionsCompat24 makeSceneTransitionAnimation(Activity activity, View view, String string2) {
        return new ActivityOptionsCompat24(ActivityOptions.makeSceneTransitionAnimation((Activity)activity, (View)view, (String)string2));
    }

    public static ActivityOptionsCompat24 makeSceneTransitionAnimation(Activity activity, View[] arrview, String[] arrstring) {
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
        return new ActivityOptionsCompat24(ActivityOptions.makeSceneTransitionAnimation((Activity)activity, (Pair[])arrpair));
    }

    public static ActivityOptionsCompat24 makeTaskLaunchBehind() {
        return new ActivityOptionsCompat24(ActivityOptions.makeTaskLaunchBehind());
    }

    public static ActivityOptionsCompat24 makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int n2, int n3) {
        return new ActivityOptionsCompat24(ActivityOptions.makeThumbnailScaleUpAnimation((View)view, (Bitmap)bitmap, (int)n2, (int)n3));
    }

    public Rect getLaunchBounds() {
        return this.mActivityOptions.getLaunchBounds();
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
        this.mActivityOptions.requestUsageTimeReport(pendingIntent);
    }

    public ActivityOptionsCompat24 setLaunchBounds(@Nullable Rect rect) {
        return new ActivityOptionsCompat24(this.mActivityOptions.setLaunchBounds(rect));
    }

    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }

    public void update(ActivityOptionsCompat24 activityOptionsCompat24) {
        this.mActivityOptions.update(activityOptionsCompat24.mActivityOptions);
    }
}

