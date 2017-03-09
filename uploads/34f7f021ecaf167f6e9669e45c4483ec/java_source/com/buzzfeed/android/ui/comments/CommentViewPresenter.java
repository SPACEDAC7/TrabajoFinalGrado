/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.view.View
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.comments;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.comment.BuzzFeedComment;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.ui.comments.CommentItemView;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.ui.view.CircularImageView;
import com.buzzfeed.toolkit.util.LogUtil;

public class CommentViewPresenter {
    private static final String TAG = CommentViewPresenter.class.getSimpleName();

    /*
     * Enabled aggressive block sorting
     */
    public void onBindView(View object, Comment object2, PostContent postContent) {
        Object object3 = TAG + ".onBindView";
        if (!(object instanceof CommentItemView)) {
            LogUtil.e((String)object3, "Cant bind data object of class " + object2.getClass().getSimpleName() + " with " + object.getClass().getSimpleName());
            return;
        }
        if (!(object2 instanceof BuzzFeedComment)) {
            LogUtil.e((String)object3, "Cant bind object of class " + object2.getClass().getSimpleName() + " with CommentItemView");
            return;
        } else {
            object3 = (BuzzFeedComment)object2;
            object = (CommentItemView)((Object)object);
            object.getTimestampView().setText((CharSequence)object3.getFormattedTimestamp().toUpperCase());
            if (!TextUtils.isEmpty((CharSequence)object2.getCommentImageUrl()) && !object3.getCommentImageUrl().equals("null")) {
                object2 = EnvironmentConfig.getUrlWithStaticBaseUrl(object3.getCommentImageUrl());
                ImageView imageView = object.getCommentImageView();
                Glide.with(imageView.getContext()).load((String)object2).into(imageView);
            }
            if (!TextUtils.isEmpty((CharSequence)object3.getBlurb())) {
                object.getCommentTextView().setText((CharSequence)object3.getBlurb());
            }
            if ((object2 = object3.getUserInfo()) != null) {
                object.getUserNameView().setText((CharSequence)object2.getUsername());
                object2 = object2.getLargeUserImg();
                if (!(TextUtils.isEmpty((CharSequence)object2) || object2.equals("null") || object2.contains("static/images/public/defaults/user_large.jpg") || object2.contains("static/images/public/defaults/user.jpg"))) {
                    Glide.with(object.getContext()).load((String)object2).into(object.getAvatarImageView());
                } else {
                    object.getAvatarImageView().setBackgroundResource(2130837722);
                }
            }
            object.getLoveCountView().setText((CharSequence)("" + object3.getLoveCount() + ""));
            object.getHateCountView().setText((CharSequence)("" + object3.getHateCount() + ""));
            object.getHeartButton().setSelected(object3.userHearted());
            object.getHateButton().setSelected(object3.userHated());
            object.setComment((Comment)object3);
            if (postContent.isCommentsEnabled()) {
                object.getReplyButton().setVisibility(0);
            }
            if (!postContent.isReactionsEnabled()) return;
            {
                object.getLoveCountView().setVisibility(0);
                object.getHeartButton().setVisibility(0);
                object.getHateButton().setVisibility(0);
                object.getHateCountView().setVisibility(4);
                return;
            }
        }
    }

    public void updateView(View object, Comment comment) {
        if (object instanceof CommentItemView) {
            object = (CommentItemView)((Object)object);
            if (!(comment instanceof BuzzFeedComment)) {
                LogUtil.e(TAG, "Cant update object of class " + comment.getClass().getSimpleName() + " with CommentItemView");
                return;
            }
            comment = (BuzzFeedComment)comment;
            object.getLoveCountView().setText((CharSequence)comment.displayLoveCount());
            object.getHateCountView().setText((CharSequence)comment.displayHateCount());
            return;
        }
        LogUtil.e(TAG, "Cant update object of class " + comment.getClass().getSimpleName() + " with " + object.getClass().getSimpleName());
    }
}

