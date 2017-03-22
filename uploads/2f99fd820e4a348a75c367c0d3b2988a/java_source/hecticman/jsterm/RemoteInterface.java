/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.content.SharedPreferences
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.preference.PreferenceManager
 *  android.util.Log
 */
package hecticman.jsterm;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.util.Log;
import hecticman.jsterm.ShellTermSession;
import hecticman.jsterm.Term;
import hecticman.jsterm.TermService;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.util.SessionList;
import hecticman.jsterm.util.TermSettings;
import java.util.UUID;

public class RemoteInterface
extends Activity {
    private static final String ACTION_OPEN_NEW_WINDOW = "jackpal.androidterm.OPEN_NEW_WINDOW";
    private static final String ACTION_RUN_SCRIPT = "jackpal.androidterm.RUN_SCRIPT";
    private static final String EXTRA_INITIAL_COMMAND = "jackpal.androidterm.iInitialCommand";
    private static final String EXTRA_WINDOW_HANDLE = "jackpal.androidterm.window_handle";
    static final String PRIVACT_OPEN_NEW_WINDOW = "jackpal.androidterm.private.OPEN_NEW_WINDOW";
    static final String PRIVACT_SWITCH_WINDOW = "jackpal.androidterm.private.SWITCH_WINDOW";
    static final String PRIVEXTRA_TARGET_WINDOW = "jackpal.androidterm.private.target_window";
    private TermSettings mSettings;
    private ServiceConnection mTSConnection;
    private TermService mTermService;

    public RemoteInterface() {
        this.mTSConnection = new ServiceConnection(){

            public void onServiceConnected(ComponentName object, IBinder iBinder) {
                object = (TermService.TSBinder)iBinder;
                RemoteInterface.access$0(RemoteInterface.this, object.getService());
                RemoteInterface.this.handleIntent();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                RemoteInterface.access$0(RemoteInterface.this, null);
            }
        };
    }

    static /* synthetic */ void access$0(RemoteInterface remoteInterface, TermService termService) {
        remoteInterface.mTermService = termService;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private String appendToWindow(String var1_1, String var2_2) {
        var5_3 = this.mTermService.getSessions();
        var3_4 = null;
        var7_5 = 0;
        do {
            if (var7_5 >= var5_3.size()) ** GOTO lbl10
            var4_6 = (ShellTermSession)var5_3.get(var7_5);
            var6_7 = var4_6.getHandle();
            if (var6_7 != null && var6_7.equals(var1_1)) {
                var3_4 = var4_6;
lbl10: // 2 sources:
                if (var3_4 != null) break;
                return this.openNewWindow(var2_2);
            }
            ++var7_5;
        } while (true);
        if (var2_2 != null) {
            var3_4.write(var2_2);
            var3_4.write(13);
        }
        var2_2 = new Intent("jackpal.androidterm.private.SWITCH_WINDOW");
        var2_2.addCategory("android.intent.category.DEFAULT");
        var2_2.addFlags(268435456);
        var2_2.putExtra("jackpal.androidterm.private.target_window", var7_5);
        this.startActivity((Intent)var2_2);
        return var1_1;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void handleIntent() {
        if (this.mTermService == null) {
            this.finish();
            return;
        }
        Object object = this.getIntent();
        if (object.getAction().equals("jackpal.androidterm.RUN_SCRIPT")) {
            String string2 = object.getStringExtra("jackpal.androidterm.window_handle");
            object = string2 != null ? this.appendToWindow(string2, object.getStringExtra("jackpal.androidterm.iInitialCommand")) : this.openNewWindow(object.getStringExtra("jackpal.androidterm.iInitialCommand"));
            string2 = new Intent();
            string2.putExtra("jackpal.androidterm.window_handle", (String)object);
            this.setResult(-1, (Intent)string2);
        } else {
            this.openNewWindow(null);
        }
        this.unbindService(this.mTSConnection);
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    private String openNewWindow(String object) {
        String string2;
        TermService termService = this.mTermService;
        Object object2 = string2 = this.mSettings.getInitialCommand();
        if (object != null) {
            object2 = string2 != null ? String.valueOf(string2) + "\r" + (String)object : object;
        }
        object = Term.createTermSession((Context)this, this.mSettings, (String)object2);
        object.setFinishCallback(termService);
        termService.getSessions().add((TermSession)object);
        object2 = UUID.randomUUID().toString();
        ((ShellTermSession)object).setHandle((String)object2);
        object = new Intent("jackpal.androidterm.private.OPEN_NEW_WINDOW");
        object.addCategory("android.intent.category.DEFAULT");
        object.addFlags(268435456);
        this.startActivity((Intent)object);
        return object2;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = PreferenceManager.getDefaultSharedPreferences((Context)this);
        SharedPreferences sharedPreferences = this.getSharedPreferences("color_preferences", 0);
        this.mSettings = new TermSettings(this.getResources(), (SharedPreferences)bundle, sharedPreferences);
        bundle = new Intent((Context)this, (Class)TermService.class);
        this.startService((Intent)bundle);
        if (!this.bindService((Intent)bundle, this.mTSConnection, 1)) {
            Log.e((String)"Term", (String)"bind to service failed!");
            this.finish();
        }
    }

}

