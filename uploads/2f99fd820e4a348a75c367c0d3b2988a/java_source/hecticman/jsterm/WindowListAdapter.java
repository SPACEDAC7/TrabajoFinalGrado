/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.BaseAdapter
 *  android.widget.TextView
 */
package hecticman.jsterm;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.UpdateCallback;
import hecticman.jsterm.util.SessionList;

public class WindowListAdapter
extends BaseAdapter
implements UpdateCallback {
    private SessionList mSessions;

    public WindowListAdapter(SessionList sessionList) {
        this.setSessions(sessionList);
    }

    public int getCount() {
        return this.mSessions.size();
    }

    public Object getItem(int n) {
        return this.mSessions.get(n);
    }

    public long getItemId(int n) {
        return n;
    }

    public View getView(int n, View view, ViewGroup viewGroup) {
        view = (Activity)viewGroup.getContext();
        viewGroup = view.getLayoutInflater().inflate(2130903042, viewGroup, false);
        ((TextView)viewGroup.findViewById(2131492873)).setText((CharSequence)view.getString(2131165230, new Object[]{n + 1}));
        viewGroup.findViewById(2131492875).setOnClickListener(new View.OnClickListener(this.mSessions, n){
            private final /* synthetic */ int val$closePosition;
            private final /* synthetic */ SessionList val$sessions;

            public void onClick(View object) {
                object = this.val$sessions.remove(this.val$closePosition);
                if (object != null) {
                    object.finish();
                    WindowListAdapter.this.notifyDataSetChanged();
                }
            }
        });
        return viewGroup;
    }

    @Override
    public void onUpdate() {
        this.notifyDataSetChanged();
    }

    public void setSessions(SessionList sessionList) {
        this.mSessions = sessionList;
        if (sessionList != null) {
            this.onUpdate();
        }
    }

}

