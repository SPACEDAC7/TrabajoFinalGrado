/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 */
package com.google.ads.internal;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

public class e {
    private String a;
    private HashMap<String, String> b;

    public e(Bundle bundle) {
        this.a = bundle.getString("action");
        this.b = this.a(bundle.getSerializable("params"));
    }

    public e(String string2) {
        this.a = string2;
    }

    public e(String string2, HashMap<String, String> hashMap) {
        this(string2);
        this.b = hashMap;
    }

    private HashMap<String, String> a(Serializable serializable) {
        if (serializable instanceof HashMap) {
            return (HashMap)serializable;
        }
        return null;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("action", this.a);
        bundle.putSerializable("params", this.b);
        return bundle;
    }

    public String b() {
        return this.a;
    }

    public HashMap<String, String> c() {
        return this.b;
    }
}

