/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.provider.SearchRecentSuggestions
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.SearchRecentSuggestions;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.android.activity.MenuActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.tracking.BuffetTracker;
import com.buzzfeed.android.ui.buffet.fragment.BuffetFragment;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import java.util.Map;

public class BuffetSearchActivity
extends MenuActivity {
    private BuffetFragment mBuffetFragment;
    private Feed mCurrentFeed;
    private SearchRecentSuggestions mSuggester;

    private Feed getSearchFeed(String object) {
        object = new LegacyFeedServiceHelper.SearchParamsBuilder().query((String)object).build();
        return new Feed.Builder("search").withSearchParams((Map<String, String>)object).build();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void handleIntent(Intent object) {
        if (object != null && "android.intent.action.SEARCH".equals(object.getAction())) {
            object = object.getStringExtra("query");
            this.mCurrentFeed = this.getSearchFeed((String)object);
            if (this.mBuffetFragment == null) {
                this.mBuffetFragment = BuffetFragment.newInstance(this.mCurrentFeed);
                this.getSupportFragmentManager().beginTransaction().add(2131820684, this.mBuffetFragment).commit();
            } else {
                this.mBuffetFragment.switchFeed(this.mCurrentFeed);
            }
            this.mBuffetTracker.trackSearchQuery(this.getCurrentScreen(), (String)object);
            if (this.mSuggester != null) {
                this.mSuggester.saveRecentQuery((String)object, null);
            }
            this.supportInvalidateOptionsMenu();
            if (this.getSupportActionBar() != null) {
                ((TextView)this.getSupportActionBar().getCustomView().findViewById(2131820683)).setText((CharSequence)object);
            }
        }
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar toolbar) {
        this.getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.getSupportActionBar().setDisplayShowCustomEnabled(true);
        this.getSupportActionBar().setCustomView(2130903068);
    }

    @Override
    protected Feed getCurrentFeed() {
        return this.mCurrentFeed;
    }

    @Nullable
    @Override
    protected String getCurrentScreen() {
        return AnalyticsUtils.buildScreenNameFromFeed(this.mCurrentFeed, EnvironmentConfig.getEdition((Context)this));
    }

    @Override
    public void onBackPressed() {
        this.mBuffetTracker.trackBackSearchFeed();
        super.onBackPressed();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903075);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                BuffetSearchActivity.this.onBackPressed();
            }
        });
        this.mSuggester = new SearchRecentSuggestions(this.getApplicationContext(), "com.buzzfeed.android.data.SearchSuggester", 1);
        this.handleIntent(this.getIntent());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        this.handleIntent(intent);
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.overridePendingTransition(0, 0);
    }

}

