/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.android.id;

public class DeviceId {
    private String a;
    private String b;
    private int c;
    private int d;

    public DeviceId(String string2) {
        this.b = string2;
        this.c = 0;
        this.d = 0;
    }

    public DeviceId(String string2, int n2, int n3) {
        this.b = string2;
        this.c = n2;
        this.d = n3;
    }

    public DeviceId(String string2, String string3, int n2, int n3) {
        this.a = string2;
        this.b = string3;
        this.c = n2;
        this.d = n3;
    }

    public int getCommonness() {
        return this.c;
    }

    public String getId() {
        return this.b;
    }

    public String getName() {
        return this.a;
    }

    public int getPersistency() {
        return this.d;
    }

    public String getSuffix() {
        return "" + this.getCommonness() + "" + this.getPersistency();
    }
}

