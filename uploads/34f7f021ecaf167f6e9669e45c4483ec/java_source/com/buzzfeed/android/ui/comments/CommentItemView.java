/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.comments;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.ui.comments.CommentLayout;
import com.buzzfeed.toolkit.ui.view.CircularImageView;

public class CommentItemView
extends RelativeLayout {
    private static final String TAG = CommentItemView.class.getName();
    private CircularImageView avatarImageView;
    private ImageView commentImageView;
    private TextView commentTextView;
    private View hateButton;
    private TextView hateCountView;
    private View heartButton;
    private TextView loveCountView;
    private Comment mComment;
    private CommentLayout.CommentViewOnClickListener mListener;
    private View replyButton;
    private View shareButton;
    private TextView timestampView;
    private TextView userNameView;

    public CommentItemView(Context context) {
        super(context);
        this.initViews();
    }

    private CommentLayout.CommentViewOnClickListener getCommentItemViewClickListener() {
        return this.mListener;
    }

    private void initViews() {
        CommentItemView.inflate((Context)this.getContext(), (int)this.getLayoutResourceId(), (ViewGroup)this);
        this.commentImageView = (ImageView)this.findViewById(2131820844);
        this.commentTextView = (TextView)this.findViewById(2131820834);
        this.avatarImageView = (CircularImageView)this.findViewById(2131820841);
        this.userNameView = (TextView)this.findViewById(2131820843);
        this.timestampView = (TextView)this.findViewById(2131820839);
        this.replyButton = this.findViewById(2131820833);
        this.shareButton = this.findViewById(2131820710);
        this.heartButton = this.findViewById(2131820835);
        this.loveCountView = (TextView)this.findViewById(2131820836);
        this.loveCountView.setVisibility(4);
        this.hateButton = this.findViewById(2131820837);
        this.hateCountView = (TextView)this.findViewById(2131820838);
        this.hateCountView.setVisibility(4);
        View.OnClickListener onClickListener = new View.OnClickListener(){

            public void onClick(View view) {
                if (CommentItemView.this.getCommentItemViewClickListener() != null) {
                    CommentItemView.this.getCommentItemViewClickListener().onClick(view, CommentItemView.this.getComment());
                }
            }
        };
        this.replyButton.setOnClickListener(onClickListener);
        this.replyButton.setVisibility(4);
        this.shareButton.setOnClickListener(onClickListener);
        this.heartButton.setOnClickListener(onClickListener);
        this.heartButton.setVisibility(4);
        this.hateButton.setOnClickListener(onClickListener);
        this.hateButton.setVisibility(4);
    }

    public CircularImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    public Comment getComment() {
        return this.mComment;
    }

    public ImageView getCommentImageView() {
        return this.commentImageView;
    }

    public TextView getCommentTextView() {
        return this.commentTextView;
    }

    public View getHateButton() {
        return this.hateButton;
    }

    public TextView getHateCountView() {
        return this.hateCountView;
    }

    public View getHeartButton() {
        return this.heartButton;
    }

    protected int getLayoutResourceId() {
        return 2130903121;
    }

    public TextView getLoveCountView() {
        return this.loveCountView;
    }

    public View getReplyButton() {
        return this.replyButton;
    }

    public View getShareButton() {
        return this.shareButton;
    }

    public TextView getTimestampView() {
        return this.timestampView;
    }

    public TextView getUserNameView() {
        return this.userNameView;
    }

    public void setComment(Comment comment) {
        this.mComment = comment;
    }

    public void setCommentItemViewListener(CommentLayout.CommentViewOnClickListener commentViewOnClickListener) {
        this.mListener = commentViewOnClickListener;
    }

}

