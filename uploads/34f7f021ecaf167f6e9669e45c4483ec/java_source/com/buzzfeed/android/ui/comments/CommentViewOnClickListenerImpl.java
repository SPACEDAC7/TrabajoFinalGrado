/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.ActivityOptions
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.Pair
 *  android.view.View
 *  android.view.ViewParent
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.comments;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Pair;
import android.view.View;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.activity.BuzzLoginActivity;
import com.buzzfeed.android.activity.ContributionSubmitActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.comment.BuzzFeedComment;
import com.buzzfeed.android.data.comment.BuzzFeedCommentLoader;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.data.tracking.CommentTracker;
import com.buzzfeed.android.ui.comments.CommentItemView;
import com.buzzfeed.android.ui.comments.CommentLayout;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.ui.view.CircularImageView;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.io.Serializable;

public class CommentViewOnClickListenerImpl
implements CommentLayout.CommentViewOnClickListener {
    private static final String TAG = CommentViewOnClickListenerImpl.class.getSimpleName();
    private Activity mActivity;
    private CommentTracker mCommentTracker;
    private PostContent mContent;
    private BuzzFeedCommentLoader mLoader;
    private ShareManager.ShareActionListener mShareActionListener;
    private BuzzUser mUser;

    public CommentViewOnClickListenerImpl(Activity activity, BuzzUser buzzUser, BuzzFeedCommentLoader buzzFeedCommentLoader, PostContent postContent) {
        this.mLoader = buzzFeedCommentLoader;
        this.mUser = buzzUser;
        this.mContent = postContent;
        this.mCommentTracker = new CommentTracker(BuzzFeedTracker.getInstance(), (Context)activity);
        this.mActivity = activity;
    }

    private CommentItemView getParentCommentItemView(View view) {
        while (view != null && view.getParent() != null) {
            if (view.getParent() instanceof CommentItemView) {
                return (CommentItemView)view.getParent();
            }
            view = (View)view.getParent();
        }
        return null;
    }

    private void hateComment(BuzzFeedComment buzzFeedComment, Context context) {
        if (this.userCanHeartOrHate(buzzFeedComment)) {
            BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296765), context.getString(2131296724), null, 0);
            this.mLoader.updateComment(buzzFeedComment, false);
        }
    }

    private void heartComment(BuzzFeedComment buzzFeedComment, Context context) {
        if (this.userCanHeartOrHate(buzzFeedComment)) {
            BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296765), context.getString(2131296725), null, 0);
            this.mLoader.updateComment(buzzFeedComment, true);
        }
    }

    private boolean isUserLoggedIn() {
        if (this.mUser != null && this.mUser.isLogin()) {
            return true;
        }
        return false;
    }

    private void startContributeSubmitActivity(View object, Comment comment, boolean bl) {
        String string2;
        if (this.mActivity == null) {
            LogUtil.d(TAG, "Unable to start contribute submit activity: View context is not an activity");
            return;
        }
        if (!BuzzUser.getInstance(object.getContext().getApplicationContext()).isLogin()) {
            this.startLoginActivity((Context)this.mActivity, 2000);
            return;
        }
        Intent intent = new Intent((Context)this.mActivity, (Class)ContributionSubmitActivity.class);
        intent.putExtra("KEY_CONTENT", (Serializable)this.mContent);
        String string3 = string2 = null;
        if (comment != null) {
            String string4;
            string3 = string4 = comment.getCommentId();
            if (bl) {
                string3 = string4;
                if (comment.getParent() != null) {
                    string3 = comment.getParent().getCommentId();
                }
            }
            intent.putExtra("comment_id", string3);
            object = this.getParentCommentItemView((View)object);
            string3 = string2;
            if (object != null) {
                string3 = string2;
                if (Build.VERSION.SDK_INT >= 21) {
                    string3 = ActivityOptions.makeSceneTransitionAnimation((Activity)this.mActivity, (Pair[])new Pair[]{new Pair((Object)object.getAvatarImageView(), (Object)ContributionSubmitActivity.SharedElementTag.AVATAR), new Pair((Object)object.getCommentTextView(), (Object)ContributionSubmitActivity.SharedElementTag.COMMENT), new Pair((Object)object.getUserNameView(), (Object)ContributionSubmitActivity.SharedElementTag.USER_NAME), new Pair((Object)object.getCommentImageView(), (Object)ContributionSubmitActivity.SharedElementTag.COMMENT_IMAGE)}).toBundle();
                }
            }
        }
        if (comment != null && string3 != null && VersionUtil.hasLollipop()) {
            this.mActivity.startActivityForResult(intent, 1000, (Bundle)string3);
            return;
        }
        this.mActivity.overridePendingTransition(2130968602, 2130968601);
        this.mActivity.startActivityForResult(intent, 1000);
    }

    private void startIntentForResult(Intent intent, int n2, Context context) {
        if (context instanceof Activity) {
            ((Activity)context).startActivityForResult(intent, n2);
            return;
        }
        LogUtil.e(TAG, "Context is not an activity.");
    }

    private void startLoginActivity(Context context, int n2) {
        this.startIntentForResult(new Intent((Context)((Activity)context), (Class)BuzzLoginActivity.class), n2, context);
    }

    private void startShareIntent(Context context, Comment comment, PostContent object) {
        this.mCommentTracker.trackCommentOpenShareSheet();
        object = EnvironmentConfig.getUrlWithSSLBaseUrl(object.getUri());
        this.mShareActionListener = new ShareManager.ShareActionListener(){

            @Override
            public void onShareAction(@Nullable String string2) {
                CommentViewOnClickListenerImpl.this.mCommentTracker.trackCommentShareActivityClicked(string2);
            }
        };
        ShareManager.shareWithListenerWithComment((Activity)context, this.mContent.getSubject(), comment.getShareBody(), (String)object, this.mShareActionListener);
    }

    private boolean userCanHeartOrHate(BuzzFeedComment buzzFeedComment) {
        if (this.isUserLoggedIn() && !buzzFeedComment.userHated() && !buzzFeedComment.userHearted()) {
            return true;
        }
        return false;
    }

    @Override
    public void destroy() {
        this.mActivity = null;
        this.mShareActionListener = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View object, Comment comment) {
        String string2 = TAG + ".onClick";
        int n2 = object.getId();
        switch (n2) {
            default: {
                LogUtil.e(string2, "error finding onClick case for view id " + object.getResources().getResourceEntryName(n2));
                return;
            }
            case 2131820837: {
                if (!(comment instanceof BuzzFeedComment)) return;
                {
                    object = (BuzzFeedComment)comment;
                    if (!this.isUserLoggedIn()) {
                        this.startLoginActivity((Context)this.mActivity, 3000);
                        return;
                    }
                    if (!object.userHearted() && !object.userHated()) {
                        this.hateComment((BuzzFeedComment)object, (Context)this.mActivity);
                        return;
                    }
                    LogUtil.d(string2, "Comment already liked or hated");
                    return;
                }
            }
            case 2131820833: {
                this.startContributeSubmitActivity((View)object, comment, true);
                return;
            }
            case 2131820835: {
                if (!(comment instanceof BuzzFeedComment)) return;
                {
                    object = (BuzzFeedComment)comment;
                    if (!this.isUserLoggedIn()) {
                        this.startLoginActivity((Context)this.mActivity, 3000);
                        return;
                    }
                    if (!object.userHearted() && !object.userHated()) {
                        this.heartComment((BuzzFeedComment)object, (Context)this.mActivity);
                        return;
                    }
                }
                LogUtil.d(string2, "Comment already liked or hated");
                return;
            }
            case 2131820710: {
                this.startShareIntent((Context)this.mActivity, comment, this.mContent);
                return;
            }
            case 2131820851: 
        }
        this.startContributeSubmitActivity((View)object, null, false);
    }

}

