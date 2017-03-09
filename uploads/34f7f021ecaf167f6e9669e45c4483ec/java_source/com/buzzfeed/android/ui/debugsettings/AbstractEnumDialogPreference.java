/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.DialogInterface$OnDismissListener
 *  android.content.res.TypedArray
 *  android.preference.Preference
 *  android.util.AttributeSet
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 */
package com.buzzfeed.android.ui.debugsettings;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AlertDialog;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import com.buzzfeed.android.data.preferences.BasePreference;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;

public abstract class AbstractEnumDialogPreference<T extends Enum<T>>
extends Preference {
    private AlertDialog mAlertDialog;
    private BasePreference<T> mPreference;

    public AbstractEnumDialogPreference(Context context) {
        super(context);
        this.initialize();
    }

    public AbstractEnumDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public AbstractEnumDialogPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @RequiresApi(api=21)
    public AbstractEnumDialogPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    private void showDialog() {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder(this.getContext());
        builder.setTitle(this.getTitle());
        Enum enum_ = (Enum)this.mPreference.getValue();
        final Enum[] arrenum = this.getEnumValues();
        builder.setSingleChoiceItems(this.getEnumValues(), enum_.ordinal(), new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> object, View view, int n2, long l2) {
                object = arrenum[n2];
                if (object != AbstractEnumDialogPreference.this.mPreference.getValue()) {
                    AbstractEnumDialogPreference.this.callChangeListener(object);
                    AbstractEnumDialogPreference.this.mPreference.setValue(object);
                    AbstractEnumDialogPreference.this.updateSummary(object);
                }
                if (AbstractEnumDialogPreference.this.mAlertDialog != null) {
                    AbstractEnumDialogPreference.this.mAlertDialog.dismiss();
                }
            }
        }).setNegativeButton(this.getContext().getString(17039360), new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener(){

            public void onDismiss(DialogInterface dialogInterface) {
                AbstractEnumDialogPreference.this.mAlertDialog = null;
            }
        });
        this.mAlertDialog = builder.create();
        this.mAlertDialog.show();
    }

    protected abstract T[] getEnumValues();

    protected void initialize() {
        this.mPreference = this.onCreatePreference(this.getContext());
        this.setKey(this.mPreference.getKey());
        this.updateSummary((Enum)this.mPreference.getValue());
    }

    protected void onClick() {
        super.onClick();
        this.showDialog();
    }

    protected abstract BasePreference<T> onCreatePreference(Context var1);

    protected Object onGetDefaultValue(TypedArray typedArray, int n2) {
        return this.mPreference.getValue();
    }

    protected void updateSummary(T t2) {
        this.setSummary((CharSequence)t2.name());
    }

}

