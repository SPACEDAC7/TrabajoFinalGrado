/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.ContextWrapper
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.BaseAdapter
 *  android.widget.TextView
 */
package jackpal.androidterm;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.UpdateCallback;
import jackpal.androidterm.util.SessionList;

public class WindowListAdapter
extends BaseAdapter
implements UpdateCallback {
    private SessionList mSessions;

    public WindowListAdapter(SessionList sessionList) {
        this.setSessions(sessionList);
    }

    private static Activity findActivityFromContext(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity)context;
        }
        if (context instanceof ContextWrapper) {
            return WindowListAdapter.findActivityFromContext(((ContextWrapper)context).getBaseContext());
        }
        return null;
    }

    public int getCount() {
        if (this.mSessions != null) {
            return this.mSessions.size();
        }
        return 0;
    }

    public Object getItem(int n) {
        return this.mSessions.get(n);
    }

    public long getItemId(int n) {
        return n;
    }

    protected String getSessionTitle(int n, String string2) {
        TermSession termSession = (TermSession)this.mSessions.get(n);
        String string3 = string2;
        if (termSession != null) {
            string3 = string2;
            if (termSession instanceof GenericTermSession) {
                string3 = ((GenericTermSession)termSession).getTitle(string2);
            }
        }
        return string3;
    }

    public View getView(int n, View view, ViewGroup viewGroup) {
        view = WindowListAdapter.findActivityFromContext(viewGroup.getContext());
        viewGroup = view.getLayoutInflater().inflate(2130903041, viewGroup, false);
        View view2 = viewGroup.findViewById(2131165191);
        ((TextView)viewGroup.findViewById(2131165189)).setText((CharSequence)this.getSessionTitle(n, view.getString(2131296398, new Object[]{n + 1})));
        view2.setOnClickListener(new View.OnClickListener(this.mSessions, n){
            final /* synthetic */ int val$closePosition;
            final /* synthetic */ SessionList val$sessions;

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
            sessionList.addCallback(this);
            sessionList.addTitleChangedListener(this);
            return;
        }
        this.onUpdate();
    }

}

