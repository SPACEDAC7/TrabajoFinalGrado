/*
 * Decompiled with CFR 0_115.
 */
package com.ngb.wpsconnect;

public class Password {
    private final String netName;
    private final String netPwd;

    public Password(String string2, String string3) {
        this.netName = string2;
        this.netPwd = string3;
    }

    public String getNetName() {
        return this.netName;
    }

    public String getNetPwd() {
        return this.netPwd;
    }
}

