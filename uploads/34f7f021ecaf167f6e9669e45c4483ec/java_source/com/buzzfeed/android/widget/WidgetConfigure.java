/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.appwidget.AppWidgetManager
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.Intent
 *  android.os.Bundle
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.RemoteViews
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.RemoteViews;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.database.Preference;
import com.buzzfeed.android.database.PreferenceData;
import com.buzzfeed.android.database.PreferenceDatabaseManager;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.FeedUtils;
import com.buzzfeed.android.widget.Widget4x2Stacked;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class WidgetConfigure
extends BaseActivity {
    private static final String CONFIGURE_ACTION = "android.appwidget.action.APPWIDGET_CONFIGURE";
    private static final String TAG = WidgetConfigure.class.getSimpleName();
    private int appWidgetId = 0;
    private List<Feed> badgeList = null;
    private Context context;
    private ArrayList<Feed> feedList;
    private FeedListProvider feedListProvider = null;
    private ArrayList<String> feedNameList;
    private ArrayList<String> feedTypeList;
    private AlertDialog mAlertDialog;
    private BuzzFeedTracker mTracker;

    private void buildFeedList() {
        this.feedList = new ArrayList();
        this.feedNameList = new ArrayList();
        this.feedTypeList = new ArrayList();
        this.badgeList = this.feedListProvider.getFeeds();
        if (this.badgeList != null) {
            for (Feed feed : this.badgeList) {
                if (FeedUtils.excludeFromWidgetSelection(feed.getTag())) continue;
                this.feedList.add(feed);
                if (FeedUtils.isFeedReaction(feed.getName())) {
                    this.feedNameList.add(feed.getTag());
                    this.feedTypeList.add("reaction");
                    continue;
                }
                this.feedNameList.add(feed.getTag());
                this.feedTypeList.add("section");
            }
        }
    }

    private void configureWidget(String string2, String string3, String string4, boolean bl) {
        Bundle bundle;
        if (this.getIntent().getAction().equals("android.appwidget.action.APPWIDGET_CONFIGURE") && (bundle = this.getIntent().getExtras()) != null) {
            int n2 = bundle.getInt("appWidgetId", 0);
            WidgetConfigure.savePreferences((Context)this, n2, string2, string3, string4, Locale.getDefault().getLanguage(), bl);
            AppWidgetManager.getInstance((Context)this).updateAppWidget(n2, WidgetConfigure.getRemoteView((Context)this, n2));
            string3 = new Intent();
            string3.putExtra("appWidgetId", n2);
            this.setResult(-1, (Intent)string3);
            string3 = new Intent((Context)this, (Class)Widget4x2Stacked.class);
            string3.putExtra("appWidgetId", n2);
            string3.setAction("com.buzzfeed.android.widget.WIDGET_REFRESH");
            this.sendBroadcast((Intent)string3);
            this.mTracker.trackEvent(this.context.getString(2131296774), this.context.getString(2131296742), string2, 0);
        }
        this.finish();
    }

    protected static void deletePreferences(Context context, int n2) {
        String string2 = TAG + ".deletePreferences";
        LogUtil.d(string2, "Called with appWidgetId: " + n2);
        PreferenceDatabaseManager.getInstance((Context)context).preferenceData.delete(Widget4x2Stacked.getAppWidgetIdPreferenceKey(n2, null));
        LogUtil.d(string2, "Deleted preference: key=" + Widget4x2Stacked.getAppWidgetIdPreferenceKey(n2, null));
    }

    protected static RemoteViews getRemoteView(Context context, int n2) {
        return new RemoteViews(context.getPackageName(), 2130903251);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void savePreferences(Context object, int n2, String string2, String string3, String string4, String string5, boolean bl) {
        String string6 = TAG + ".savePreferences";
        LogUtil.d(string6, "Called with appWidgetId: " + n2);
        PreferenceDatabaseManager preferenceDatabaseManager = PreferenceDatabaseManager.getInstance((Context)object);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(object.getString(2131296983), (Object)string2);
            jSONObject.put(object.getString(2131296981), bl);
            jSONObject.put(object.getString(2131296984), (Object)string3);
            jSONObject.put(object.getString(2131296982), (Object)string5);
            if (string4 != null) {
                jSONObject.put(object.getString(2131296980), (Object)string4);
            }
        }
        catch (JSONException var0_1) {
            LogUtil.e(string6, "Error creating preference object", (Throwable)var0_1);
        }
        object = new Preference(Widget4x2Stacked.getAppWidgetIdPreferenceKey(n2, null), jSONObject);
        preferenceDatabaseManager.preferenceData.putPreference((Preference)object);
        LogUtil.d(string6, "Saved preference: key=" + Widget4x2Stacked.getAppWidgetIdPreferenceKey(n2, null) + ", value=" + jSONObject.toString());
    }

    public void buildFeedListBuzzFeedAlertDialog() {
        TAG + ".buildFeedListBuzzFeedAlertDialog";
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)this);
        builder.setTitle(2131296497);
        builder.setStackedListItems(this.feedNameList.toArray(new String[this.feedNameList.size()]), new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> object, View view, int n2, long l2) {
                object = (Feed)WidgetConfigure.this.feedList.get(n2);
                WidgetConfigure.this.configureWidget(object.getTag(), object.getUri(), object.getWidgetImage(), object.isBadge());
                if (WidgetConfigure.this.mAlertDialog != null) {
                    WidgetConfigure.this.mAlertDialog.dismiss();
                }
            }
        });
        this.mAlertDialog = builder.create();
        this.mAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener(){

            public void onCancel(DialogInterface dialogInterface) {
                WidgetConfigure.this.finish();
            }
        });
        this.mAlertDialog.show();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this.getApplicationContext();
        if (this.getIntent() != null && this.getIntent().hasExtra("appWidgetId")) {
            this.appWidgetId = this.getIntent().getIntExtra("appWidgetId", 0);
        }
        if (this.appWidgetId == 0) {
            this.finish();
            return;
        } else {
            this.mTracker = BuzzFeedTracker.getInstance();
            AppWidgetManager.getInstance((Context)this.getApplicationContext());
            this.feedListProvider = FeedListProvider.getInstance(EnvironmentConfig.getEdition(this.getApplicationContext()));
            this.buildFeedList();
            if (this.isFinishing()) return;
            {
                this.buildFeedListBuzzFeedAlertDialog();
                return;
            }
        }
    }

}

