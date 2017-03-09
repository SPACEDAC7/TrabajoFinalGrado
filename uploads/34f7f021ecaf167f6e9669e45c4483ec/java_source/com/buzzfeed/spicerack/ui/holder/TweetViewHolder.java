/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.TextView
 *  com.twitter.sdk.android.core.Callback
 *  com.twitter.sdk.android.core.Result
 *  com.twitter.sdk.android.core.TwitterException
 *  com.twitter.sdk.android.tweetui.TweetView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.data.model.subbuzz.TweetSpice;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.TweetUtils;
import com.twitter.sdk.android.tweetui.TweetView;

public class TweetViewHolder
extends SpiceViewHolder {
    public static final String TAG = LogUtil.makeLogTag(TweetViewHolder.class);
    private TextView mDescription;
    private ViewGroup mReplyTweetLayout;
    private ViewGroup mTweetLayout;

    public TweetViewHolder(View view) {
        super(view);
        this.mTweetLayout = (ViewGroup)UIUtil.findView(view, R.id.spice_tweet_layout);
        this.mReplyTweetLayout = (ViewGroup)UIUtil.findView(view, R.id.spice_reply_tweet_layout);
        this.mDescription = (TextView)UIUtil.findView(view, R.id.spice_description);
    }

    private void loadTweet(String string2, final ViewGroup viewGroup) {
        if (TextUtils.isEmpty((CharSequence)string2) || !TextUtils.isDigitsOnly((CharSequence)string2)) {
            return;
        }
        TweetUtils.loadTweet(Long.parseLong(string2), new Callback<Tweet>(){

            public void failure(TwitterException twitterException) {
                LogUtil.w(TweetViewHolder.TAG, twitterException.getMessage());
            }

            public void success(Result<Tweet> tweetView) {
                tweetView = new TweetView(TweetViewHolder.this.itemView.getContext(), (Tweet)tweetView.data);
                tweetView.setTweetActionsEnabled(false);
                viewGroup.addView((View)tweetView);
            }
        });
    }

    private boolean tweetIsAReply(TweetSpice tweetSpice) {
        if (tweetSpice.getMetadata().getTweet().getInReplyToStatusIdStr() != null && tweetSpice.getMetadata().getResponseTo().isShow()) {
            return true;
        }
        return false;
    }

    @Override
    public void populateFrom(Content object) {
        super.populateFrom((Content)object);
        object = (TweetSpice)object;
        this.setText(this.mDescription, object.getDescription(), true);
        this.mReplyTweetLayout.removeAllViews();
        this.mTweetLayout.removeAllViews();
        if (this.tweetIsAReply((TweetSpice)object)) {
            this.loadTweet(object.getMetadata().getTweet().getInReplyToStatusIdStr(), this.mReplyTweetLayout);
        }
        this.loadTweet(object.getSourceId(), this.mTweetLayout);
    }

}

