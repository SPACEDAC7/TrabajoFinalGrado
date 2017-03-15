/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActionBar
 *  android.app.Activity
 *  android.content.ClipData
 *  android.content.ClipboardManager
 *  android.content.Context
 *  android.os.AsyncTask
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.text.ClipboardManager
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.ArrayAdapter
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.Toast
 */
package com.ngb.wpsconnect;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.ngb.wpsconnect.Function;
import com.ngb.wpsconnect.Password;
import com.ngb.wpsconnect.PasswordAdapter;
import java.util.ArrayList;
import java.util.Collection;

public class PasswordActivity
extends Activity {
    private static boolean backupPassword;
    protected ArrayAdapter adapter;
    protected ListView listpwd;
    protected ArrayList<Password> pwdList;

    static /* synthetic */ void access$0(boolean bl) {
        backupPassword = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private ArrayList<Password> processInfo(String arrstring) {
        ArrayList<Password> arrayList = new ArrayList<Password>();
        arrstring = arrstring.split("--");
        int n2 = 0;
        while (n2 < arrstring.length) {
            String[] arrstring2;
            if (arrstring[n2].contains("psk") && (arrstring2 = arrstring[n2].split("\"")).length > 3) {
                arrayList.add(new Password(arrstring2[1], arrstring2[3]));
            }
            n2 = (short)(n2 + 1);
        }
        return arrayList;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new CallSU().execute((Object[])new Void[0]);
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        this.getMenuInflater().inflate(2131230721, menu2);
        this.getActionBar().setDisplayHomeAsUpEnabled(true);
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean bl = false;
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 16908332: {
                this.onBackPressed();
                return true;
            }
            case 2131296272: 
        }
        if (!backupPassword) return bl;
        Toast.makeText((Context)this, (CharSequence)this.getString(2131099674), (int)0).show();
        return Function.doBackup(this.pwdList, this.getString(2131099662), this.getString(2131099663));
    }

}

