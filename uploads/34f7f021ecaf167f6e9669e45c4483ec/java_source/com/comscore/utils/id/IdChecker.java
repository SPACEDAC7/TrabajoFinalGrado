/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 */
package com.comscore.utils.id;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.comscore.utils.Storage;
import com.comscore.utils.Utils;

public class IdChecker {
    private static final String[] a = new String[]{"0123456789ABCDEF", "0123456789abcdef", "9774d56d682e549c", "9774D56D682E549C", "unknown", "UNKNOWN", "android_id", "ANDROID_ID"};
    private Context b;
    private boolean c;
    private String d;
    private Storage e;

    public IdChecker(Context context, Storage storage) {
        this.b = context;
        this.e = storage;
        this.c = false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean a(String string2, String arrstring) {
        boolean bl = false;
        arrstring = this.e.get((String)arrstring).split(";");
        int n2 = 0;
        do {
            boolean bl2 = bl;
            if (n2 >= arrstring.length) return bl2;
            if (arrstring[n2].equals(string2)) {
                return true;
            }
            ++n2;
        } while (true);
    }

    private String b() {
        String string2 = null;
        if (Integer.valueOf(Build.VERSION.SDK_INT) >= 9) {
            string2 = Build.SERIAL;
        }
        return string2;
    }

    private void b(String string2, String string3) {
        String string4 = this.e.get(string3);
        String string5 = string2;
        if (string4.length() > 0) {
            string5 = string4 + ";" + string2;
        }
        this.e.set(string3, string5);
    }

    private String c() {
        String string2;
        if (Integer.valueOf(Build.VERSION.SDK_INT) >= 3 && (string2 = Settings.Secure.getString((ContentResolver)this.b.getContentResolver(), (String)"android_id")) != null && string2.length() > 0) {
            return string2;
        }
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected String a() {
        var5_1 = false;
        if (this.c) {
            return this.d;
        }
        this.c = true;
        var2_2 = this.b();
        if (var2_2 == null) ** GOTO lbl-1000
        var1_3 = var2_2;
        if (var2_2.length() == 0) lbl-1000: // 2 sources:
        {
            if ((var2_2 = this.c()) == null) return null;
            var1_3 = var2_2;
            if (var2_2.length() == 0) {
                return null;
            }
        }
        var3_4 = 0;
        do {
            var4_5 = var5_1;
            if (var3_4 >= IdChecker.a.length) ** GOTO lbl19
            if (IdChecker.a[var3_4].equals(var1_3)) {
                var4_5 = true;
lbl19: // 2 sources:
                if (var4_5 == false) return null;
                this.d = var1_3;
                return var1_3;
            }
            ++var3_4;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean checkCrossPublisherId(String string2) {
        if (string2 == null) return true;
        if (string2.length() == 0) {
            return true;
        }
        String string3 = this.a();
        if (string3 == null) return true;
        if (this.a(string3, "adIdCheckData")) return true;
        this.b(string3, "adIdCheckData");
        if (!Utils.md5(string3).equals(string2)) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean checkVisitorId() {
        String string2 = this.a();
        if (string2 == null || this.a(string2, "idCheckData")) {
            return true;
        }
        this.b(string2, "idCheckData");
        return false;
    }
}

