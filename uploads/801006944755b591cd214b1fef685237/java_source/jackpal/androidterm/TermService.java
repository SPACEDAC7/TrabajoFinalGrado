/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.PendingIntent
 *  android.app.Service
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.os.Binder
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.Looper
 *  android.os.ParcelFileDescriptor
 *  android.os.ResultReceiver
 *  android.preference.PreferenceManager
 *  android.text.TextUtils
 *  android.util.Log
 */
package jackpal.androidterm;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import jackpal.androidterm.BoundSession;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.Term;
import jackpal.androidterm.compat.ServiceForegroundCompat;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.libtermexec.v1.ITerminal;
import jackpal.androidterm.util.SessionList;
import jackpal.androidterm.util.TermSettings;
import java.io.File;
import java.util.UUID;

public class TermService
extends Service
implements TermSession.FinishCallback {
    private static final int COMPAT_START_STICKY = 1;
    private static final int RUNNING_NOTIFICATION = 1;
    private ServiceForegroundCompat compat;
    private final IBinder mTSBinder;
    private SessionList mTermSessions;

    public TermService() {
        this.mTSBinder = new TSBinder();
    }

    public SessionList getSessions() {
        return this.mTermSessions;
    }

    public IBinder onBind(Intent intent) {
        if ("jackpal.androidterm.action.START_TERM.v1".equals(intent.getAction())) {
            Log.i((String)"TermService", (String)"Outside process called onBind()");
            return new RBinder();
        }
        Log.i((String)"TermService", (String)"Activity called onBind()");
        return this.mTSBinder;
    }

    public void onCreate() {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences((Context)this.getApplicationContext());
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString("home_path", sharedPreferences.getString("home_path", this.getDir("HOME", 0).getAbsolutePath()));
        editor.commit();
        this.compat = new ServiceForegroundCompat(this);
        this.mTermSessions = new SessionList();
        sharedPreferences = new Notification(2130837517, this.getText(2131296347), System.currentTimeMillis());
        sharedPreferences.flags |= 2;
        editor = new Intent((Context)this, (Class)Term.class);
        editor.addFlags(268435456);
        editor = PendingIntent.getActivity((Context)this, (int)0, (Intent)editor, (int)0);
        sharedPreferences.setLatestEventInfo((Context)this, this.getText(2131296272), this.getText(2131296347), (PendingIntent)editor);
        this.compat.startForeground(1, (Notification)sharedPreferences);
        Log.d((String)"Term", (String)"TermService started");
    }

    public void onDestroy() {
        this.compat.stopForeground(true);
        for (TermSession termSession : this.mTermSessions) {
            termSession.setFinishCallback(null);
            termSession.finish();
        }
        this.mTermSessions.clear();
    }

    @Override
    public void onSessionFinish(TermSession termSession) {
        this.mTermSessions.remove(termSession);
    }

    public void onStart(Intent intent, int n) {
    }

    public int onStartCommand(Intent intent, int n, int n2) {
        return 1;
    }

    private final class RBinder
    extends ITerminal.Stub {
        private RBinder() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public IntentSender startSession(final ParcelFileDescriptor parcelFileDescriptor, ResultReceiver resultReceiver) {
            String string2 = UUID.randomUUID().toString();
            Intent intent = new Intent("jackpal.androidterm.private.OPEN_NEW_WINDOW").setData(Uri.parse((String)string2)).addCategory("android.intent.category.DEFAULT").addFlags(268435456).putExtra("jackpal.androidterm.private.target_window", string2);
            intent = PendingIntent.getActivity((Context)TermService.this.getApplicationContext(), (int)string2.hashCode(), (Intent)intent, (int)0);
            PackageManager packageManager = TermService.this.getPackageManager();
            String[] arrstring = packageManager.getPackagesForUid(RBinder.getCallingUid());
            if (arrstring == null) return null;
            if (arrstring.length == 0) {
                return null;
            }
            int n = arrstring.length;
            int n2 = 0;
            while (n2 < n) {
                CharSequence charSequence = arrstring[n2];
                try {
                    charSequence = packageManager.getPackageInfo((String)charSequence, (int)0).applicationInfo;
                    if (charSequence != null && !TextUtils.isEmpty((CharSequence)(charSequence = packageManager.getApplicationLabel((ApplicationInfo)charSequence)))) {
                        charSequence = charSequence.toString();
                        new Handler(Looper.getMainLooper()).post(new Runnable((String)charSequence, string2, (PendingIntent)intent, resultReceiver){
                            final /* synthetic */ ResultReceiver val$callback;
                            final /* synthetic */ String val$niceName;
                            final /* synthetic */ PendingIntent val$result;
                            final /* synthetic */ String val$sessionHandle;

                            /*
                             * Enabled aggressive block sorting
                             * Enabled unnecessary exception pruning
                             * Enabled aggressive exception aggregation
                             */
                            @Override
                            public void run() {
                                BoundSession boundSession;
                                GenericTermSession genericTermSession = null;
                                try {
                                    TermSettings termSettings = new TermSettings(TermService.this.getResources(), PreferenceManager.getDefaultSharedPreferences((Context)TermService.this.getApplicationContext()));
                                    boundSession = new BoundSession(parcelFileDescriptor, termSettings, this.val$niceName);
                                }
                                catch (Exception var2_3) {}
                                try {
                                    TermService.this.mTermSessions.add(boundSession);
                                    boundSession.setHandle(this.val$sessionHandle);
                                    boundSession.setFinishCallback(new RBinderCleanupCallback(this.val$result, this.val$callback));
                                    boundSession.setTitle("");
                                    boundSession.initializeEmulator(80, 24);
                                    return;
                                }
                                catch (Exception var2_5) {
                                    genericTermSession = boundSession;
                                }
                                {
                                    void var2_4;
                                    Log.e((String)"TermService", (String)("Failed to bootstrap AIDL session: " + var2_4.getMessage()));
                                    if (genericTermSession == null) return;
                                    genericTermSession.finish();
                                    return;
                                }
                            }
                        });
                        return intent.getIntentSender();
                    }
                }
                catch (PackageManager.NameNotFoundException nameNotFoundException) {
                    // empty catch block
                }
                ++n2;
            }
            return null;
        }

    }

    private final class RBinderCleanupCallback
    implements TermSession.FinishCallback {
        private final ResultReceiver callback;
        private final PendingIntent result;

        public RBinderCleanupCallback(PendingIntent pendingIntent, ResultReceiver resultReceiver) {
            this.result = pendingIntent;
            this.callback = resultReceiver;
        }

        @Override
        public void onSessionFinish(TermSession termSession) {
            this.result.cancel();
            this.callback.send(0, new Bundle());
            TermService.this.mTermSessions.remove(termSession);
        }
    }

    public class TSBinder
    extends Binder {
        TermService getService() {
            Log.i((String)"TermService", (String)"Activity binding to service");
            return TermService.this;
        }
    }

}

