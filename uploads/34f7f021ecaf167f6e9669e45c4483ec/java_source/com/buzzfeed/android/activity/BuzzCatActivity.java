/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.DialogInterface$OnClickListener
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.buzzcat.EasterEggSnakeFragment;
import com.buzzfeed.buzzcat.SnakeGameController;
import java.util.Map;

public class BuzzCatActivity
extends BaseActivity
implements EasterEggSnakeFragment.CatStyleParent,
SnakeGameController.SnakeControllerParent {
    private AlertDialog mResumeGameAlertDialog;
    private AlertDialog mStartDialog;

    @Override
    protected void configureToolbar(@NonNull Toolbar toolbar) {
        super.configureToolbar(toolbar);
        this.getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.getSupportActionBar().setDisplayShowCustomEnabled(true);
        this.getSupportActionBar().setCustomView(2130903068);
        ((TextView)this.getSupportActionBar().getCustomView().findViewById(2131820683)).setText((CharSequence)this.getString(2131296642));
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public int getTopBarColorResource() {
        return 2131755045;
    }

    @Override
    public void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.setContentView(2130903071);
        object = new EasterEggSnakeFragment();
        this.getSupportFragmentManager().beginTransaction().add(2131820692, (Fragment)object).commit();
        BuzzFeedTracker.getInstance().trackPageView(this.getResources().getString(2131296747), null);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                BuzzCatActivity.this.onBackPressed();
            }
        });
    }

    @Override
    protected void onDestroy() {
        if (this.mResumeGameAlertDialog != null) {
            this.mResumeGameAlertDialog.dismiss();
        }
        if (this.mStartDialog != null) {
            this.mStartDialog.dismiss();
        }
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (this.mResumeGameAlertDialog != null) {
            this.mResumeGameAlertDialog.dismiss();
        }
    }

    @Override
    public void quit() {
        this.finish();
    }

    @Override
    public void showListDialog(final String string2, String string3, String[] arrstring, final AdapterView.OnItemClickListener onItemClickListener, DialogInterface.OnCancelListener onCancelListener) {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)this);
        builder.setTitle(string3);
        builder.setStackedListItems(arrstring, new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                if (!(BuzzCatActivity.this.mStartDialog == null || string2.equals("game_over") && n2 == 0)) {
                    BuzzCatActivity.this.mStartDialog.dismiss();
                }
                onItemClickListener.onItemClick(adapterView, view, n2, l2);
            }
        });
        this.mStartDialog = builder.create();
        this.mStartDialog.setOnCancelListener(onCancelListener);
        if (!this.isFinishing()) {
            this.mStartDialog.show();
        }
    }

    @Override
    public void showSingleButtonDialog(String string2, String string3, final DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener) {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)this);
        builder.setTitle(string2);
        builder.setPositiveButton(string3, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                onClickListener.onClick(dialogInterface, n2);
                if (BuzzCatActivity.this.mResumeGameAlertDialog != null) {
                    BuzzCatActivity.this.mResumeGameAlertDialog.dismiss();
                }
            }
        });
        this.mResumeGameAlertDialog = builder.create();
        this.mResumeGameAlertDialog.setOnCancelListener(onCancelListener);
        if (!this.isFinishing()) {
            this.mResumeGameAlertDialog.show();
        }
    }

}

