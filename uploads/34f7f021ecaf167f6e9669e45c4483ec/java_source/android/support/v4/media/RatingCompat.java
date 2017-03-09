/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.Log
 */
package android.support.v4.media;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.media.RatingCompatKitkat;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class RatingCompat
implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>(){

        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        public RatingCompat[] newArray(int n2) {
            return new RatingCompat[n2];
        }
    };
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    RatingCompat(int n2, float f2) {
        this.mRatingStyle = n2;
        this.mRatingValue = f2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static RatingCompat fromRating(Object var0) {
        if (var0 == null) return null;
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        var1_1 = RatingCompatKitkat.getRatingStyle(var0);
        if (!RatingCompatKitkat.isRated(var0)) ** GOTO lbl21
        switch (var1_1) {
            default: {
                return null;
            }
            case 1: {
                var2_2 = RatingCompat.newHeartRating(RatingCompatKitkat.hasHeart(var0));
                ** GOTO lbl22
            }
            case 2: {
                var2_2 = RatingCompat.newThumbRating(RatingCompatKitkat.isThumbUp(var0));
                ** GOTO lbl22
            }
            case 3: 
            case 4: 
            case 5: {
                var2_2 = RatingCompat.newStarRating(var1_1, RatingCompatKitkat.getStarRating(var0));
                ** GOTO lbl22
            }
            case 6: 
        }
        var2_2 = RatingCompat.newPercentageRating(RatingCompatKitkat.getPercentRating(var0));
        ** GOTO lbl22
lbl21: // 1 sources:
        var2_2 = RatingCompat.newUnratedRating(var1_1);
lbl22: // 5 sources:
        var2_2.mRatingObj = var0;
        return var2_2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static RatingCompat newHeartRating(boolean bl) {
        float f2;
        if (bl) {
            f2 = 1.0f;
            do {
                return new RatingCompat(1, f2);
                break;
            } while (true);
        }
        f2 = 0.0f;
        return new RatingCompat(1, f2);
    }

    public static RatingCompat newPercentageRating(float f2) {
        if (f2 < 0.0f || f2 > 100.0f) {
            Log.e((String)"Rating", (String)"Invalid percentage-based rating value");
            return null;
        }
        return new RatingCompat(6, f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static RatingCompat newStarRating(int n2, float f2) {
        float f3;
        switch (n2) {
            default: {
                Log.e((String)"Rating", (String)("Invalid rating style (" + n2 + ") for a star rating"));
                return null;
            }
            case 3: {
                f3 = 3.0f;
                break;
            }
            case 4: {
                f3 = 4.0f;
                break;
            }
            case 5: {
                f3 = 5.0f;
            }
        }
        if (f2 < 0.0f || f2 > f3) {
            Log.e((String)"Rating", (String)"Trying to set out of range star-based rating");
            return null;
        }
        return new RatingCompat(n2, f2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static RatingCompat newThumbRating(boolean bl) {
        float f2;
        if (bl) {
            f2 = 1.0f;
            do {
                return new RatingCompat(2, f2);
                break;
            } while (true);
        }
        f2 = 0.0f;
        return new RatingCompat(2, f2);
    }

    public static RatingCompat newUnratedRating(int n2) {
        switch (n2) {
            default: {
                return null;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
        }
        return new RatingCompat(n2, -1.0f);
    }

    public int describeContents() {
        return this.mRatingStyle;
    }

    public float getPercentRating() {
        if (this.mRatingStyle != 6 || !this.isRated()) {
            return -1.0f;
        }
        return this.mRatingValue;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Object getRating() {
        if (this.mRatingObj != null || Build.VERSION.SDK_INT < 19) {
            return this.mRatingObj;
        }
        if (this.isRated()) {
            switch (this.mRatingStyle) {
                default: {
                    do {
                        return null;
                        break;
                    } while (true);
                }
                case 1: {
                    this.mRatingObj = RatingCompatKitkat.newHeartRating(this.hasHeart());
                    do {
                        return this.mRatingObj;
                        break;
                    } while (true);
                }
                case 2: {
                    this.mRatingObj = RatingCompatKitkat.newThumbRating(this.isThumbUp());
                    return this.mRatingObj;
                }
                case 3: 
                case 4: 
                case 5: {
                    this.mRatingObj = RatingCompatKitkat.newStarRating(this.mRatingStyle, this.getStarRating());
                    return this.mRatingObj;
                }
                case 6: 
            }
            this.mRatingObj = RatingCompatKitkat.newPercentageRating(this.getPercentRating());
            return null;
        }
        this.mRatingObj = RatingCompatKitkat.newUnratedRating(this.mRatingStyle);
        return this.mRatingObj;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    /*
     * Enabled aggressive block sorting
     */
    public float getStarRating() {
        switch (this.mRatingStyle) {
            default: {
                return -1.0f;
            }
            case 3: 
            case 4: 
            case 5: {
                if (!this.isRated()) return -1.0f;
                return this.mRatingValue;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean hasHeart() {
        boolean bl = true;
        if (this.mRatingStyle != 1) {
            return false;
        }
        if (this.mRatingValue != 1.0f) return false;
        return bl;
    }

    public boolean isRated() {
        if (this.mRatingValue >= 0.0f) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isThumbUp() {
        if (this.mRatingStyle != 2 || this.mRatingValue != 1.0f) {
            return false;
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        String string2;
        StringBuilder stringBuilder = new StringBuilder().append("Rating:style=").append(this.mRatingStyle).append(" rating=");
        if (this.mRatingValue < 0.0f) {
            string2 = "unrated";
            do {
                return stringBuilder.append(string2).toString();
                break;
            } while (true);
        }
        string2 = String.valueOf(this.mRatingValue);
        return stringBuilder.append(string2).toString();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface StarStyle {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface Style {
    }

}

