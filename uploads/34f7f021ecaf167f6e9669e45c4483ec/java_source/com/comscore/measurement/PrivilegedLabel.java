/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.measurement;

import com.comscore.measurement.Label;

public class PrivilegedLabel
extends Label {
    private Boolean a = true;

    public PrivilegedLabel(String string2, String string3, Boolean bl) {
        super(string2, string3, bl);
    }

    public Boolean getPrivileged() {
        return this.a;
    }
}

