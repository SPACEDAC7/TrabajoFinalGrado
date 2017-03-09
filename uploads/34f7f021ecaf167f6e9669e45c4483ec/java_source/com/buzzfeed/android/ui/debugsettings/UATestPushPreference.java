/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.DialogInterface$OnDismissListener
 *  android.preference.Preference
 *  android.text.TextUtils
 *  android.util.AttributeSet
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  okhttp3.ResponseBody
 *  retrofit2.Response
 */
package com.buzzfeed.android.ui.debugsettings;

import android.content.Context;
import android.content.DialogInterface;
import android.preference.Preference;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.toolkit.networking.urbanairship.UAApiHelper;
import com.buzzfeed.toolkit.networking.urbanairship.UAPostNotificationBody;
import com.buzzfeed.toolkit.util.BFVault;
import com.buzzfeed.toolkit.util.LogUtil;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import java.util.HashMap;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class UATestPushPreference
extends Preference {
    public static final String TAG = "UATestPushPreference";
    private AlertDialog mAlertDialog;
    private UAApiHelper mUAApiHelper;

    public UATestPushPreference(Context context) {
        super(context);
        this.initialize();
    }

    public UATestPushPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public UATestPushPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @RequiresApi(api=21)
    public UATestPushPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    private UAPostNotificationBody createPushNotificationBody(TestPush testPush, String string2) {
        switch (.$SwitchMap$com$buzzfeed$android$ui$debugsettings$UATestPushPreference$TestPush[testPush.ordinal()]) {
            default: {
                throw new IllegalArgumentException("No case for type " + (Object)((Object)testPush));
            }
            case 1: {
                return new UAPostNotificationBody.Builder(string2).setAlert("Test Native Bpage: Magical Ice Cream").setOpenAction("deep_link", "buzzfeed://buzz/michelleno/these-magical-ice-cream-flowers-are-all-over-instagram").build();
            }
            case 2: {
                return new UAPostNotificationBody.Builder(string2).setAlert("Test Fallback Bpage: Jello Shots").setOpenAction("deep_link", "buzzfeed://buzz/christinebyrne/xxl-watermelon-jell-o-shots").build();
            }
            case 3: 
        }
        return new UAPostNotificationBody.Builder(string2).setAlert("Test Show: Tasty").setTag("tasty").setOpenAction("deep_link", "buzzfeed://show/tasty").setExtras(new HashMap<String, String>(){}).build();
    }

    private void initialize() {
        this.setTitle((CharSequence)"UA Request Push Notification");
        this.setSummary((CharSequence)"Request a push notification to this device (UA Dev Server only).");
        BFVault bFVault = BFVault.getInstance();
        this.mUAApiHelper = new UAApiHelper(bFVault.getUrbanAirshipAppAlphaKey(), bFVault.getUrbanAirshipMasterAlphaSecret());
    }

    private void onTestPushSelected(TestPush testPush) {
        UAPostNotificationBody uAPostNotificationBody = this.createPushNotificationBody(testPush, UAirship.shared().getPushManager().getChannelId());
        this.setEnabled(false);
        LogUtil.i("UATestPushPreference", "Requesting Push Notification for " + (Object)((Object)testPush));
        this.mUAApiHelper.postNotification(uAPostNotificationBody, new Callback<ResponseBody>(){

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                UATestPushPreference.this.setEnabled(true);
            }

            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                UATestPushPreference.this.setEnabled(true);
            }
        });
    }

    private void showDialog() {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder(this.getContext());
        builder.setTitle(this.getTitle());
        final TestPush[] arrtestPush = TestPush.values();
        builder.setStackedListItems(TestPush.stringValues(), new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                UATestPushPreference.this.onTestPushSelected(arrtestPush[n2]);
                if (UATestPushPreference.this.mAlertDialog != null) {
                    UATestPushPreference.this.mAlertDialog.dismiss();
                }
            }
        }).setNegativeButton(this.getContext().getString(17039360), new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener(){

            public void onDismiss(DialogInterface dialogInterface) {
                UATestPushPreference.this.mAlertDialog = null;
            }
        });
        this.mAlertDialog = builder.create();
        this.mAlertDialog.show();
    }

    protected void onClick() {
        super.onClick();
        if (!TextUtils.isEmpty((CharSequence)UAirship.shared().getPushManager().getChannelId())) {
            if (!UAirship.shared().getAirshipConfigOptions().inProduction) {
                this.showDialog();
                return;
            }
            LogUtil.w("UATestPushPreference.onClick", "Error requesting push notification, must be on UA development server");
            return;
        }
        LogUtil.w("UATestPushPreference.onClick", "Error requesting push notification, invalid channel id");
    }

    public static enum TestPush {
        NATIVE_BPAGE,
        FALLBACK_BPAGE,
        TASTY_SHOW;
        

        private TestPush() {
        }

        public static String[] stringValues() {
            TestPush[] arrtestPush = TestPush.values();
            String[] arrstring = new String[arrtestPush.length];
            for (int i2 = 0; i2 < arrtestPush.length; ++i2) {
                arrstring[i2] = arrtestPush[i2].name();
            }
            return arrstring;
        }
    }

}

