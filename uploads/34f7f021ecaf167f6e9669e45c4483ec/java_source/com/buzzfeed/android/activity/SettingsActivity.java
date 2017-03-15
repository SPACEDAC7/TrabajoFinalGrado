/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Fragment
 *  android.app.FragmentManager
 *  android.app.FragmentTransaction
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
 *  android.preference.SwitchPreference
 *  android.view.KeyEvent
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.TextView
 *  com.quantcast.measurement.service.QuantcastClient
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.SwitchPreference;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.activity.OptOutSettingsActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.preferences.AutoPlayPreference;
import com.buzzfeed.android.data.preferences.EditionPreference;
import com.buzzfeed.android.pushnotifications.PushNotificationUtil;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.chrometabs.CustomTabUtils;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.showx.showpage.data.ShowSubscriptionStorage;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ProcessPhoenix;
import com.buzzfeed.toolkit.util.VideoSettings;
import com.quantcast.measurement.service.QuantcastClient;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class SettingsActivity
extends BaseActivity {
    public static final String PREFERENCE_FRAGMENT_REFERENCE;
    public static final String SAVE_STATE_TAG_RESET_APP = "reset_app";
    private static final String TAG;
    private BFPreferenceFragment preferenceFragment;

    static {
        TAG = SettingsActivity.class.getSimpleName();
        PREFERENCE_FRAGMENT_REFERENCE = TAG + ".preferenceFragment";
    }

    private void restartAppOrFinish() {
        if (this.preferenceFragment != null && this.preferenceFragment.shouldAppReset()) {
            ProcessPhoenix.triggerRebirth((Context)this);
            return;
        }
        this.finish();
    }

    public static void startIntent(Activity activity) {
        activity.startActivity(new Intent((Context)activity, (Class)SettingsActivity.class));
    }

    private void trackBack() {
        DustbusterClient.getInstance().trackUiTapEvent("/list/settings", "back", "settings_back", "header");
    }

    private void trackSettingsScreenView() {
        DustbusterClient.getInstance().trackScreenView("/list/settings", "settings", null, null, null, null, null, null, null, null);
        BuzzFeedTracker.getInstance().trackPageView("/list/settings", null);
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar toolbar) {
        super.configureToolbar(toolbar);
        this.getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.getSupportActionBar().setDisplayShowCustomEnabled(true);
        this.getSupportActionBar().setCustomView(2130903068);
        ((TextView)this.getSupportActionBar().getCustomView().findViewById(2131820683)).setText((CharSequence)this.getString(2131296451));
    }

    @Override
    public void onBackPressed() {
        this.trackBack();
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903076);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                SettingsActivity.this.trackBack();
                SettingsActivity.this.restartAppOrFinish();
            }
        });
        FragmentManager fragmentManager = this.getFragmentManager();
        if (bundle != null) {
            this.preferenceFragment = (BFPreferenceFragment)fragmentManager.findFragmentByTag(PREFERENCE_FRAGMENT_REFERENCE);
        }
        if (this.preferenceFragment == null) {
            this.preferenceFragment = new BFPreferenceFragment();
            fragmentManager.beginTransaction().replace(2131820706, (Fragment)this.preferenceFragment, PREFERENCE_FRAGMENT_REFERENCE).commit();
        }
        this.trackSettingsScreenView();
    }

    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        if (n2 == 4 && keyEvent.getRepeatCount() == 0) {
            this.restartAppOrFinish();
        }
        return super.onKeyDown(n2, keyEvent);
    }

    public static class BFPreferenceFragment
    extends PreferenceFragment {
        private final String TAG = BFPreferenceFragment.class.getSimpleName();
        private AlertDialog mAlertDialog;

        public BFPreferenceFragment() {
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

        private void setAutoplayMode(String string2) {
            new AutoPlayPreference(this.getActivity().getApplicationContext()).setValue(string2);
        }

        private void setEdition(String string2) {
            new EditionPreference(this.getActivity().getApplicationContext()).setValue(string2);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        public void initPreferences() {
            Object object;
            String[] arrstring;
            Object object2;
            String[] arrstring2;
            PreferenceManager preferenceManager = this.getPreferenceManager();
            final SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences((Context)this.getActivity());
            Object object3 = this.findPreference(2131296921);
            if (object3 != null) {
                object3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                    public boolean onPreferenceClick(Preference preference) {
                        QuantcastClient.showAboutQuantcastScreen((Activity)BFPreferenceFragment.this.getActivity());
                        return true;
                    }
                });
            }
            if ((arrstring = preferenceManager.findPreference((CharSequence)(arrstring2 = this.getKey(2131296911)))) != null) {
                int n2;
                object2 = this.getResources().getStringArray(2131492873);
                String[] arrstring3 = this.getResources().getStringArray(2131492874);
                object = sharedPreferences.getString((String)arrstring2, this.getString(2131296829));
                if (object.equals(this.getString(2131296846))) {
                    object3 = this.getString(2131296834);
                } else if (object.equals(this.getString(2131296845))) {
                    object3 = this.getString(2131296833);
                } else if (object.equals(this.getString(2131296824))) {
                    object3 = this.getString(2131296830);
                } else if (object.equals(this.getString(2131296825))) {
                    object3 = this.getString(2131296844);
                } else if (object.equals(this.getString(2131296826))) {
                    object3 = this.getString(2131296831);
                } else if (object.equals(this.getString(2131296827))) {
                    object3 = this.getString(2131296828);
                } else if (object.equals(this.getString(2131296838))) {
                    object3 = this.getString(2131296839);
                } else if (object.equals(this.getString(2131296840))) {
                    object3 = this.getString(2131296832);
                } else if (object.equals(this.getString(2131296842))) {
                    object3 = this.getString(2131296837);
                } else {
                    object3 = object;
                    if (object.equals(this.getString(2131296843))) {
                        object3 = this.getString(2131296844);
                    }
                }
                int n3 = n2 = Arrays.asList(arrstring3).indexOf(object3);
                if (n2 < 0) {
                    n3 = Arrays.asList(arrstring3).indexOf(this.getString(2131296829));
                }
                arrstring.setSummary((CharSequence)object2[n3]);
                this.setEdition(arrstring3[n3]);
                arrstring.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener((Preference)arrstring, (String[])object2, arrstring3, sharedPreferences, (String)arrstring2){
                    final /* synthetic */ String val$editionKey;
                    final /* synthetic */ Preference val$editionPreference;
                    final /* synthetic */ String[] val$editionValues;
                    final /* synthetic */ String[] val$editions;
                    final /* synthetic */ SharedPreferences val$preferences;

                    public boolean onPreferenceClick(final Preference preference) {
                        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)BFPreferenceFragment.this.getActivity());
                        builder.setTitle(this.val$editionPreference.getTitle());
                        builder.setSingleChoiceItems(this.val$editions, Arrays.asList(this.val$editionValues).indexOf(this.val$preferences.getString(this.val$editionKey, BFPreferenceFragment.this.getString(2131296829))), new AdapterView.OnItemClickListener(){

                            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                                preference.setSummary((CharSequence)2.this.val$editions[n2]);
                                BFPreferenceFragment.this.setEdition(2.this.val$editionValues[n2]);
                                BuzzFeedTracker.getInstance().trackEvent(BFPreferenceFragment.this.getString(2131296767), BFPreferenceFragment.this.getString(2131296704), 2.this.val$editions[n2], 0);
                                BFPreferenceFragment.this.setAppShouldReset(true);
                                if (BFPreferenceFragment.this.mAlertDialog != null) {
                                    BFPreferenceFragment.this.mAlertDialog.dismiss();
                                    BFPreferenceFragment.this.mAlertDialog = null;
                                }
                            }
                        });
                        builder.setNegativeButton(BFPreferenceFragment.this.getString(17039360), new DialogInterface.OnClickListener(){

                            public void onClick(DialogInterface dialogInterface, int n2) {
                                dialogInterface.dismiss();
                            }
                        });
                        BFPreferenceFragment.this.mAlertDialog = builder.create();
                        BFPreferenceFragment.this.mAlertDialog.show();
                        return true;
                    }

                });
            }
            if ((object = preferenceManager.findPreference((CharSequence)(object3 = this.getKey(2131296906)))) != null) {
                arrstring2 = this.getResources().getStringArray(2131492867);
                arrstring = this.getResources().getStringArray(2131492866);
                object2 = sharedPreferences.getString((String)object3, "Always");
                object.setSummary((CharSequence)object2);
                this.setAutoplayMode((String)object2);
                object.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener((String)object3, arrstring){
                    final /* synthetic */ String val$autoPlayKey;
                    final /* synthetic */ String[] val$autoplayLabels;

                    public boolean onPreferenceClick(final Preference preference) {
                        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)BFPreferenceFragment.this.getActivity());
                        builder.setTitle(preference.getTitle());
                        builder.setSingleChoiceItems(arrstring2, Arrays.asList(arrstring2).indexOf(sharedPreferences.getString(this.val$autoPlayKey, BFPreferenceFragment.this.getString(2131296673))), new AdapterView.OnItemClickListener(){

                            public void onItemClick(AdapterView<?> object, View view, int n2, long l2) {
                                preference.setSummary((CharSequence)arrstring2[n2]);
                                object = VideoSettings.getAutoplaySetting(arrstring2[n2], preference.getContext());
                                BFPreferenceFragment.this.setAutoplayMode((String)object);
                                BuzzFeedTracker.getInstance().trackEvent(BFPreferenceFragment.this.getString(2131296767), BFPreferenceFragment.this.getString(2131296682), 3.this.val$autoplayLabels[n2]);
                                BFPreferenceFragment.this.setAppShouldReset(true);
                                if (BFPreferenceFragment.this.mAlertDialog != null) {
                                    BFPreferenceFragment.this.mAlertDialog.dismiss();
                                    BFPreferenceFragment.this.mAlertDialog = null;
                                }
                            }
                        });
                        builder.setNegativeButton(BFPreferenceFragment.this.getString(17039360), new DialogInterface.OnClickListener(){

                            public void onClick(DialogInterface dialogInterface, int n2) {
                                dialogInterface.dismiss();
                            }
                        });
                        BFPreferenceFragment.this.mAlertDialog = builder.create();
                        BFPreferenceFragment.this.mAlertDialog.show();
                        return true;
                    }

                });
            }
            if ((object = (SwitchPreference)preferenceManager.findPreference((CharSequence)(object3 = this.getKey(2131296918)))) != null) {
                object.setChecked(sharedPreferences.getBoolean((String)object3, false));
                object.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener(){

                    public boolean onPreferenceChange(Preference preference, Object object) {
                        boolean bl = (Boolean)object;
                        PushNotificationUtil.notificationStatusChanged(BFPreferenceFragment.this.getActivity().getApplicationContext(), bl);
                        if (!bl) {
                            new ShowSubscriptionStorage((Context)BFPreferenceFragment.this.getActivity()).clearShowSubscriptions();
                        }
                        return true;
                    }
                });
            }
            if ((object = preferenceManager.findPreference((CharSequence)(object3 = this.getKey(2131296914)))) != null) {
                object.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener((String)object3){
                    final /* synthetic */ String val$limitMobileDataUsageKey;

                    public boolean onPreferenceChange(Preference preference, Object object) {
                        boolean bl = (Boolean)object;
                        preference.getEditor().putBoolean(this.val$limitMobileDataUsageKey, bl).apply();
                        VCRConfig.getInstance().setAdaptiveBitrateLimitingEnabled((Context)BFPreferenceFragment.this.getActivity(), bl);
                        return true;
                    }
                });
            }
            if ((object3 = this.findPreference(2131296928)) != null) {
                object3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                    public boolean onPreferenceClick(Preference preference) {
                        CustomTabUtils.openChromeTab(BFPreferenceFragment.this.getActivity(), EnvironmentConfig.getUserAgreementUrl((Context)BFPreferenceFragment.this.getActivity()));
                        BuzzFeedTracker.getInstance().trackEvent(BFPreferenceFragment.this.getString(2131296767), BFPreferenceFragment.this.getString(2131296741), "", 0);
                        return false;
                    }
                });
            }
            if ((object3 = this.findPreference(2131296917)) != null) {
                object3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                    public boolean onPreferenceClick(Preference preference) {
                        BFPreferenceFragment.this.startActivity(OptOutSettingsActivity.getIntent((Context)BFPreferenceFragment.this.getActivity(), EnvironmentConfig.getPrivacyPolicyUrl()));
                        BuzzFeedTracker.getInstance().trackEvent(BFPreferenceFragment.this.getString(2131296767), BFPreferenceFragment.this.getString(2131296718), "", 0);
                        return false;
                    }
                });
            }
            if ((object3 = this.findPreference(2131296905)) != null) {
                object3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){

                    public boolean onPreferenceClick(Preference preference) {
                        BFPreferenceFragment.this.startActivity(OptOutSettingsActivity.getIntent((Context)BFPreferenceFragment.this.getActivity(), EnvironmentConfig.getAdChoicesUrl()));
                        BuzzFeedTracker.getInstance().trackEvent(BFPreferenceFragment.this.getString(2131296767), BFPreferenceFragment.this.getString(2131296681), "", 0);
                        return false;
                    }
                });
            }
            if ((object3 = this.findPreference(2131296930)) == null) return;
            try {
                object3.setSummary((CharSequence)"5.2 (502002)");
                return;
            }
            catch (Exception var1_4) {
                LogUtil.e(this.TAG, "initPreferences() error", var1_4);
                return;
            }
        }

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            layoutInflater = super.onCreateView(layoutInflater, viewGroup, bundle);
            this.addPreferencesFromResource(2131165186);
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

}

