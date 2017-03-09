/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.SearchManager
 *  android.app.SearchableInfo
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.os.Bundle
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.activity.BuffetActivity;
import com.buzzfeed.android.activity.BuzzLoginActivity;
import com.buzzfeed.android.activity.DebugSettingsActivity;
import com.buzzfeed.android.activity.SettingsActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.tracking.BuffetTracker;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.pushnotifications.PushNotificationTagHelper;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.BFRateMeUtils;
import com.buzzfeed.android.util.BuzzUtils;

abstract class MenuActivity
extends BaseActivity {
    public static final int REQUEST_CODE_LOGIN = 0;
    protected BFBookmarkManager mBookmarkManager;
    protected BuffetTracker mBuffetTracker;

    MenuActivity() {
    }

    private void gotoDebugSettings() {
        DebugSettingsActivity.startIntent(this);
    }

    private void gotoFeedback() {
        this.mBuffetTracker.trackFeedbackClicked(this.getCurrentScreen());
        BuzzUtils.openFeedback(this);
    }

    private void gotoRate() {
        this.mBuffetTracker.trackRateUsClicked(this.getCurrentScreen());
        BFRateMeUtils.openRateApplication(this);
    }

    private void gotoSettings() {
        this.mBuffetTracker.trackSettingsClicked(this.getCurrentScreen());
        SettingsActivity.startIntent(this);
    }

    private void handleUserLoginMenuSelection(BuzzUser buzzUser) {
        if (buzzUser.isLogin()) {
            this.mBuffetTracker.trackSignOutClicked(this.getCurrentScreen());
            this.showSignOutDialog();
            return;
        }
        this.mBuffetTracker.trackSignInClicked(this.getCurrentScreen());
        this.login();
    }

    private void launchFeedFromTag(String string2) {
        BuffetActivity.startIntentWithFeed(this, FeedListProvider.getInstance(EnvironmentConfig.getEdition((Context)this)).getFeedFromTag(string2));
    }

    private void login() {
        this.startActivityForResult(new Intent((Context)this, (Class)BuzzLoginActivity.class), 0);
    }

    private void logout() {
        BuzzUser.getInstance((Context)this).logout(this);
        BuzzUtils.showToastNotification(this, this.getString(2131296495), 0);
        PushNotificationTagHelper.initializePushNotifications(this.getApplicationContext());
        BuzzUtils.clearSearchSuggestions((Context)this);
        this.onUserLoginStatusChanged();
    }

    private void showSignOutDialog() {
        new BuzzFeedAlertDialog.Builder((Context)this).setIcon(17301543).setTitle(2131296439).setMessage(2131296438).setPositiveButton(2131296498, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                MenuActivity.this.logout();
                MenuActivity.this.mBuffetTracker.trackSignOut();
                MenuActivity.this.supportInvalidateOptionsMenu();
            }
        }).setNegativeButton(2131296459, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                MenuActivity.this.mBuffetTracker.trackSignOutCancel();
            }
        }).show();
    }

    private void updateLoginMenuTitleForStatus(BuzzUser buzzUser, MenuItem menuItem) {
        if (buzzUser.isLogin()) {
            menuItem.setTitle(2131296868);
            return;
        }
        menuItem.setTitle(2131296448);
    }

    protected void dismissSearchViewIfNecessary() {
        Toolbar toolbar = this.getToolbar();
        if (toolbar != null) {
            toolbar.collapseActionView();
        }
    }

    protected abstract Feed getCurrentFeed();

    protected abstract String getCurrentScreen();

    protected void launchBookmarksView() {
        this.mBuffetTracker.trackBookmarksClicked(this.getCurrentScreen());
        this.launchFeedFromTag("bookmarks");
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        if (n2 == 0) {
            this.onUserLoginStatusChanged();
        }
    }

    @Override
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.mBuffetTracker = new BuffetTracker((Context)this, BuzzFeedTracker.getInstance(), DustbusterClient.getInstance(), EnvironmentConfig.getEdition((Context)this));
        this.mBookmarkManager = BFBookmarkManager.getInstance((Context)this);
    }

    public boolean onCreateOptionsMenu(Menu object) {
        super.onCreateOptionsMenu((Menu)object);
        MenuInflater menuInflater = this.getMenuInflater();
        menuInflater.inflate(2131886083, (Menu)object);
        if (!EnvironmentConfig.isProductionBuild()) {
            menuInflater.inflate(2131886084, (Menu)object);
        }
        menuInflater = (SearchManager)this.getSystemService("search");
        object = (SearchView)object.findItem(2131821107).getActionView();
        object.setMaxWidth(Integer.MAX_VALUE);
        object.setSearchableInfo(menuInflater.getSearchableInfo(this.getComponentName()));
        return true;
    }

    @Override
    public boolean onMenuOpened(int n2, Menu menu2) {
        if (menu2 != null) {
            this.mBuffetTracker.trackOverflowMenuOpened(this.getCurrentScreen());
        }
        return super.onMenuOpened(n2, menu2);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 2131821107: {
                this.mBuffetTracker.trackSearchClicked(this.getCurrentScreen());
                return true;
            }
            case 2131821108: {
                BuzzUser buzzUser = BuzzUser.getInstance((Context)this);
                this.handleUserLoginMenuSelection(buzzUser);
                this.updateLoginMenuTitleForStatus(buzzUser, menuItem);
                return true;
            }
            case 2131821110: {
                this.gotoSettings();
                return true;
            }
            case 2131821113: {
                this.gotoDebugSettings();
                return true;
            }
            case 2131821111: {
                this.gotoFeedback();
                return true;
            }
            case 2131821112: {
                this.gotoRate();
                return true;
            }
            case 2131821109: {
                this.launchBookmarksView();
                return true;
            }
            case 2131821114: {
                this.launchFeedFromTag("local_weaver");
                return true;
            }
            case 2131821115: 
        }
        this.launchFeedFromTag("local_spicerack");
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu2) {
        this.updateLoginMenuTitleForStatus(BuzzUser.getInstance((Context)this), menu2.findItem(2131821108));
        return super.onPrepareOptionsMenu(menu2);
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.dismissSearchViewIfNecessary();
    }

    protected void onUserLoginStatusChanged() {
    }

}

