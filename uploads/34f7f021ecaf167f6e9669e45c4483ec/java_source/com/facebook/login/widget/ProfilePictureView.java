/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.Bitmap
 *  android.graphics.BitmapFactory
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ImageView
 *  android.widget.ImageView$ScaleType
 */
package com.facebook.login.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.R;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;

public class ProfilePictureView
extends FrameLayout {
    private static final String BITMAP_HEIGHT_KEY = "ProfilePictureView_height";
    private static final String BITMAP_KEY = "ProfilePictureView_bitmap";
    private static final String BITMAP_WIDTH_KEY = "ProfilePictureView_width";
    public static final int CUSTOM = -1;
    private static final boolean IS_CROPPED_DEFAULT_VALUE = true;
    private static final String IS_CROPPED_KEY = "ProfilePictureView_isCropped";
    public static final int LARGE = -4;
    private static final int MIN_SIZE = 1;
    public static final int NORMAL = -3;
    private static final String PENDING_REFRESH_KEY = "ProfilePictureView_refresh";
    private static final String PRESET_SIZE_KEY = "ProfilePictureView_presetSize";
    private static final String PROFILE_ID_KEY = "ProfilePictureView_profileId";
    public static final int SMALL = -2;
    private static final String SUPER_STATE_KEY = "ProfilePictureView_superState";
    public static final String TAG = ProfilePictureView.class.getSimpleName();
    private Bitmap customizedDefaultProfilePicture = null;
    private ImageView image;
    private Bitmap imageContents;
    private boolean isCropped = true;
    private ImageRequest lastRequest;
    private OnErrorListener onErrorListener;
    private int presetSizeType = -1;
    private String profileId;
    private int queryHeight = 0;
    private int queryWidth = 0;

    public ProfilePictureView(Context context) {
        super(context);
        this.initialize(context);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize(context);
        this.parseAttributes(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize(context);
        this.parseAttributes(attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getPresetSizeInPixels(boolean bl) {
        int n2;
        switch (this.presetSizeType) {
            default: {
                return 0;
            }
            case -2: {
                n2 = R.dimen.com_facebook_profilepictureview_preset_size_small;
                return this.getResources().getDimensionPixelSize(n2);
            }
            case -3: {
                n2 = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                return this.getResources().getDimensionPixelSize(n2);
            }
            case -4: {
                n2 = R.dimen.com_facebook_profilepictureview_preset_size_large;
                return this.getResources().getDimensionPixelSize(n2);
            }
            case -1: 
        }
        if (!bl) return 0;
        n2 = R.dimen.com_facebook_profilepictureview_preset_size_normal;
        return this.getResources().getDimensionPixelSize(n2);
    }

    private void initialize(Context context) {
        this.removeAllViews();
        this.image = new ImageView(context);
        context = new FrameLayout.LayoutParams(-1, -1);
        this.image.setLayoutParams((ViewGroup.LayoutParams)context);
        this.image.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.addView((View)this.image);
    }

    private void parseAttributes(AttributeSet attributeSet) {
        attributeSet = this.getContext().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_profile_picture_view);
        this.setPresetSize(attributeSet.getInt(R.styleable.com_facebook_profile_picture_view_preset_size, -1));
        this.isCropped = attributeSet.getBoolean(R.styleable.com_facebook_profile_picture_view_is_cropped, true);
        attributeSet.recycle();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void processResponse(ImageResponse object) {
        if (object.getRequest() != this.lastRequest) return;
        {
            this.lastRequest = null;
            Bitmap bitmap = object.getBitmap();
            Exception exception = object.getError();
            if (exception != null) {
                object = this.onErrorListener;
                if (object == null) {
                    Logger.log(LoggingBehavior.REQUESTS, 6, TAG, exception.toString());
                    return;
                }
                object.onError(new FacebookException("Error in downloading profile picture for profileId: " + this.getProfileId(), exception));
                return;
            } else {
                if (bitmap == null) return;
                {
                    this.setImageBitmap(bitmap);
                    if (!object.isCachedRedirect()) return;
                    {
                        this.sendImageRequest(false);
                        return;
                    }
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void refreshImage(boolean bl) {
        boolean bl2 = this.updateImageQueryParameters();
        if (this.profileId == null || this.profileId.length() == 0 || this.queryWidth == 0 && this.queryHeight == 0) {
            this.setBlankProfilePicture();
            return;
        } else {
            if (!bl2 && !bl) return;
            {
                this.sendImageRequest(true);
                return;
            }
        }
    }

    private void sendImageRequest(boolean bl) {
        ImageRequest imageRequest = new ImageRequest.Builder(this.getContext(), ImageRequest.getProfilePictureUri(this.profileId, this.queryWidth, this.queryHeight)).setAllowCachedRedirects(bl).setCallerTag((Object)this).setCallback(new ImageRequest.Callback(){

            @Override
            public void onCompleted(ImageResponse imageResponse) {
                ProfilePictureView.this.processResponse(imageResponse);
            }
        }).build();
        if (this.lastRequest != null) {
            ImageDownloader.cancelRequest(this.lastRequest);
        }
        this.lastRequest = imageRequest;
        ImageDownloader.downloadAsync(imageRequest);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setBlankProfilePicture() {
        if (this.lastRequest != null) {
            ImageDownloader.cancelRequest(this.lastRequest);
        }
        if (this.customizedDefaultProfilePicture != null) {
            this.updateImageQueryParameters();
            this.setImageBitmap(Bitmap.createScaledBitmap((Bitmap)this.customizedDefaultProfilePicture, (int)this.queryWidth, (int)this.queryHeight, (boolean)false));
            return;
        }
        int n2 = this.isCropped() ? R.drawable.com_facebook_profile_picture_blank_square : R.drawable.com_facebook_profile_picture_blank_portrait;
        this.setImageBitmap(BitmapFactory.decodeResource((Resources)this.getResources(), (int)n2));
    }

    private void setImageBitmap(Bitmap bitmap) {
        if (this.image != null && bitmap != null) {
            this.imageContents = bitmap;
            this.image.setImageBitmap(bitmap);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean updateImageQueryParameters() {
        boolean bl = true;
        int n2 = this.getHeight();
        int n3 = this.getWidth();
        if (n3 < 1 || n2 < 1) {
            return false;
        }
        int n4 = this.getPresetSizeInPixels(false);
        if (n4 != 0) {
            n3 = n4;
            n2 = n4;
        }
        if (n3 <= n2) {
            n2 = this.isCropped() ? n3 : 0;
        } else {
            n3 = this.isCropped() ? n2 : 0;
        }
        boolean bl2 = bl;
        if (n3 == this.queryWidth) {
            bl2 = n2 != this.queryHeight ? bl : false;
        }
        this.queryWidth = n3;
        this.queryHeight = n2;
        return bl2;
    }

    public final OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }

    public final int getPresetSize() {
        return this.presetSizeType;
    }

    public final String getProfileId() {
        return this.profileId;
    }

    public final boolean isCropped() {
        return this.isCropped;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.lastRequest = null;
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        this.refreshImage(false);
    }

    protected void onMeasure(int n2, int n3) {
        ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
        int n4 = 0;
        int n5 = View.MeasureSpec.getSize((int)n3);
        int n6 = View.MeasureSpec.getSize((int)n2);
        int n7 = n4;
        int n8 = n5;
        int n9 = n3;
        if (View.MeasureSpec.getMode((int)n3) != 1073741824) {
            n7 = n4;
            n8 = n5;
            n9 = n3;
            if (layoutParams.height == -2) {
                n8 = this.getPresetSizeInPixels(true);
                n9 = View.MeasureSpec.makeMeasureSpec((int)n8, (int)1073741824);
                n7 = 1;
            }
        }
        n5 = n7;
        n4 = n6;
        n3 = n2;
        if (View.MeasureSpec.getMode((int)n2) != 1073741824) {
            n5 = n7;
            n4 = n6;
            n3 = n2;
            if (layoutParams.width == -2) {
                n4 = this.getPresetSizeInPixels(true);
                n3 = View.MeasureSpec.makeMeasureSpec((int)n4, (int)1073741824);
                n5 = 1;
            }
        }
        if (n5 != 0) {
            this.setMeasuredDimension(n4, n8);
            this.measureChildren(n3, n9);
            return;
        }
        super.onMeasure(n3, n9);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        } else {
            parcelable = (Bundle)parcelable;
            super.onRestoreInstanceState(parcelable.getParcelable("ProfilePictureView_superState"));
            this.profileId = parcelable.getString("ProfilePictureView_profileId");
            this.presetSizeType = parcelable.getInt("ProfilePictureView_presetSize");
            this.isCropped = parcelable.getBoolean("ProfilePictureView_isCropped");
            this.queryWidth = parcelable.getInt("ProfilePictureView_width");
            this.queryHeight = parcelable.getInt("ProfilePictureView_height");
            this.setImageBitmap((Bitmap)parcelable.getParcelable("ProfilePictureView_bitmap"));
            if (!parcelable.getBoolean("ProfilePictureView_refresh")) return;
            {
                this.refreshImage(true);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelable = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", parcelable);
        bundle.putString("ProfilePictureView_profileId", this.profileId);
        bundle.putInt("ProfilePictureView_presetSize", this.presetSizeType);
        bundle.putBoolean("ProfilePictureView_isCropped", this.isCropped);
        bundle.putParcelable("ProfilePictureView_bitmap", (Parcelable)this.imageContents);
        bundle.putInt("ProfilePictureView_width", this.queryWidth);
        bundle.putInt("ProfilePictureView_height", this.queryHeight);
        boolean bl = this.lastRequest != null;
        bundle.putBoolean("ProfilePictureView_refresh", bl);
        return bundle;
    }

    public final void setCropped(boolean bl) {
        this.isCropped = bl;
        this.refreshImage(false);
    }

    public final void setDefaultProfilePicture(Bitmap bitmap) {
        this.customizedDefaultProfilePicture = bitmap;
    }

    public final void setOnErrorListener(OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }

    public final void setPresetSize(int n2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("Must use a predefined preset size");
            }
            case -4: 
            case -3: 
            case -2: 
            case -1: 
        }
        this.presetSizeType = n2;
        this.requestLayout();
    }

    public final void setProfileId(String string2) {
        boolean bl = false;
        if (Utility.isNullOrEmpty(this.profileId) || !this.profileId.equalsIgnoreCase(string2)) {
            this.setBlankProfilePicture();
            bl = true;
        }
        this.profileId = string2;
        this.refreshImage(bl);
    }

    public static interface OnErrorListener {
        public void onError(FacebookException var1);
    }

}

