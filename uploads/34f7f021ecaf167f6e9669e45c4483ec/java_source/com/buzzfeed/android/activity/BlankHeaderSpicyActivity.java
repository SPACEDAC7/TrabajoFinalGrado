/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.buzzfeed.android.activity.SpicyActivity;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.ui.reactions.ReactionsView;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.UIUtil;

public class BlankHeaderSpicyActivity
extends SpicyActivity {
    public static void startIntent(Activity activity, PostContent postContent, Feed feed) {
        activity.startActivityForResult(BlankHeaderSpicyActivity.getDefaultIntentBlankHeader(activity, postContent, feed), 1);
    }

    @Override
    protected void createSpicyOptionsMenu(Menu menu2) {
        this.getMenuInflater().inflate(2131886081, menu2);
    }

    @Override
    protected void initLayout() {
        this.setContentView(2130903078);
    }

    @Override
    protected void initSharedElementTransition() {
    }

    @Override
    protected void setUpToolBar() {
        Toolbar toolbar = (Toolbar)((Object)UIUtil.findView(this, 2131820685));
        toolbar.setVisibility(0);
        this.setSupportActionBar(toolbar);
        this.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.getSupportActionBar().setHomeButtonEnabled(true);
        this.getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mReactionsView = (ReactionsView)this.findViewById(2131820708);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected void updateBookmarkMenuButton() {
        if (this.mHeaderContent == null || !this.mHeaderContent.isValid() || this.mBookmarkMenuButton == null) return;
        if (BFBookmarkManager.getInstance((Context)this).isBookmarked(this.mHeaderContent)) {
            this.mBookmarkMenuButton.setIcon(this.getResources().getDrawable(2130837593));
            return;
        }
        this.mBookmarkMenuButton.setIcon(this.getResources().getDrawable(2130837595));
    }
}

