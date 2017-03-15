/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Handler
 *  com.squareup.picasso.Picasso
 *  com.twitter.sdk.android.core.AppSession
 *  com.twitter.sdk.android.core.Session
 *  com.twitter.sdk.android.core.SessionManager
 *  com.twitter.sdk.android.core.TwitterSession
 *  com.twitter.sdk.android.core.internal.SessionProvider
 *  com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient
 *  com.twitter.sdk.android.core.internal.scribe.EventNamespace
 *  com.twitter.sdk.android.core.internal.scribe.ScribeItem
 *  com.twitter.sdk.android.tweetui.TweetRepository
 *  com.twitter.sdk.android.tweetui.TweetUiAuthRequestQueue
 *  com.twitter.sdk.android.tweetui.internal.GuestSessionProvider
 *  com.twitter.sdk.android.tweetui.internal.UserSessionProvider
 */
package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.os.Handler;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.AppSession;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.SessionProvider;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.tweetui.TweetRepository;
import com.twitter.sdk.android.tweetui.TweetUiAuthRequestQueue;
import com.twitter.sdk.android.tweetui.internal.GuestSessionProvider;
import com.twitter.sdk.android.tweetui.internal.UserSessionProvider;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import java.util.ArrayList;
import java.util.List;

@DependsOn(value={TwitterCore.class})
public class TweetUi
extends Kit<Boolean> {
    private static final String KIT_SCRIBE_NAME = "TweetUi";
    static final String LOGTAG = "TweetUi";
    static final String NOT_STARTED_ERROR = "Must start TweetUi Kit in Fabric.with().";
    private TweetUiAuthRequestQueue guestAuthQueue;
    List<SessionManager<? extends Session>> guestSessionManagers;
    GuestSessionProvider guestSessionProvider;
    private Picasso imageLoader;
    DefaultScribeClient scribeClient;
    private TweetRepository tweetRepository;
    private TweetUiAuthRequestQueue userAuthQueue;
    List<SessionManager<? extends Session>> userSessionManagers;
    UserSessionProvider userSessionProvider;

    private static void checkInitialized() {
        if (Fabric.getKit(TweetUi.class) == null) {
            throw new IllegalStateException("Must start TweetUi Kit in Fabric.with().");
        }
    }

    public static TweetUi getInstance() {
        TweetUi.checkInitialized();
        return (TweetUi)Fabric.getKit(TweetUi.class);
    }

    private void setUpScribeClient() {
        this.scribeClient = new DefaultScribeClient((Kit)this, "TweetUi", this.guestSessionManagers, this.getIdManager());
    }

    @Override
    protected Boolean doInBackground() {
        this.imageLoader = Picasso.with((Context)this.getContext());
        this.userAuthQueue.sessionRestored(this.userSessionProvider.getActiveSession());
        this.guestAuthQueue.sessionRestored(this.guestSessionProvider.getActiveSession());
        this.setUpScribeClient();
        return true;
    }

    TweetUiAuthRequestQueue getGuestAuthQueue() {
        return this.guestAuthQueue;
    }

    @Override
    public String getIdentifier() {
        return "com.twitter.sdk.android:tweet-ui";
    }

    Picasso getImageLoader() {
        return this.imageLoader;
    }

    TweetRepository getTweetRepository() {
        return this.tweetRepository;
    }

    @Override
    public String getVersion() {
        return "1.10.3.127";
    }

    @Override
    protected boolean onPreExecute() {
        super.onPreExecute();
        TwitterCore twitterCore = TwitterCore.getInstance();
        this.userSessionManagers = new ArrayList<SessionManager<? extends Session>>(1);
        this.userSessionManagers.add(twitterCore.getSessionManager());
        this.userSessionProvider = new UserSessionProvider(this.userSessionManagers);
        this.userAuthQueue = new TweetUiAuthRequestQueue(twitterCore, (SessionProvider)this.userSessionProvider);
        this.guestSessionManagers = new ArrayList<SessionManager<? extends Session>>(2);
        this.guestSessionManagers.add(twitterCore.getSessionManager());
        this.guestSessionManagers.add(twitterCore.getAppSessionManager());
        this.guestSessionProvider = new GuestSessionProvider(twitterCore, this.guestSessionManagers);
        this.guestAuthQueue = new TweetUiAuthRequestQueue(twitterCore, (SessionProvider)this.guestSessionProvider);
        this.tweetRepository = new TweetRepository(this.getFabric().getMainHandler(), this.userAuthQueue, this.guestAuthQueue);
        return true;
    }

    void scribe(EventNamespace eventNamespace, List<ScribeItem> list) {
        if (this.scribeClient == null) {
            return;
        }
        this.scribeClient.scribe(eventNamespace, list);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    /* varargs */ void scribe(EventNamespace ... arreventNamespace) {
        if (this.scribeClient == null) {
            return;
        }
        int n2 = arreventNamespace.length;
        int n3 = 0;
        while (n3 < n2) {
            EventNamespace eventNamespace = arreventNamespace[n3];
            this.scribeClient.scribe(new EventNamespace[]{eventNamespace});
            ++n3;
        }
    }

    void setImageLoader(Picasso picasso) {
        this.imageLoader = picasso;
    }

    void setTweetRepository(TweetRepository tweetRepository) {
        this.tweetRepository = tweetRepository;
    }
}

