/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.Bundle
 *  android.preference.Preference
 *  android.preference.Preference$OnPreferenceChangeListener
 *  android.preference.Preference$OnPreferenceClickListener
 *  android.preference.PreferenceActivity
 *  android.preference.PreferenceManager
 *  android.text.TextUtils
 *  android.text.TextUtils$SimpleStringSplitter
 *  android.view.MenuItem
 *  android.view.inputmethod.InputMethodManager
 */
package hecticman.jsterm;

import android.app.Activity;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.inputmethod.InputMethodManager;
import hecticman.jsterm.compat.ActivityCompat;
import hecticman.jsterm.compat.AndroidCompat;

public class TermPreferences
extends PreferenceActivity
implements Preference.OnPreferenceClickListener,
Preference.OnPreferenceChangeListener {
    private static final String ACTIONBAR_KEY = "actionbar";
    private static final char INPUT_METHOD_SEPARATER = ':';
    private static final char INPUT_METHOD_SUBTYPE_SEPARATER = ';';
    private static final TextUtils.SimpleStringSplitter sStringInputMethodSplitter = new TextUtils.SimpleStringSplitter(':');
    private static final TextUtils.SimpleStringSplitter sStringInputMethodSubtypeSplitter = new TextUtils.SimpleStringSplitter(';');
    private Preference prefIme;

    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.addPreferencesFromResource(2130968577);
        if (AndroidCompat.SDK < 11) {
            this.getPreferenceManager().findPreference((CharSequence)"actionbar").setEnabled(false);
        }
        if (AndroidCompat.SDK >= 11 && (object = ActivityCompat.getActionBar((Activity)this)) != null) {
            object.setDisplayOptions(4, 4);
        }
        this.prefIme = this.findPreference((CharSequence)"ime");
        this.prefIme.setOnPreferenceClickListener((Preference.OnPreferenceClickListener)this);
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

    public boolean onPreferenceChange(Preference preference, Object object) {
        preference.getKey().equals("exportpath");
        return false;
    }

    public boolean onPreferenceClick(Preference preference) {
        if (preference.getKey().equals("ime")) {
            ((InputMethodManager)this.getSystemService("input_method")).showInputMethodPicker();
        }
        preference.getKey().equals("exportpath");
        return false;
    }
}

