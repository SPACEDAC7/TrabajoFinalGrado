/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.internal;

public final class b
extends Exception {
    public final boolean a;

    public b(String string2, boolean bl) {
        super(string2);
        this.a = bl;
    }

    public b(String string2, boolean bl, Throwable throwable) {
        super(string2, throwable);
        this.a = bl;
    }

    public void a(String string2) {
        com.google.ads.util.b.b(this.c(string2));
        com.google.ads.util.b.a(null, this);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void b(String object) {
        String string2 = this.c((String)object);
        if (this.a) {
            object = this;
            do {
                throw new RuntimeException(string2, (Throwable)object);
                break;
            } while (true);
        }
        object = null;
        throw new RuntimeException(string2, (Throwable)object);
    }

    public String c(String string2) {
        String string3 = string2;
        if (this.a) {
            string3 = string2 + ": " + this.getMessage();
        }
        return string3;
    }
}

