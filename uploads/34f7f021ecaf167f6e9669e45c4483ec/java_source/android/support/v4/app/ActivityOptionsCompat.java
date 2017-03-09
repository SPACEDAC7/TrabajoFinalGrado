/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.Rect
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.view.View
 */
package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityOptionsCompat21;
import android.support.v4.app.ActivityOptionsCompat23;
import android.support.v4.app.ActivityOptionsCompat24;
import android.support.v4.app.ActivityOptionsCompatJB;
import android.support.v4.util.Pair;
import android.view.View;

public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    protected ActivityOptionsCompat() {
    }

    public static ActivityOptionsCompat makeBasic() {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeBasic());
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeBasic());
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeClipRevealAnimation(View view, int n2, int n3, int n4, int n5) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeClipRevealAnimation(view, n2, n3, n4, n5));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeClipRevealAnimation(view, n2, n3, n4, n5));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeCustomAnimation(Context context, int n2, int n3) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeCustomAnimation(context, n2, n3));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeCustomAnimation(context, n2, n3));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeCustomAnimation(context, n2, n3));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeCustomAnimation(context, n2, n3));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View view, int n2, int n3, int n4, int n5) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeScaleUpAnimation(view, n2, n3, n4, n5));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeScaleUpAnimation(view, n2, n3, n4, n5));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeScaleUpAnimation(view, n2, n3, n4, n5));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeScaleUpAnimation(view, n2, n3, n4, n5));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View view, String string2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(activity, view, string2));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(activity, view, string2));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, view, string2));
        }
        return new ActivityOptionsCompat();
    }

    public static /* varargs */ ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, Pair<View, String> ... arrpair) {
        if (Build.VERSION.SDK_INT >= 21) {
            View[] arrview = null;
            String[] arrstring = null;
            if (arrpair != null) {
                View[] arrview2 = new View[arrpair.length];
                String[] arrstring2 = new String[arrpair.length];
                int n2 = 0;
                do {
                    arrstring = arrstring2;
                    arrview = arrview2;
                    if (n2 >= arrpair.length) break;
                    arrview2[n2] = (View)arrpair[n2].first;
                    arrstring2[n2] = (String)arrpair[n2].second;
                    ++n2;
                } while (true);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(activity, arrview, arrstring));
            }
            if (Build.VERSION.SDK_INT >= 23) {
                return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(activity, arrview, arrstring));
            }
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, arrview, arrstring));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeTaskLaunchBehind());
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeTaskLaunchBehind());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeTaskLaunchBehind());
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int n2, int n3) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeThumbnailScaleUpAnimation(view, bitmap, n2, n3));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeThumbnailScaleUpAnimation(view, bitmap, n2, n3));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeThumbnailScaleUpAnimation(view, bitmap, n2, n3));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeThumbnailScaleUpAnimation(view, bitmap, n2, n3));
        }
        return new ActivityOptionsCompat();
    }

    @Nullable
    public Rect getLaunchBounds() {
        return null;
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
    }

    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return null;
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat activityOptionsCompat) {
    }

    private static class ActivityOptionsImpl21
    extends ActivityOptionsCompat {
        private final ActivityOptionsCompat21 mImpl;

        ActivityOptionsImpl21(ActivityOptionsCompat21 activityOptionsCompat21) {
            this.mImpl = activityOptionsCompat21;
        }

        @Override
        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        @Override
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl21) {
                activityOptionsCompat = (ActivityOptionsImpl21)activityOptionsCompat;
                this.mImpl.update(activityOptionsCompat.mImpl);
            }
        }
    }

    private static class ActivityOptionsImpl23
    extends ActivityOptionsCompat {
        private final ActivityOptionsCompat23 mImpl;

        ActivityOptionsImpl23(ActivityOptionsCompat23 activityOptionsCompat23) {
            this.mImpl = activityOptionsCompat23;
        }

        @Override
        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            this.mImpl.requestUsageTimeReport(pendingIntent);
        }

        @Override
        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        @Override
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl23) {
                activityOptionsCompat = (ActivityOptionsImpl23)activityOptionsCompat;
                this.mImpl.update(activityOptionsCompat.mImpl);
            }
        }
    }

    private static class ActivityOptionsImpl24
    extends ActivityOptionsCompat {
        private final ActivityOptionsCompat24 mImpl;

        ActivityOptionsImpl24(ActivityOptionsCompat24 activityOptionsCompat24) {
            this.mImpl = activityOptionsCompat24;
        }

        @Override
        public Rect getLaunchBounds() {
            return this.mImpl.getLaunchBounds();
        }

        @Override
        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            this.mImpl.requestUsageTimeReport(pendingIntent);
        }

        @Override
        public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
            return new ActivityOptionsImpl24(this.mImpl.setLaunchBounds(rect));
        }

        @Override
        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        @Override
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl24) {
                activityOptionsCompat = (ActivityOptionsImpl24)activityOptionsCompat;
                this.mImpl.update(activityOptionsCompat.mImpl);
            }
        }
    }

    private static class ActivityOptionsImplJB
    extends ActivityOptionsCompat {
        private final ActivityOptionsCompatJB mImpl;

        ActivityOptionsImplJB(ActivityOptionsCompatJB activityOptionsCompatJB) {
            this.mImpl = activityOptionsCompatJB;
        }

        @Override
        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        @Override
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImplJB) {
                activityOptionsCompat = (ActivityOptionsImplJB)activityOptionsCompat;
                this.mImpl.update(activityOptionsCompat.mImpl);
            }
        }
    }

}

