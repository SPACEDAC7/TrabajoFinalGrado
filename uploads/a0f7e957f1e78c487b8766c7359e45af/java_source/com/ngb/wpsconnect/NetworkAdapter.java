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
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.ngb.wpsconnect;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.ngb.wpsconnect.Function;
import com.ngb.wpsconnect.Network;
import java.util.ArrayList;
import java.util.List;

public class NetworkAdapter
extends ArrayAdapter {
    Activity context;
    ArrayList<Network> networkList;

    public NetworkAdapter(Activity activity, ArrayList<Network> arrayList) {
        super((Context)activity, 2130903043, arrayList);
        this.context = activity;
        this.networkList = arrayList;
    }

    public View getView(int n2, View view, ViewGroup viewGroup) {
        view = this.context.getLayoutInflater().inflate(2130903043, null);
        ((TextView)view.findViewById(2131296263)).setText((CharSequence)Function.capabilitiesTypeResume(this.networkList.get(n2).getINFO()));
        ((TextView)view.findViewById(2131296261)).setText((CharSequence)this.networkList.get(n2).getESSID());
        ((TextView)view.findViewById(2131296264)).setText((CharSequence)this.networkList.get(n2).getBSSID());
        ((TextView)view.findViewById(2131296265)).setText((CharSequence)this.networkList.get(n2).getSIGNAL());
        ((ImageView)view.findViewById(2131296260)).setImageResource(this.networkList.get(n2).getLOCK());
        ((ImageView)view.findViewById(2131296262)).setImageResource(this.networkList.get(n2).getWiFiSignalIMG());
        return view;
    }
}

