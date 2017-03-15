/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.ArrayAdapter
 *  android.widget.TextView
 */
package com.ngb.wpsconnect;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.ngb.wpsconnect.Password;
import java.util.ArrayList;
import java.util.List;

public class PasswordAdapter
extends ArrayAdapter {
    Activity context;
    ArrayList<Password> pwdList;

    public PasswordAdapter(Activity activity, ArrayList<Password> arrayList) {
        super((Context)activity, 2130903043, arrayList);
        this.context = activity;
        this.pwdList = arrayList;
    }

    public View getView(int n2, View view, ViewGroup viewGroup) {
        view = this.context.getLayoutInflater().inflate(2130903042, null);
        ((TextView)view.findViewById(2131296258)).setText((CharSequence)this.pwdList.get(n2).getNetName());
        ((TextView)view.findViewById(2131296259)).setText((CharSequence)this.pwdList.get(n2).getNetPwd());
        return view;
    }
}

