/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.ListActivity
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 *  android.widget.ImageView
 *  android.widget.ListAdapter
 *  android.widget.ListView
 */
package hecticman.jsterm;

import android.app.Activity;
import android.app.ListActivity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import hecticman.jsterm.TermService;
import hecticman.jsterm.WindowListAdapter;
import hecticman.jsterm.compat.ActivityCompat;
import hecticman.jsterm.compat.AndroidCompat;
import hecticman.jsterm.emulatorview.UpdateCallback;
import hecticman.jsterm.util.SessionList;

public class WindowList
extends ListActivity {
    private ServiceConnection mTSConnection;
    private TermService mTermService;
    private WindowListAdapter mWindowListAdapter;
    private SessionList sessions;

    public WindowList() {
        this.mTSConnection = new ServiceConnection(){

            public void onServiceConnected(ComponentName object, IBinder iBinder) {
                object = (TermService.TSBinder)iBinder;
                WindowList.access$0(WindowList.this, object.getService());
                WindowList.this.populateList();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                WindowList.access$0(WindowList.this, null);
            }
        };
    }

    static /* synthetic */ void access$0(WindowList windowList, TermService termService) {
        windowList.mTermService = termService;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void populateList() {
        this.sessions = this.mTermService.getSessions();
        if (this.mWindowListAdapter == null) {
            WindowListAdapter windowListAdapter = new WindowListAdapter(this.sessions);
            this.setListAdapter((ListAdapter)windowListAdapter);
            this.mWindowListAdapter = windowListAdapter;
        } else {
            this.mWindowListAdapter.setSessions(this.sessions);
        }
        this.sessions.addCallback(this.mWindowListAdapter);
    }

    public void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        object = this.getListView();
        object.addHeaderView(this.getLayoutInflater().inflate(2130903043, (ViewGroup)object, false), (Object)null, true);
        this.setResult(0);
        if (AndroidCompat.SDK >= 11 && (object = ActivityCompat.getActionBar((Activity)this)) != null) {
            object.setDisplayOptions(4, 4);
        }
    }

    protected void onListItemClick(ListView listView, View view, int n, long l) {
        listView = new Intent();
        listView.putExtra("hecticman.jsterm.window_id", n - 1);
        this.setResult(-1, (Intent)listView);
        this.finish();
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

    protected void onPause() {
        super.onPause();
        if (this.sessions != null) {
            this.sessions.removeCallback(this.mWindowListAdapter);
        }
        if (this.mWindowListAdapter != null) {
            this.mWindowListAdapter.setSessions(null);
        }
        this.unbindService(this.mTSConnection);
    }

    protected void onResume() {
        super.onResume();
        if (!this.bindService(new Intent((Context)this, (Class)TermService.class), this.mTSConnection, 1)) {
            Log.w((String)"Term", (String)"bind to service failed!");
        }
    }

    private static class CloseButton
    extends ImageView {
        public CloseButton(Context context) {
            super(context);
        }

        public CloseButton(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public CloseButton(Context context, AttributeSet attributeSet, int n) {
            super(context, attributeSet, n);
        }

        public void setPressed(boolean bl) {
            if (bl && ((View)this.getParent()).isPressed()) {
                return;
            }
            super.setPressed(bl);
        }
    }

}

