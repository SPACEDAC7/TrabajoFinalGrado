/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.activity.ContributionSubmitActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.comment.BuzzFeedCommentLoader;
import com.buzzfeed.android.data.comment.CommentListCache;
import com.buzzfeed.android.data.comment.CommentListMapCache;
import com.buzzfeed.android.ui.comments.CommentLayout;
import com.buzzfeed.android.ui.comments.CommentViewOnClickListenerImpl;
import com.buzzfeed.android.ui.comments.CommentsChangeObserver;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.UIUtil;
import java.io.Serializable;
import java.util.Observer;

public class CommentsActivity
extends BaseActivity {
    public static final int COMMENT_REQUEST_CODE_ADD_COMMENT = 1000;
    public static final int COMMENT_REQUEST_CODE_LOGIN = 2000;
    public static final int COMMENT_REQUEST_CODE_LOGIN_REACTION = 3000;
    private static final String KEY_CONTENT = "KEY_CONTENT";
    public static final String TAG = CommentsActivity.class.getSimpleName();
    private CommentLayout mCommentLayout;
    private BuzzFeedCommentLoader mCommentLoader;
    private CommentListCache mCommentsListCache;
    private PostContent mContent;
    private CommentsChangeObserver mObserver;

    private void initCommentViewClickListener() {
        this.mCommentLayout.setCommentViewOnClickListener(new CommentViewOnClickListenerImpl(this, BuzzUser.getInstance(this.getApplicationContext()), this.mCommentLoader, this.mContent));
    }

    private void setupCommentLayout() {
        this.mCommentLayout.setPostContent(this.mContent);
        this.mCommentLayout.refreshHeader();
        this.mCommentLayout.setCommentLoader(this.mCommentLoader);
        this.initCommentViewClickListener();
        this.mObserver = new CommentsChangeObserver(this.mContent.getId(), this.mCommentLayout);
        this.mCommentsListCache.addObserver(this.mObserver);
        this.mCommentLayout.loadComments();
    }

    public static Intent startIntent(Context context, PostContent postContent) {
        context = new Intent(context, (Class)CommentsActivity.class);
        context.putExtra("KEY_CONTENT", (Serializable)postContent);
        return context;
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar object) {
        super.configureToolbar((Toolbar)((Object)object));
        object = this.getSupportActionBar();
        object.setCustomView(2130903068);
        ((TextView)UIUtil.findView(object.getCustomView(), 2131820683)).setText((CharSequence)this.getString(2131296537));
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        if (n2 == 2000) {
            intent = new Intent((Context)this, (Class)ContributionSubmitActivity.class);
            intent.putExtra("KEY_CONTENT", (Serializable)this.mContent);
            this.startActivity(intent);
            this.overridePendingTransition(2130968602, 2130968601);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903072);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                CommentsActivity.this.onBackPressed();
                CommentsActivity.this.overridePendingTransition(2130968600, 2130968603);
            }
        });
        this.mCommentLayout = (CommentLayout)this.findViewById(2131820694);
        this.mCommentsListCache = CommentListMapCache.getInstance();
        if (this.getIntent().hasExtra("KEY_CONTENT")) {
            this.mContent = (PostContent)this.getIntent().getSerializableExtra("KEY_CONTENT");
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mCommentsListCache.deleteObserver(this.mObserver);
        this.mCommentLayout.destroyCommentClickListener();
        this.mObserver = null;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override
    public void onResume() {
        TAG + ".onResume()";
        super.onResume();
        this.mCommentLoader = new BuzzFeedCommentLoader((Context)this);
        this.mCommentLayout.setCommentLoader(this.mCommentLoader);
        this.initCommentViewClickListener();
        if (this.mCommentLayout.getPostContent() == null) {
            this.setupCommentLayout();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

}

