/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.text.Html
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.FrameLayout
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 *  android.widget.TextView
 */
package com.buzzfeed.toolkit.author.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bumptech.glide.BitmapTypeRequest;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.ui.view.CircularImageView;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Locale;

public class AuthorBylineView
extends RelativeLayout {
    private static final int AUTHOR_IMAGE_SIZE = 64;
    private static final CharSequence BRAND_PUBLISHER;
    private static final CharSequence COMMUNITY_CONTRIBUTOR;
    private static final CharSequence UK_BYLINE_DESCRIPTION;
    private TextView mAuthorDescriptionTextView;
    private FrameLayout mAuthorImageContainer;
    private TextView mAuthorNameTextView;
    private CircularImageView mCircleImageView;
    private ImageView mSquareImageView;

    static {
        COMMUNITY_CONTRIBUTOR = "Community";
        UK_BYLINE_DESCRIPTION = "Promoted Content";
        BRAND_PUBLISHER = "Brand Publisher";
    }

    public AuthorBylineView(Context context) {
        super(context);
        this.init();
    }

    public AuthorBylineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public AuthorBylineView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    private void init() {
        AuthorBylineView.inflate((Context)this.getContext(), (int)R.layout.author_byline, (ViewGroup)this);
        this.mAuthorImageContainer = (FrameLayout)UIUtil.findView((View)this, R.id.byline_image_layout);
        this.mCircleImageView = (CircularImageView)((Object)UIUtil.findView((View)this, R.id.byline_staff_thumbnail));
        this.mSquareImageView = (ImageView)UIUtil.findView((View)this, R.id.byline_sponsor_thumbnail);
        this.mAuthorNameTextView = (TextView)UIUtil.findView((View)this, R.id.byline_name);
        this.mAuthorDescriptionTextView = (TextView)UIUtil.findView((View)this, R.id.byline_description);
        this.mCircleImageView.setImageBitmap(UIUtil.createColorBitmap(this.getResources().getColor(R.color.buzzfeed_light_gray), 64, 64));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void populateFrom(AuthorContent object, boolean bl) {
        this.mAuthorImageContainer.setVisibility(0);
        if (object.getAvatar() != null) {
            if (!bl) {
                this.mSquareImageView.setVisibility(8);
                this.mCircleImageView.setVisibility(0);
                Glide.with(this.getContext()).load(object.getAvatar()).asBitmap().into(new SimpleTarget<Bitmap>(64, 64){

                    @Override
                    public void onLoadFailed(Exception exception, Drawable drawable2) {
                        super.onLoadFailed(exception, drawable2);
                        AuthorBylineView.this.mCircleImageView.setImageDrawable(AuthorBylineView.this.getResources().getDrawable(R.drawable.sidemenu_avatar_placeholder));
                    }

                    @Override
                    public void onResourceReady(Bitmap bitmap, GlideAnimation glideAnimation) {
                        AuthorBylineView.this.mCircleImageView.setImageBitmap(bitmap);
                    }
                });
            } else {
                this.mSquareImageView.setVisibility(0);
                this.mCircleImageView.setVisibility(8);
                Glide.with(this.getContext()).load(object.getAvatar()).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().into(this.mSquareImageView);
            }
        }
        this.mAuthorNameTextView.setText((CharSequence)Html.fromHtml((String)object.getDisplayName()));
        if (object.getTitle() == null) {
            this.mAuthorDescriptionTextView.setVisibility(8);
            return;
        }
        this.mAuthorDescriptionTextView.setVisibility(0);
        object = Locale.getDefault().equals(Locale.UK) && object.getTitle().equals(BRAND_PUBLISHER) ? UK_BYLINE_DESCRIPTION : Html.fromHtml((String)object.getTitle());
        this.mAuthorDescriptionTextView.setText((CharSequence)object);
    }

}

