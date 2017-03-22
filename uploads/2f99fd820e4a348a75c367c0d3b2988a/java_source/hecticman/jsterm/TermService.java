/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.NotificationManager
 *  android.app.PendingIntent
 *  android.app.Service
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Binder
 *  android.os.IBinder
 *  android.util.Log
 */
package hecticman.jsterm;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import hecticman.jsterm.Term;
import hecticman.jsterm.compat.ServiceForegroundCompat;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.util.SessionList;
import java.util.Iterator;

public class TermService
extends Service
implements TermSession.FinishCallback {
    private static final int COMPAT_START_STICKY = 1;
    private static final int RUNNING_NOTIFICATION = 1;
    private ServiceForegroundCompat compat;
    private final IBinder mTSBinder;
    private SessionList mTermSessions;
    private Notification notification;

    public TermService() {
        this.mTSBinder = new TSBinder();
    }

    public SessionList getSessions() {
        return this.mTermSessions;
    }

    public IBinder onBind(Intent intent) {
        Log.i((String)"TermService", (String)"Activity called onBind()");
        return this.mTSBinder;
    }

    public void onCreate() {
        this.compat = new ServiceForegroundCompat(this);
        this.mTermSessions = new SessionList();
        new String("");
        String string2 = String.format(this.getText(2131165231).toString(), 1);
        Notification notification = this.notification = new Notification(2130837520, (CharSequence)string2, System.currentTimeMillis());
        notification.flags |= 2;
        notification = new Intent((Context)this, (Class)Term.class);
        notification.addFlags(268435456);
        notification = PendingIntent.getActivity((Context)this, (int)0, (Intent)notification, (int)0);
        this.notification.setLatestEventInfo((Context)this, this.getText(2131165199), (CharSequence)string2, (PendingIntent)notification);
        this.compat.startForeground(1, this.notification);
        Log.d((String)"Term", (String)"TermService started");
    }

    public void onDestroy() {
        this.compat.stopForeground(true);
        Iterator iterator = this.mTermSessions.iterator();
        do {
            if (!iterator.hasNext()) {
                this.mTermSessions.clear();
                return;
            }
            ((TermSession)iterator.next()).finish();
        } while (true);
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

    public void updateNotification() {
        new String("");
        String string2 = String.format(this.getText(2131165231).toString(), this.mTermSessions.size());
        Notification notification = this.notification;
        notification.flags |= 2;
        notification = new Intent((Context)this, (Class)Term.class);
        notification.addFlags(268435456);
        notification = PendingIntent.getActivity((Context)this, (int)0, (Intent)notification, (int)0);
        this.notification.setLatestEventInfo((Context)this, this.getText(2131165199), (CharSequence)string2, (PendingIntent)notification);
        ((NotificationManager)this.getSystemService("notification")).notify(1, this.notification);
    }

    public class TSBinder
    extends Binder {
        TermService getService() {
            Log.i((String)"TermService", (String)"Activity binding to service");
            return TermService.this;
        }
    }

}

