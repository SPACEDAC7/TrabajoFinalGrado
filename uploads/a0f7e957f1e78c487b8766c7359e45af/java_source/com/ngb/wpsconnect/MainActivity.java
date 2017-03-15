/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.app.ProgressDialog
 *  android.content.BroadcastReceiver
 *  android.content.ClipData
 *  android.content.ClipboardManager
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.res.Resources
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.net.wifi.ScanResult
 *  android.net.wifi.WifiInfo
 *  android.net.wifi.WifiManager
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.text.Editable
 *  android.text.InputFilter
 *  android.text.InputFilter$LengthFilter
 *  android.text.Spannable
 *  android.text.SpannableString
 *  android.text.method.LinkMovementMethod
 *  android.text.method.MovementMethod
 *  android.text.util.Linkify
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.ArrayAdapter
 *  android.widget.EditText
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.TextView
 *  android.widget.Toast
 */
package com.ngb.wpsconnect;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.util.Linkify;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.ngb.wpsconnect.Function;
import com.ngb.wpsconnect.Network;
import com.ngb.wpsconnect.NetworkAdapter;
import com.ngb.wpsconnect.PasswordActivity;
import java.util.ArrayList;
import java.util.List;

public class MainActivity
extends Activity {
    protected ArrayAdapter adapter;
    protected boolean autoScan;
    protected final Context context;
    protected Intent intent;
    protected int lastNet;
    protected ListView list;
    protected ArrayList<Network> networkList;
    protected boolean receiverControl;
    protected WifiReceiver receiverWifi;
    protected WifiManager wifi;
    protected String wpa_cli;

    public MainActivity() {
        this.context = this;
        this.intent = new Intent().putExtra("List_Position", 0);
        this.lastNet = 0;
    }

    private int getLock(String string2) {
        if (string2.contains("WPA2") || string2.contains("WPA") || string2.contains("WEP")) {
            return 2130837506;
        }
        return 2130837507;
    }

    private int getWiFi(int n2) {
        switch (WifiManager.calculateSignalLevel((int)n2, (int)4)) {
            default: {
                return -1;
            }
            case 0: {
                return 2130837508;
            }
            case 1: {
                return 2130837509;
            }
            case 2: {
                return 2130837510;
            }
            case 3: 
        }
        return 2130837511;
    }

    private void showAbout() {
        SpannableString spannableString = new SpannableString((CharSequence)this.getString(2131099655));
        Linkify.addLinks((Spannable)spannableString, (int)15);
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        builder.setPositiveButton(2131099660, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        });
        builder.setCancelable(false);
        builder.setMessage((CharSequence)spannableString);
        spannableString = builder.create();
        spannableString.show();
        ((TextView)spannableString.findViewById(16908299)).setMovementMethod(LinkMovementMethod.getInstance());
    }

    private void showCustomPINDialog(final String string2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        final EditText editText = new EditText(this.context);
        editText.setInputType(2);
        editText.setMaxLines(1);
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(8)});
        builder.setView((View)editText);
        builder.setTitle(2131099664);
        builder.create();
        builder.setNegativeButton(2131099659, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        });
        builder.setPositiveButton(2131099656, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                String string22 = String.valueOf(MainActivity.this.wpa_cli) + " IFNAME=wlan0 wps_reg " + string2 + " " + editText.getText().toString();
                dialogInterface.dismiss();
                new CallSU(string22, string2).execute((Object[])new Void[0]);
            }
        });
        builder.setCancelable(false);
        builder.show();
    }

    private void showFailDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        builder.setMessage((CharSequence)this.getResources().getString(2131099676));
        builder.setNegativeButton(2131099659, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        });
        builder.setCancelable(false);
        builder.create();
        builder.show();
    }

    private void showNetworkOptionsDialog(Network object) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        CharSequence[] arrcharSequence = Function.calculePIN((Network)object);
        object = object.getBSSID();
        builder.setSingleChoiceItems(arrcharSequence, this.intent.getIntExtra("List_Position", 0), new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                MainActivity.this.intent.putExtra("List_Position", n2);
            }
        });
        builder.setNegativeButton(2131099659, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
                MainActivity.this.intent.putExtra("List_Position", 0);
            }
        });
        builder.setNeutralButton(2131099657, new DialogInterface.OnClickListener((String)object){
            private final /* synthetic */ String val$BSSID;

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
                MainActivity.this.showCustomPINDialog(this.val$BSSID);
            }
        });
        builder.setPositiveButton(2131099656, new DialogInterface.OnClickListener((String)object, (String[])arrcharSequence){
            private final /* synthetic */ String val$BSSID;
            private final /* synthetic */ String[] val$charSeq;

            public void onClick(DialogInterface dialogInterface, int n2) {
                String string2 = String.valueOf(MainActivity.this.wpa_cli) + " IFNAME=wlan0 wps_reg " + this.val$BSSID + " " + this.val$charSeq[MainActivity.this.intent.getIntExtra("List_Position", 0)];
                dialogInterface.dismiss();
                new CallSU(string2, this.val$BSSID).execute((Object[])new Void[0]);
            }
        });
        builder.setCancelable(false);
        builder.setTitle(2131099661);
        builder.create();
        builder.show();
    }

    private void showNoRootDeviceDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        builder.setMessage((CharSequence)this.getString(2131099677));
        builder.setNegativeButton(2131099660, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        });
        builder.setCancelable(false);
        builder.create();
        builder.show();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void showSuccessDialog() {
        var4_1 = new AlertDialog.Builder((Context)this);
        var4_1.setTitle((CharSequence)this.getResources().getString(2131099669));
        var5_2 = ((WifiManager)this.context.getSystemService("wifi")).getConnectionInfo();
        var3_3 = Function.invokeSU("cat /data/misc/wifi/wpa_supplicant.conf").split("network=");
        this.intent.putExtra("PSK", ".");
        var2_4 = var3_3.length;
        var1_5 = 0;
        do {
            if (var1_5 >= var2_4) ** GOTO lbl13
            var6_6 = var3_3[var1_5];
            if (var6_6.contains(var5_2.getSSID()) && var6_6.split("\"").length > 3) {
                this.intent.putExtra("PSK", var6_6.split("\"")[3]);
lbl13: // 2 sources:
                var3_3 = this.intent.getStringExtra("PSK").equals(".") != false ? this.getString(2131099675) : this.intent.getStringExtra("PSK");
                var4_1.setMessage((CharSequence)("SSID: " + var5_2.getSSID().replace("\"", "") + "\n" + "BSSID: " + var5_2.getBSSID().toUpperCase() + "\n" + "PASS: " + (String)var3_3));
                var4_1.setNegativeButton(2131099659, new DialogInterface.OnClickListener(){

                    public void onClick(DialogInterface dialogInterface, int n2) {
                        dialogInterface.dismiss();
                    }
                });
                var4_1.setNeutralButton(2131099666, new DialogInterface.OnClickListener(){

                    public void onClick(DialogInterface object, int n2) {
                        object.dismiss();
                        object = MainActivity.this.intent.getStringExtra("PSK");
                        if (!object.equals(".")) {
                            ((ClipboardManager)MainActivity.this.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText((CharSequence)"", (CharSequence)object));
                            Toast.makeText((Context)MainActivity.this.getApplicationContext(), (int)2131099665, (int)0).show();
                            return;
                        }
                        Toast.makeText((Context)MainActivity.this.getApplicationContext(), (int)2131099667, (int)0).show();
                    }
                });
                var4_1.setCancelable(false);
                var4_1.create();
                var4_1.show();
                return;
            }
            ++var1_5;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void NetInfo(List<ScanResult> list) {
        if (!this.autoScan) {
            this.receiverControl = false;
        }
        this.networkList.clear();
        block0 : do {
            if (list == null || list.size() == 0) {
                this.adapter.notifyDataSetChanged();
                this.wifi.startScan();
                return;
            }
            int n2 = -1000;
            int n3 = -1;
            int n4 = 0;
            do {
                int n5;
                int n6;
                if (n4 >= list.size()) {
                    if (n3 < 0) continue block0;
                    this.networkList.add(new Network(list.get((int)n3).BSSID.toUpperCase(), list.get((int)n3).SSID, list.get((int)n3).capabilities, String.valueOf(list.get((int)n3).level), this.getWiFi(list.get((int)n3).level), this.getLock(list.get((int)n3).capabilities)));
                    list.remove(n3);
                    continue block0;
                }
                int n7 = list.get((int)n4).level;
                if (Function.hasWPSEnabled(list.get(n4))) {
                    n5 = n4;
                    n6 = n2;
                    if (n2 < n7) {
                        n6 = n7;
                        n3 = n4;
                        n5 = n4;
                    }
                } else {
                    list.remove(n4);
                    n5 = -1;
                    n6 = n2;
                }
                n4 = (short)(n5 + 1);
                n2 = n6;
            } while (true);
            break;
        } while (true);
    }

    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.setContentView(2130903041);
        this.setRequestedOrientation(1);
        this.wpa_cli = Function.loadLib(this.context);
        this.networkList = new ArrayList();
        this.adapter = object = new NetworkAdapter(this, this.networkList);
        this.list = (ListView)this.findViewById(2131296257);
        this.list.setAdapter((ListAdapter)object);
        this.list.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> object, View view, int n2, long l2) {
                object = (Network)MainActivity.this.list.getItemAtPosition(n2);
                if (MainActivity.this.lastNet != n2) {
                    MainActivity.this.intent.putExtra("List_Position", 0);
                    MainActivity.this.lastNet = n2;
                }
                MainActivity.this.showNetworkOptionsDialog((Network)object);
            }
        });
        this.wifi = (WifiManager)this.getSystemService("wifi");
        this.receiverWifi = new WifiReceiver();
        if (!this.wifi.isWifiEnabled()) {
            Toast.makeText((Context)this, (int)2131099672, (int)0).show();
            this.wifi.setWifiEnabled(true);
        }
        this.autoScan = false;
        this.receiverControl = false;
        this.registerReceiver((BroadcastReceiver)this.receiverWifi, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        this.getMenuInflater().inflate(2131230720, menu2);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int n2 = menuItem.getItemId();
        if (n2 == 2131296271) {
            this.showAbout();
            return super.onOptionsItemSelected(menuItem);
        }
        if (n2 == 2131296268) {
            if (this.autoScan) return super.onOptionsItemSelected(menuItem);
            this.intent.putExtra("List_Position", 0);
            this.showScan();
            return super.onOptionsItemSelected(menuItem);
        }
        if (n2 == 2131296270) {
            this.startActivity(new Intent((Context)this, (Class)PasswordActivity.class));
            return super.onOptionsItemSelected(menuItem);
        }
        if (n2 != 2131296269) return super.onOptionsItemSelected(menuItem);
        if (!this.wifi.isWifiEnabled()) {
            Toast.makeText((Context)this, (int)2131099672, (int)0).show();
            this.wifi.setWifiEnabled(true);
        }
        if (this.autoScan) {
            this.autoScan = false;
            return super.onOptionsItemSelected(menuItem);
        }
        this.autoScan = true;
        this.wifi.startScan();
        return super.onOptionsItemSelected(menuItem);
    }

    protected void onPause() {
        this.unregisterReceiver((BroadcastReceiver)this.receiverWifi);
        super.onPause();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onPrepareOptionsMenu(Menu menu2) {
        MenuItem menuItem = menu2.findItem(2131296269);
        if (this.autoScan) {
            menuItem.setTitle(2131099652);
            do {
                return super.onPrepareOptionsMenu(menu2);
                break;
            } while (true);
        }
        menuItem.setTitle(2131099651);
        return super.onPrepareOptionsMenu(menu2);
    }

    protected void onResume() {
        this.registerReceiver((BroadcastReceiver)this.receiverWifi, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
        if (this.autoScan) {
            this.wifi.startScan();
        }
        super.onResume();
    }

    protected void showScan() {
        if (!this.wifi.isWifiEnabled()) {
            Toast.makeText((Context)this, (int)2131099672, (int)0).show();
            this.wifi.setWifiEnabled(true);
        }
        this.receiverControl = true;
        this.wifi.startScan();
        Toast.makeText((Context)this, (int)2131099671, (int)0).show();
    }

    private class CallSU
    extends AsyncTask<Void, Integer, Integer> {
        static final int CONNECTED = 1;
        static final int NOROOTDEVICE = -1;
        static final int NOT_CONNECTED = 0;
        final String BSSID;
        final String cmd;
        final ProgressDialog pDialog;

        public CallSU(String string2, String string3) {
            this.pDialog = new ProgressDialog(MainActivity.this.context);
            this.cmd = string2;
            this.BSSID = string3;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        protected /* varargs */ Integer doInBackground(Void ... var1_1) {
            var3_2 = 1;
            var6_3 = (ConnectivityManager)MainActivity.this.getSystemService("connectivity");
            var1_1 = var6_3.getNetworkInfo(1);
            if (!var1_1.isConnected()) ** GOTO lbl-1000
            if (MainActivity.this.wifi.getConnectionInfo().getBSSID().equalsIgnoreCase(this.BSSID)) {
                return 1;
            }
            MainActivity.this.wifi.disconnect();
            do {
                if (!var1_1.isConnected()) lbl-1000: // 2 sources:
                {
                    if (!(var1_1 = Function.invokeSU(this.cmd)).equals("norootdevice")) break;
                    return -1;
                }
                var1_1 = var6_3.getNetworkInfo(1);
            } while (true);
            if (!var1_1.contains("OK")) {
                Function.invokeSU(this.cmd.replace("IFNAME=wlan0 ", ""));
            }
            var4_4 = System.currentTimeMillis();
            var2_5 = 0;
            do {
                if (var2_5 != 0 || System.currentTimeMillis() >= 8000 + var4_4) {
                    if (Function.invokeSU("cat /data/misc/wifi/wpa_supplicant.conf").contains(this.BSSID) && (var2_5 = 1) == 0) {
                        var2_5 = 0;
                        return var2_5;
                    }
                    var2_5 = var3_2;
                    return var2_5;
                }
                if (!var6_3.getNetworkInfo(1).isConnected() || !MainActivity.this.wifi.getConnectionInfo().getBSSID().equalsIgnoreCase(this.BSSID)) continue;
                var2_5 = 1;
            } while (true);
        }

        protected void onPostExecute(Integer n2) {
            this.pDialog.dismiss();
            switch (n2) {
                default: {
                    MainActivity.this.showFailDialog();
                    return;
                }
                case -1: {
                    MainActivity.this.showNoRootDeviceDialog();
                    return;
                }
                case 0: {
                    MainActivity.this.showFailDialog();
                    return;
                }
                case 1: 
            }
            MainActivity.this.showSuccessDialog();
        }

        protected void onPreExecute() {
            this.pDialog.setProgressStyle(0);
            this.pDialog.setMessage((CharSequence)MainActivity.this.getResources().getString(2131099670));
            this.pDialog.setMax(1);
            this.pDialog.setProgress(0);
            this.pDialog.setCancelable(false);
            this.pDialog.show();
        }

        protected /* varargs */ void onProgressUpdate(Integer ... arrinteger) {
            this.pDialog.setProgress(arrinteger[0].intValue());
        }
    }

}

