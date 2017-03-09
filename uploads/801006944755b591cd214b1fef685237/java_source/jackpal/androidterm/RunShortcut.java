/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.util.Log
 */
package jackpal.androidterm;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import jackpal.androidterm.RemoteInterface;
import jackpal.androidterm.TermService;
import jackpal.androidterm.util.ShortcutEncryption;
import java.security.GeneralSecurityException;

public final class RunShortcut
extends RemoteInterface {
    public static final String ACTION_RUN_SHORTCUT = "jackpal.androidterm.RUN_SHORTCUT";
    public static final String EXTRA_SHORTCUT_COMMAND = "jackpal.androidterm.iShortcutCommand";
    public static final String EXTRA_WINDOW_HANDLE = "jackpal.androidterm.window_handle";

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    protected void handleIntent() {
        if (this.getTermService() == null) {
            this.finish();
            return;
        }
        Object object = this.getIntent();
        if (object.getAction().equals("jackpal.androidterm.RUN_SHORTCUT")) {
            String string2 = object.getStringExtra("jackpal.androidterm.iShortcutCommand");
            if (string2 == null) {
                Log.e((String)"Term", (String)"No command provided in shortcut!");
                this.finish();
                return;
            }
            ShortcutEncryption.Keys keys = ShortcutEncryption.getKeys((Context)this);
            if (keys == null) {
                Log.e((String)"Term", (String)"No shortcut encryption keys found!");
                this.finish();
                return;
            }
            string2 = ShortcutEncryption.decrypt(string2, keys);
            object = object.getStringExtra("jackpal.androidterm.window_handle");
            object = object != null ? this.appendToWindow((String)object, string2) : this.openNewWindow(string2);
            string2 = new Intent();
            string2.putExtra("jackpal.androidterm.window_handle", (String)object);
            this.setResult(-1, (Intent)string2);
        }
        this.finish();
        return;
        catch (GeneralSecurityException generalSecurityException) {
            Log.e((String)"Term", (String)("Invalid shortcut: " + generalSecurityException.toString()));
            this.finish();
            return;
        }
    }
}

