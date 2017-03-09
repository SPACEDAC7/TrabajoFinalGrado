/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.preference.Preference
 *  android.preference.Preference$OnPreferenceClickListener
 *  android.preference.SwitchPreference
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.CompoundButton
 *  android.widget.CompoundButton$OnCheckedChangeListener
 */
package com.buzzfeed.android.ui.preference;

import android.annotation.TargetApi;
import android.content.Context;
import android.preference.Preference;
import android.preference.SwitchPreference;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;

public class BFSwitchPreference
extends SwitchPreference {
    private final Listener mListener;

    public BFSwitchPreference(Context context) {
        super(context);
        this.mListener = new Listener();
        this.initialize();
    }

    public BFSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mListener = new Listener();
        this.initialize();
    }

    public BFSwitchPreference(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mListener = new Listener();
        this.initialize();
    }

    @TargetApi(value=21)
    public BFSwitchPreference(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.mListener = new Listener();
        this.initialize();
    }

    private void initialize() {
        this.setLayoutResource(2130903100);
        this.setWidgetLayoutResource(2130903180);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        SwitchCompat switchCompat = (SwitchCompat)view.findViewById(2131820951);
        if (switchCompat != null) {
            switchCompat.setOnCheckedChangeListener(null);
            switchCompat.setChecked(this.isChecked());
            switchCompat.setTextOn(this.getSwitchTextOn());
            switchCompat.setTextOff(this.getSwitchTextOff());
            switchCompat.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)this.mListener);
        }
        view.setClickable(true);
        view.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                BFSwitchPreference.this.onClick();
                if (BFSwitchPreference.this.getOnPreferenceClickListener() != null) {
                    BFSwitchPreference.this.getOnPreferenceClickListener().onPreferenceClick((Preference)BFSwitchPreference.this);
                }
            }
        });
    }

    private class Listener
    implements CompoundButton.OnCheckedChangeListener {
        private Listener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
            if (BFSwitchPreference.this.callChangeListener(bl)) {
                BFSwitchPreference.this.setChecked(bl);
                return;
            }
            bl = !bl;
            compoundButton.setChecked(bl);
        }
    }

}

