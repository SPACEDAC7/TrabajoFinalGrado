/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.Bundle
 *  android.preference.Preference
 *  android.preference.PreferenceActivity
 *  android.preference.PreferenceCategory
 *  android.view.MenuItem
 */
package jackpal.androidterm;

import android.app.Activity;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.view.MenuItem;
import jackpal.androidterm.compat.ActivityCompat;
import jackpal.androidterm.compat.AndroidCompat;

public class TermPreferences
extends PreferenceActivity {
    private static final String ACTIONBAR_KEY = "actionbar";
    private static final String CATEGORY_SCREEN_KEY = "screen";

    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.addPreferencesFromResource(2130968576);
        if (AndroidCompat.SDK < 11) {
            object = this.findPreference((CharSequence)"actionbar");
            PreferenceCategory preferenceCategory = (PreferenceCategory)this.findPreference((CharSequence)"screen");
            if (object != null && preferenceCategory != null) {
                preferenceCategory.removePreference((Preference)object);
            }
        }
        if (AndroidCompat.V11ToV20 && (object = ActivityCompat.getActionBar((Activity)this)) != null) {
            object.setDisplayOptions(4, 4);
        }
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
}

