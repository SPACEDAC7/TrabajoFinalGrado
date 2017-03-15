/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import java.util.HashMap;
import java.util.List;

public class a {
    private final String a;
    private final String b;
    private final List<String> c;
    private final List<String> d;
    private final HashMap<String, String> e;

    public a(String string2, String string3, List<String> list, List<String> list2, HashMap<String, String> hashMap) {
        com.google.ads.util.a.a(string3);
        if (string2 != null) {
            com.google.ads.util.a.a(string2);
        }
        this.a = string2;
        this.b = string3;
        this.c = list;
        this.e = hashMap;
        this.d = list2;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public List<String> c() {
        return this.c;
    }

    public List<String> d() {
        return this.d;
    }

    public HashMap<String, String> e() {
        return this.e;
    }
}

