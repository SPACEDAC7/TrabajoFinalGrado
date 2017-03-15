/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.util.a;
import java.util.List;

public class f {
    private final String a;
    private final String b;
    private final String c;
    private final List<String> d;
    private final List<String> e;
    private final List<String> f;

    public f(String string2, String string3, String string4, List<String> list, List<String> list2, List<String> list3) {
        a.a(string3);
        if (string2 != null) {
            a.a(string2);
        }
        a.a(string4);
        this.a = string2;
        this.b = string3;
        this.c = string4;
        this.d = list;
        this.e = list2;
        this.f = list3;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public List<String> d() {
        return this.d;
    }

    public List<String> e() {
        return this.e;
    }
}

