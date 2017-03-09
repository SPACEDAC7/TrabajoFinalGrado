/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.preference.Preference
 *  android.util.AttributeSet
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 */
package com.buzzfeed.android.ui.preference;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.Preference;
import android.support.v7.app.AlertDialog;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import com.buzzfeed.android.data.preferences.NetworkLoggingPreference;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.toolkit.networking.NetworkConfig;
import com.buzzfeed.toolkit.util.LogUtil;

public class NetworkLoggingDialogPreference
extends Preference {
    private AlertDialog mCurDialog;
    private NetworkLoggingPreference mNetworkLoggingPreference;

    public NetworkLoggingDialogPreference(Context context) {
        super(context);
        this.initialize(context);
    }

    public NetworkLoggingDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize(context);
    }

    public NetworkLoggingDialogPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize(context);
    }

    @TargetApi(value=21)
    public NetworkLoggingDialogPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize(context);
    }

    private void initialize(Context context) {
        this.mNetworkLoggingPreference = new NetworkLoggingPreference(context);
        this.setLayoutResource(2130903100);
        this.setTitle((CharSequence)"Network Logging Preference");
        this.setSummary((CharSequence)this.mNetworkLoggingPreference.getValue());
    }

    private void onClick(int n2) {
        String string2 = NetworkLoggingDialogPreference.class.getSimpleName() + ".onClick";
        NetworkConfig.LogLevel logLevel = NetworkConfig.LogLevel.getLogLevelWithOrdinal(n2);
        this.mNetworkLoggingPreference.setValue(logLevel.name());
        LogUtil.d(string2, "Changing network logging level to " + logLevel.name());
        NetworkConfig.getInstance().setLogLevel(logLevel);
        this.setSummary((CharSequence)logLevel.name());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showDialog() {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder(this.getContext());
        builder.setTitle(this.getTitle());
        NetworkConfig.LogLevel logLevel = NetworkConfig.LogLevel.getLogLevelWithName((String)this.mNetworkLoggingPreference.getValue());
        int n2 = logLevel != null ? logLevel.ordinal() : 0;
        builder.setSingleChoiceItems(NetworkConfig.LogLevel.nameValues(), n2, new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                NetworkLoggingDialogPreference.this.onClick(n2);
                if (NetworkLoggingDialogPreference.this.mCurDialog != null) {
                    NetworkLoggingDialogPreference.this.mCurDialog.dismiss();
                }
            }
        });
        builder.setNegativeButton(this.getContext().getString(17039360), new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        });
        this.mCurDialog = builder.create();
        this.mCurDialog.show();
    }

    protected void onClick() {
        super.onClick();
        this.showDialog();
    }

}

