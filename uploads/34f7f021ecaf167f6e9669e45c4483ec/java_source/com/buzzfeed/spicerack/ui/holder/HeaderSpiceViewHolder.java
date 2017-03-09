/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.animation.AccelerateInterpolator
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.AnimationUtils
 *  android.view.animation.Interpolator
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.utils.AnimationUtil;
import com.buzzfeed.toolkit.author.ui.view.AuthorBylineView;
import com.buzzfeed.toolkit.author.ui.view.AuthorMoreBylineView;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.ui.animation.ResizeHeightAnimation;
import com.buzzfeed.toolkit.util.AnimationListener;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class HeaderSpiceViewHolder
extends BaseViewHolder {
    private static final int BYLINE_ANIM_DURATION = 100;
    private static final String MORE_PLUS = "&#43;";
    private static final int OFFSET_INCREMENT = 50;
    private TextView mBlurbTextView;
    private ViewGroup mBylineContainer;
    private ViewGroup mBylineMoreContainer;
    private boolean mHasLastUpdated;
    private TextView mLastUpdatedTextView;
    private TextView mNameTextView;
    private PostContent mPostContent;
    private TextView mPostedOnTextView;
    private boolean showedMultiAuthor = false;

    public HeaderSpiceViewHolder(View view) {
        super(view);
        this.mNameTextView = (TextView)UIUtil.findView(view, R.id.header_name);
        this.mBlurbTextView = (TextView)UIUtil.findView(view, R.id.header_blurb);
        this.mPostedOnTextView = (TextView)UIUtil.findView(view, R.id.header_posted);
        this.mLastUpdatedTextView = (TextView)UIUtil.findView(view, R.id.header_updated);
        this.mBylineContainer = (ViewGroup)UIUtil.findView(view, R.id.header_contributors);
        this.mBylineMoreContainer = (ViewGroup)UIUtil.findView(view, R.id.header_contributors_more);
    }

    private View generateByline(PostContent postContent, AuthorContent authorContent) {
        AuthorBylineView authorBylineView = new AuthorBylineView(this.itemView.getContext());
        authorBylineView.populateFrom(authorContent, postContent.isAd());
        return authorBylineView;
    }

    private View generateMoreAuthorsByline(final PostContent postContent, int n2) {
        AuthorMoreBylineView authorMoreBylineView = new AuthorMoreBylineView(this.itemView.getContext());
        authorMoreBylineView.populateFrom(this.getMoreCountText(n2), this.getMoreDescriptionText(n2));
        authorMoreBylineView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                HeaderSpiceViewHolder.this.onMoreAuthorsClicked(postContent);
            }
        });
        return authorMoreBylineView;
    }

    private String getMoreCountText(int n2) {
        if (n2 >= 10) {
            return Integer.toString(n2);
        }
        return "&#43;" + n2;
    }

    private String getMoreDescriptionText(int n2) {
        return String.format(this.itemView.getResources().getString(R.string.byline_view_more), n2);
    }

    private void onMoreAuthorsClicked(PostContent object) {
        int n2;
        if ((object = object.getAuthorContents()) == null || object.size() == 0) {
            return;
        }
        this.showedMultiAuthor = true;
        Animation animation = AnimationUtils.loadAnimation((Context)this.itemView.getContext(), (int)R.anim.byline_more_out);
        animation.setAnimationListener((Animation.AnimationListener)new AnimationListener(){

            @Override
            public void onAnimationEnd(Animation animation) {
                HeaderSpiceViewHolder.this.mBylineMoreContainer.setVisibility(8);
            }
        });
        this.mBylineMoreContainer.startAnimation(animation);
        for (n2 = 1; n2 < this.mBylineContainer.getChildCount(); ++n2) {
            animation = AnimationUtils.loadAnimation((Context)this.itemView.getContext(), (int)R.anim.byline_additional_contrib_in);
            animation.setAnimationListener((Animation.AnimationListener)new AnimationListener(){

                @Override
                public void onAnimationEnd(Animation animation) {
                    HeaderSpiceViewHolder.this.mBylineContainer.getChildAt(n2).setVisibility(0);
                }

                @Override
                public void onAnimationStart(Animation animation) {
                    HeaderSpiceViewHolder.this.mBylineContainer.getChildAt(n2).setVisibility(0);
                }
            });
            animation.setStartOffset((long)(n2 * 100));
            this.mBylineContainer.getChildAt(n2).startAnimation(animation);
        }
        int n3 = this.mBylineContainer.getChildAt(0).getHeight();
        int n4 = object.size();
        n2 = n3;
        if (n3 == 0) {
            n2 = this.itemView.getResources().getDimensionPixelSize(R.dimen.byline_min_height);
        }
        animation = new ResizeHeightAnimation((View)this.mBylineContainer, n4 * n2);
        animation.setInterpolator((Interpolator)new AccelerateInterpolator());
        animation.setDuration((long)((object.size() - 1) * 100));
        this.mBylineContainer.startAnimation(animation);
    }

    private void reloadMoreAuthors() {
        if (this.showedMultiAuthor) {
            List<AuthorContent> list = this.mPostContent.getAuthorContents();
            for (int i2 = 1; i2 < list.size(); ++i2) {
                this.mBylineContainer.getChildAt(i2).setVisibility(0);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setBylines(PostContent postContent, List<AuthorContent> iterator) {
        this.mBylineContainer.removeAllViews();
        this.mBylineMoreContainer.removeAllViews();
        if (iterator.size() <= 2) {
            iterator = iterator.iterator();
            while (iterator.hasNext()) {
                final AuthorContent authorContent = (AuthorContent)iterator.next();
                View view = this.generateByline(postContent, authorContent);
                view.setOnClickListener(new View.OnClickListener(){

                    public void onClick(View view) {
                        if (HeaderSpiceViewHolder.this.getSpicyEventListener() != null) {
                            HeaderSpiceViewHolder.this.getSpicyEventListener().authorClicked(authorContent);
                        }
                    }
                });
                this.mBylineContainer.addView(view);
            }
            return;
        } else {
            for (int i2 = 0; i2 < iterator.size(); ++i2) {
                final AuthorContent authorContent = (AuthorContent)iterator.get(i2);
                View view = this.generateByline(postContent, authorContent);
                int n2 = i2 == 0 ? 0 : (i2 == 1 ? 4 : 8);
                view.setVisibility(n2);
                this.mBylineContainer.addView(view);
                view.setOnClickListener(new View.OnClickListener(){

                    public void onClick(View view) {
                        if (HeaderSpiceViewHolder.this.getSpicyEventListener() != null) {
                            HeaderSpiceViewHolder.this.getSpicyEventListener().authorClicked(authorContent);
                        }
                    }
                });
            }
            this.mBylineMoreContainer.addView(this.generateMoreAuthorsByline(postContent, iterator.size() - 1), this.mBylineMoreContainer.getChildCount() - 1);
        }
    }

    private void setEditUpdated() {
        if (this.mPostContent != null && this.mPostContent.hasEditUpdated()) {
            this.mHasLastUpdated = true;
            this.setText(this.mLastUpdatedTextView, String.format(this.itemView.getResources().getString(R.string.updated), this.setDate(this.mPostContent.getEditUpdated())), false);
        }
    }

    private int startAnimate() {
        int n2;
        int n3 = AnimationUtil.startReveal((View)this.mNameTextView, 50, 50);
        n3 = AnimationUtil.startReveal((View)this.mBlurbTextView, n3, 50);
        n3 = n2 = AnimationUtil.startReveal((View)this.mPostedOnTextView, n3, 50);
        if (this.mHasLastUpdated) {
            n3 = AnimationUtil.startReveal((View)this.mLastUpdatedTextView, n2, 50);
        }
        n3 = AnimationUtil.startReveal((View)this.mBylineContainer, n3, 50);
        return AnimationUtil.startReveal((View)this.mBylineMoreContainer, n3, 50);
    }

    public int animateIn() {
        if (this.mNameTextView == null) {
            return 0;
        }
        return this.startAnimate();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void populateFrom(Content object) {
        this.mPostContent = (PostContent)object;
        object = this.itemView.getResources();
        this.setTextIgnoreVisibility(this.mNameTextView, this.mPostContent.getTitle(), true);
        this.setTextIgnoreVisibility(this.mBlurbTextView, this.mPostContent.getDescription(), true);
        object = this.mPostContent.isBreaking() ? object.getString(R.string.originally_posted) : "%1$s";
        this.setTextIgnoreVisibility(this.mPostedOnTextView, String.format((String)object, this.setDate(this.mPostContent.getPublished())), false);
        if (this.mPostContent.hasEditUpdated()) {
            this.setEditUpdated();
        }
        this.setBylines(this.mPostContent, this.mPostContent.getAuthorContents());
        this.reloadMoreAuthors();
    }

    public void populatePost(PostContent postContent) {
        this.mPostContent = postContent;
        this.setEditUpdated();
    }

}

