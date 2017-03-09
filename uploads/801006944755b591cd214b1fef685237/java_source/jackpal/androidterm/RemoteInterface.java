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
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.preference.PreferenceManager
 *  android.util.Log
 */
package jackpal.androidterm;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.util.Log;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.Term;
import jackpal.androidterm.TermService;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.util.SessionList;
import jackpal.androidterm.util.TermSettings;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class RemoteInterface
extends Activity {
    protected static final String PRIVACT_ACTIVITY_ALIAS = "jackpal.androidterm.TermInternal";
    protected static final String PRIVACT_OPEN_NEW_WINDOW = "jackpal.androidterm.private.OPEN_NEW_WINDOW";
    protected static final String PRIVACT_SWITCH_WINDOW = "jackpal.androidterm.private.SWITCH_WINDOW";
    protected static final String PRIVEXTRA_TARGET_WINDOW = "jackpal.androidterm.private.target_window";
    private TermSettings mSettings;
    private ServiceConnection mTSConnection;
    private Intent mTSIntent;
    private TermService mTermService;

    public RemoteInterface() {
        this.mTSConnection = new ServiceConnection(){

            public void onServiceConnected(ComponentName object, IBinder iBinder) {
                object = (TermService.TSBinder)iBinder;
                RemoteInterface.this.mTermService = object.getService();
                RemoteInterface.this.handleIntent();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                RemoteInterface.this.mTermService = null;
            }
        };
    }

    public static String quoteForBash(String string2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append('\"');
        int n = string2.length();
        for (int i = 0; i < n; ++i) {
            char c = string2.charAt(i);
            if ("\"\\$`!".indexOf(c) >= 0) {
                stringBuilder.append('\\');
            }
            stringBuilder.append(c);
        }
        stringBuilder.append('\"');
        return stringBuilder.toString();
    }

    protected String appendToWindow(String string2, String string3) {
        GenericTermSession genericTermSession;
        SessionList sessionList = this.getTermService().getSessions();
        GenericTermSession genericTermSession2 = null;
        int n = 0;
        do {
            String string4;
            genericTermSession = genericTermSession2;
            if (n >= sessionList.size() || (string4 = (genericTermSession = (GenericTermSession)sessionList.get(n)).getHandle()) != null && string4.equals(string2)) {
                if (genericTermSession != null) break;
                return this.openNewWindow(string3);
            }
            ++n;
        } while (true);
        if (string3 != null) {
            genericTermSession.write(string3);
            genericTermSession.write(13);
        }
        string3 = new Intent("jackpal.androidterm.private.SWITCH_WINDOW");
        string3.addCategory("android.intent.category.DEFAULT");
        string3.addFlags(268435456);
        string3.putExtra("jackpal.androidterm.private.target_window", n);
        this.startActivity((Intent)string3);
        return string2;
    }

    public void finish() {
        Object object = this.mTSConnection;
        if (object != null) {
            this.unbindService((ServiceConnection)object);
            object = this.mTermService;
            if (object != null && ((object = object.getSessions()) == null || object.size() == 0)) {
                this.stopService(this.mTSIntent);
            }
            this.mTSConnection = null;
            this.mTermService = null;
        }
        super.finish();
    }

    protected TermService getTermService() {
        return this.mTermService;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void handleIntent() {
        if (this.getTermService() == null) {
            this.finish();
            return;
        }
        Object object = this.getIntent();
        if (object.getAction().equals("android.intent.action.SEND") && object.hasExtra("android.intent.extra.STREAM")) {
            if ((object = object.getExtras().get("android.intent.extra.STREAM")) instanceof Uri) {
                File file = new File((String)(object = ((Uri)object).getPath()));
                if (!file.isDirectory()) {
                    object = file.getParent();
                }
                this.openNewWindow("cd " + RemoteInterface.quoteForBash((String)object));
            }
        } else {
            this.openNewWindow(null);
        }
        this.finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = PreferenceManager.getDefaultSharedPreferences((Context)this);
        this.mSettings = new TermSettings(this.getResources(), (SharedPreferences)bundle);
        this.mTSIntent = bundle = new Intent((Context)this, (Class)TermService.class);
        this.startService((Intent)bundle);
        if (!this.bindService((Intent)bundle, this.mTSConnection, 1)) {
            Log.e((String)"Term", (String)"bind to service failed!");
            this.finish();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected String openNewWindow(String object) {
        String string2;
        TermService termService = this.getTermService();
        Object object2 = string2 = this.mSettings.getInitialCommand();
        if (object != null) {
            object2 = string2 != null ? string2 + "\r" + (String)object : object;
        }
        try {
            object = Term.createTermSession((Context)this, this.mSettings, (String)object2);
            object.setFinishCallback(termService);
            termService.getSessions().add((TermSession)object);
            object2 = UUID.randomUUID().toString();
            ((GenericTermSession)object).setHandle((String)object2);
            object = new Intent("jackpal.androidterm.private.OPEN_NEW_WINDOW");
            object.addCategory("android.intent.category.DEFAULT");
            object.addFlags(268435456);
            this.startActivity((Intent)object);
            return object2;
        }
        catch (IOException var1_2) {
            return null;
        }
    }

}

