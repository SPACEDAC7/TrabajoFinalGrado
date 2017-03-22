/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Bundle
 *  android.preference.Preference
 *  android.preference.Preference$OnPreferenceClickListener
 *  android.preference.PreferenceActivity
 *  android.util.Log
 *  android.view.MenuItem
 */
package hecticman.jsterm;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.util.Log;
import android.view.MenuItem;
import hecticman.jsterm.compat.ActivityCompat;
import hecticman.jsterm.compat.AndroidCompat;
import yuku.ambilwarna.AmbilWarnaDialog;

public class TermColorPreferences
extends PreferenceActivity
implements Preference.OnPreferenceClickListener {
    private static final String ACTIONBAR_KEY = "actionbar";
    private AmbilWarnaDialog back_dialog;
    private AmbilWarnaDialog fore_dialog;
    private int initialBackColor = -16777216;
    private int initialForeColor = -1;
    private Preference prefBackColor;
    private Preference prefForeColor;
    private Preference prefUseSpecColor;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.addPreferencesFromResource(2130968576);
        if (AndroidCompat.SDK >= 11 && (object = ActivityCompat.getActionBar((Activity)this)) != null) {
            object.setDisplayOptions(4, 4);
        }
        this.prefUseSpecColor = this.findPreference((CharSequence)"use_specific_color");
        this.prefForeColor = this.findPreference((CharSequence)"specific_fore_color");
        this.prefBackColor = this.findPreference((CharSequence)"specific_back_color");
        this.prefUseSpecColor.setOnPreferenceClickListener((Preference.OnPreferenceClickListener)this);
        this.prefForeColor.setOnPreferenceClickListener((Preference.OnPreferenceClickListener)this);
        this.prefBackColor.setOnPreferenceClickListener((Preference.OnPreferenceClickListener)this);
        object = this.getSharedPreferences("color_preferences", 0);
        try {
            this.initialForeColor = (int)Long.parseLong(object.getString("specific_fore_color", Integer.toString(this.initialForeColor)), 16);
        }
        catch (NumberFormatException var2_3) {
            this.initialForeColor = (int)Long.parseLong(this.getString(2131165189), 16);
        }
        try {
            this.initialBackColor = (int)Long.parseLong(object.getString("specific_back_color", Integer.toString(this.initialBackColor)), 16);
        }
        catch (NumberFormatException var2_4) {
            this.initialBackColor = (int)Long.parseLong(this.getString(2131165190), 16);
        }
        this.fore_dialog = new AmbilWarnaDialog((Context)this, this.initialForeColor, new AmbilWarnaDialog.OnAmbilWarnaListener(){

            @Override
            public void onCancel(AmbilWarnaDialog ambilWarnaDialog) {
            }

            @Override
            public void onOk(AmbilWarnaDialog object, int n) {
                object = String.format("%x", n);
                SharedPreferences sharedPreferences = TermColorPreferences.this.getSharedPreferences("color_preferences", 0);
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString("specific_fore_color", (String)object);
                editor.commit();
                Log.d((String)"HECTIC", (String)("set foreColor to: " + sharedPreferences.getString("specific_fore_color", "")));
            }
        });
        this.back_dialog = new AmbilWarnaDialog((Context)this, this.initialBackColor, new AmbilWarnaDialog.OnAmbilWarnaListener(){

            @Override
            public void onCancel(AmbilWarnaDialog ambilWarnaDialog) {
            }

            @Override
            public void onOk(AmbilWarnaDialog object, int n) {
                object = String.format("%x", n);
                SharedPreferences sharedPreferences = TermColorPreferences.this.getSharedPreferences("color_preferences", 0);
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putString("specific_back_color", (String)object);
                editor.commit();
                Log.d((String)"HECTIC", (String)("set backColor to : " + sharedPreferences.getString("specific_back_color", "")));
            }
        });
        boolean bl = object.getBoolean("use_specific_color", false);
        this.prefForeColor.setEnabled(bl);
        this.prefBackColor.setEnabled(bl);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 16908332: 
        }
        this.finish();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onPreferenceClick(Preference preference) {
        boolean bl = true;
        if (preference.getKey().equals("use_specific_color")) {
            preference = this.getSharedPreferences("color_preferences", 0);
            boolean bl2 = preference.getBoolean("use_specific_color", false);
            preference = preference.edit();
            boolean bl3 = !bl2;
            preference.putBoolean("use_specific_color", bl3);
            preference.commit();
            preference = this.prefForeColor;
            bl3 = !bl2;
            preference.setEnabled(bl3);
            preference = this.prefBackColor;
            bl3 = bl;
            if (bl2) {
                bl3 = false;
            }
            preference.setEnabled(bl3);
            return false;
        } else {
            if (preference.getKey().equals("specific_fore_color")) {
                this.fore_dialog.show();
                return false;
            }
            if (!preference.getKey().equals("specific_back_color")) return false;
            {
                this.back_dialog.show();
                return false;
            }
        }
    }

}

