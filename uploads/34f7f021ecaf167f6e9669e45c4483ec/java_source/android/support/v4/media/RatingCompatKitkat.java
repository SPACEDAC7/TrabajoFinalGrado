/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.Rating
 */
package android.support.v4.media;

import android.media.Rating;

class RatingCompatKitkat {
    RatingCompatKitkat() {
    }

    public static float getPercentRating(Object object) {
        return ((Rating)object).getPercentRating();
    }

    public static int getRatingStyle(Object object) {
        return ((Rating)object).getRatingStyle();
    }

    public static float getStarRating(Object object) {
        return ((Rating)object).getStarRating();
    }

    public static boolean hasHeart(Object object) {
        return ((Rating)object).hasHeart();
    }

    public static boolean isRated(Object object) {
        return ((Rating)object).isRated();
    }

    public static boolean isThumbUp(Object object) {
        return ((Rating)object).isThumbUp();
    }

    public static Object newHeartRating(boolean bl) {
        return Rating.newHeartRating((boolean)bl);
    }

    public static Object newPercentageRating(float f2) {
        return Rating.newPercentageRating((float)f2);
    }

    public static Object newStarRating(int n2, float f2) {
        return Rating.newStarRating((int)n2, (float)f2);
    }

    public static Object newThumbRating(boolean bl) {
        return Rating.newThumbRating((boolean)bl);
    }

    public static Object newUnratedRating(int n2) {
        return Rating.newUnratedRating((int)n2);
    }
}

