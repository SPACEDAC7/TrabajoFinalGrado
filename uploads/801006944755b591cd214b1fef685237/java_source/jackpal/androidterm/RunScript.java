/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.net.Uri
 */
package jackpal.androidterm;

import android.content.Intent;
import android.net.Uri;
import jackpal.androidterm.RemoteInterface;
import jackpal.androidterm.TermService;

public final class RunScript
extends RemoteInterface {
    private static final String ACTION_RUN_SCRIPT = "jackpal.androidterm.RUN_SCRIPT";
    private static final String EXTRA_INITIAL_COMMAND = "jackpal.androidterm.iInitialCommand";
    private static final String EXTRA_WINDOW_HANDLE = "jackpal.androidterm.window_handle";

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void handleIntent() {
        if (this.getTermService() == null) {
            this.finish();
            return;
        }
        Intent intent = this.getIntent();
        if (!intent.getAction().equals("jackpal.androidterm.RUN_SCRIPT")) {
            super.handleIntent();
            return;
        }
        String string2 = intent.getStringExtra("jackpal.androidterm.window_handle");
        String string3 = null;
        Object object = intent.getData();
        String string4 = string3;
        if (object != null) {
            String string5 = object.getScheme();
            string4 = string3;
            if (string5 != null) {
                string4 = string3;
                if (string5.toLowerCase().equals("file")) {
                    string4 = string3 = object.getPath();
                    if (string3 == null) {
                        string4 = "";
                    }
                    string3 = string4;
                    if (!string4.equals("")) {
                        string3 = RunScript.quoteForBash(string4);
                    }
                    object = object.getFragment();
                    string4 = string3;
                    if (object != null) {
                        string4 = string3 + " " + (String)object;
                    }
                }
            }
        }
        string3 = string4;
        if (string4 == null) {
            string3 = intent.getStringExtra("jackpal.androidterm.iInitialCommand");
        }
        string4 = string2 != null ? this.appendToWindow(string2, string3) : this.openNewWindow(string3);
        string3 = new Intent();
        string3.putExtra("jackpal.androidterm.window_handle", string4);
        this.setResult(-1, (Intent)string3);
        this.finish();
    }
}

