/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Dialog
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.preference.Preference
 *  android.preference.Preference$OnPreferenceChangeListener
 *  android.preference.Preference$OnPreferenceClickListener
 *  android.preference.PreferenceFragment
 *  android.preference.PreferenceManager
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 */
package com.buzzfeed.android.ui.debugsettings;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.support.annotation.StringRes;
import android.support.v7.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.buzzfeed.ads.utils.AdConfig;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.BFRateMe;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.androidabframework.ui.SettingsDialog;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ProcessPhoenix;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

public class DebugSettingsFragment
extends PreferenceFragment {
    public static final String SAVE_STATE_TAG_RESET_APP = "reset_app";
    private AlertDialog mAlertDialog;
    private final Preference.OnPreferenceChangeListener mResetOnPreferenceChangeListener;

    public DebugSettingsFragment() {
        this.mResetOnPreferenceChangeListener = new Preference.OnPreferenceChangeListener(){

            public boolean onPreferenceChange(Preference preference, Object object) {
                DebugSettingsFragment.this.setAppShouldReset(true);
                return true;
            }
        };
        if (this.getArguments() == null) {
            this.setArguments(new Bundle());
        }
    }

    private Preference findPreference(@StringRes int n2) {
        return this.getPreferenceManager().findPreference((CharSequence)this.getKey(n2));
    }

    private String getKey(@StringRes int n2) {
        return this.getResources().getString(n2);
    }

    private void restartAppOrFinish() {
        if (this.shouldAppReset()) {
            ProcessPhoenix.triggerRebirth((Context)this.getActivity());
            return;
        }
        this.getActivity().finish();
    }

    private void setAdTest(int n2) {
        SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences((Context)this.getActivity().getApplicationContext()).edit();
        editor.putString(this.getKey(2131296924), String.valueOf(n2));
        editor.apply();
    }

    public void initPreferences() {
        Object object;
        String[] arrstring;
        Object object2 = this.getPreferenceManager();
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences((Context)this.getActivity());
        String string2 = this.getKey(2131296922);
        String[] arrstring2 = object2.findPreference((CharSequence)string2);
        if (arrstring2 != null) {
            arrstring = this.getResources().getStringArray(2131492876);
            object = this.getResources().getStringArray(2131492877);
            String string3 = sharedPreferences.getString(string2, this.getString(2131296675));
            arrstring2.setSummary((CharSequence)arrstring[Arrays.asList(object).indexOf(string3)]);
            arrstring2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener((Preference)arrstring2, arrstring, (String[])object, sharedPreferences, string2){
                final /* synthetic */ SharedPreferences val$preferences;
                final /* synthetic */ String val$serverKey;
                final /* synthetic */ Preference val$serverPreference;
                final /* synthetic */ String[] val$serverValues;
                final /* synthetic */ String[] val$servers;

                public boolean onPreferenceClick(final Preference preference) {
                    BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)DebugSettingsFragment.this.getActivity());
                    builder.setTitle(this.val$serverPreference.getTitle());
                    builder.setSingleChoiceItems(this.val$servers, Arrays.asList(this.val$serverValues).indexOf(this.val$preferences.getString(this.val$serverKey, DebugSettingsFragment.this.getString(2131296675))), new AdapterView.OnItemClickListener(){

                        public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                            preference.setSummary((CharSequence)2.this.val$servers[n2]);
                            EnvironmentConfig.setEnvironment(Environment.getEnvironmentWithPosition(n2));
                            DebugSettingsFragment.this.setAppShouldReset(true);
                            if (DebugSettingsFragment.this.mAlertDialog != null) {
                                DebugSettingsFragment.this.mAlertDialog.dismiss();
                                DebugSettingsFragment.this.mAlertDialog = null;
                            }
                        }
                    });
                    builder.setNegativeButton(17039360, new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            dialogInterface.dismiss();
                        }
                    });
                    DebugSettingsFragment.this.mAlertDialog = builder.create();
                    DebugSettingsFragment.this.mAlertDialog.show();
                    return true;
                }

            });
        }
        if ((string2 = object2.findPreference((CharSequence)this.getKey(2131296927))) != null) {
            string2.setOnPreferenceChangeListener(this.mResetOnPreferenceChangeListener);
        }
        if ((string2 = object2.findPreference((CharSequence)this.getKey(2131296904))) != null) {
            string2.setOnPreferenceChangeListener(this.mResetOnPreferenceChangeListener);
        }
        if ((object2 = object2.findPreference((CharSequence)this.getKey(2131296903))) != null) {
            object2.setOnPreferenceChangeListener(this.mResetOnPreferenceChangeListener);
        }
        if ((object2 = this.findPreference(2131296925)) != null) {
            object2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                public boolean onPreferenceClick(Preference object) {
                    ArrayList<String> arrayList = BuzzFeedTracker.getTrackingLog();
                    if (arrayList.size() == 0) {
                        BuzzUtils.showToastNotification(DebugSettingsFragment.this.getActivity(), DebugSettingsFragment.this.getString(2131296970), 1);
                        return true;
                    }
                    object = new StringBuilder();
                    for (String string2 : arrayList) {
                        object.append(string2 + "\n\n");
                    }
                    new BuzzFeedAlertDialog.Builder((Context)DebugSettingsFragment.this.getActivity()).setTitle(2131296965).setMessage(object.toString()).setIcon(17301659).setNeutralButton(2131296966, new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            BuzzUtils.showToastNotification(DebugSettingsFragment.this.getActivity(), DebugSettingsFragment.this.getString(2131296969), 1);
                            BuzzFeedTracker.clearTrackList();
                        }
                    }).setNegativeButton(2131296967, new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            dialogInterface.dismiss();
                        }
                    }).setPositiveButton(2131296968, new DialogInterface.OnClickListener((StringBuilder)object){
                        final /* synthetic */ StringBuilder val$trackingData;

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            dialogInterface = new Intent("android.intent.action.SEND");
                            dialogInterface.setType("text/plain");
                            Calendar calendar = Calendar.getInstance();
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
                            dialogInterface.putExtra("android.intent.extra.SUBJECT", DebugSettingsFragment.this.getString(2131296965) + " - " + simpleDateFormat.format(calendar.getTime()));
                            dialogInterface.putExtra("android.intent.extra.TEXT", this.val$trackingData.toString());
                            DebugSettingsFragment.this.startActivity(Intent.createChooser((Intent)dialogInterface, (CharSequence)DebugSettingsFragment.this.getString(2131296492)));
                        }
                    }).create().show();
                    return true;
                }

            });
        }
        if ((object2 = this.findPreference(2131296910)) != null) {
            object2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener(){

                public boolean onPreferenceChange(Preference preference, Object object) {
                    LogUtil.setDebug(Boolean.parseBoolean(object.toString()));
                    return true;
                }
            });
        }
        if ((object2 = this.findPreference(2131296913)) != null) {
            object2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener(){

                public boolean onPreferenceChange(Preference preference, Object object) {
                    DebugSettingsFragment.this.setAppShouldReset(true);
                    return true;
                }
            });
        }
        if ((object2 = this.findPreference(2131296909)) != null) {
            object2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener(){

                public boolean onPreferenceChange(Preference preference, Object object) {
                    BuzzFeedTracker.setDebug(Boolean.parseBoolean(object.toString()));
                    return true;
                }
            });
        }
        if ((object2 = this.findPreference(2131296929)) != null) {
            object2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener(){

                public boolean onPreferenceChange(Preference preference, Object object) {
                    VCRConfig.getInstance().setDebugLoggingEnabled((Boolean)object);
                    return true;
                }
            });
        }
        if ((string2 = this.findPreference((CharSequence)(object2 = this.getKey(2131296924)))) != null) {
            arrstring2 = this.getResources().getStringArray(2131492879);
            arrstring = this.getResources().getStringArray(2131492878);
            object = sharedPreferences.getString((String)object2, Integer.toString(0));
            int n2 = Arrays.asList(arrstring).indexOf(object);
            string2.setSummary((CharSequence)arrstring2[n2]);
            this.setAdTest(n2);
            string2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener((Preference)string2, arrstring2, arrstring, sharedPreferences, (String)object2){
                final /* synthetic */ String val$adTestKey;
                final /* synthetic */ SharedPreferences val$preferences;
                final /* synthetic */ Preference val$testAdPreference;
                final /* synthetic */ String[] val$testAdTypes;
                final /* synthetic */ String[] val$testAdTypesValues;

                public boolean onPreferenceClick(final Preference preference) {
                    BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)DebugSettingsFragment.this.getActivity());
                    builder.setTitle(this.val$testAdPreference.getTitle());
                    builder.setSingleChoiceItems(this.val$testAdTypes, Arrays.asList(this.val$testAdTypesValues).indexOf(this.val$preferences.getString(this.val$adTestKey, Integer.toString(0))), new AdapterView.OnItemClickListener(){

                        public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                            AdConfig.setTestAdType(n2);
                            DebugSettingsFragment.this.setAdTest(n2);
                            preference.setSummary((CharSequence)8.this.val$testAdTypes[n2]);
                            if (DebugSettingsFragment.this.mAlertDialog != null) {
                                DebugSettingsFragment.this.mAlertDialog.dismiss();
                                DebugSettingsFragment.this.mAlertDialog = null;
                            }
                        }
                    });
                    builder.setNegativeButton(DebugSettingsFragment.this.getString(17039360), new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            dialogInterface.dismiss();
                        }
                    });
                    DebugSettingsFragment.this.mAlertDialog = builder.create();
                    DebugSettingsFragment.this.mAlertDialog.show();
                    return true;
                }

            });
        }
        if ((sharedPreferences = this.findPreference(2131296908)) != null) {
            sharedPreferences.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener(){

                public boolean onPreferenceChange(Preference preference, Object object) {
                    LogUtil.setCrashlyticsActive(Boolean.parseBoolean(object.toString()));
                    return true;
                }
            });
        }
        if ((sharedPreferences = this.findPreference(2131296926)) != null) {
            sharedPreferences.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                public boolean onPreferenceClick(Preference preference) {
                    BFRateMe.getInstance(DebugSettingsFragment.this.getActivity().getApplicationContext()).forceShowRateMeDialog((BaseActivity)DebugSettingsFragment.this.getActivity());
                    return false;
                }
            });
        }
        if ((sharedPreferences = this.findPreference(2131296902)) != null) {
            sharedPreferences.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                public boolean onPreferenceClick(Preference preference) {
                    new SettingsDialog(){

                        @Override
                        public void onExperimentTemporarySettingsChanged(String string2) {
                            DebugSettingsFragment.this.setAppShouldReset(true);
                        }
                    }.create((Context)DebugSettingsFragment.this.getActivity()).show();
                    return true;
                }

            });
        }
        if ((sharedPreferences = this.findPreference(2131296912)) != null) {
            sharedPreferences.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                public boolean onPreferenceClick(Preference preference) {
                    throw new RuntimeException();
                }
            });
        }
    }

    public void onBackPressed() {
        this.restartAppOrFinish();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.addPreferencesFromResource(2131165184);
        this.initPreferences();
        return layoutInflater;
    }

    public void setAppShouldReset(boolean bl) {
        this.getArguments().putBoolean("reset_app", bl);
    }

    public boolean shouldAppReset() {
        return this.getArguments().getBoolean("reset_app", false);
    }

}

