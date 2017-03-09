/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Base64
 */
package com.google.a.a;

import android.util.Base64;
import com.google.a.a.i;

class a
implements i {
    a() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public String a(byte[] arrby, boolean bl) {
        int n2;
        if (bl) {
            n2 = 11;
            do {
                return Base64.encodeToString((byte[])arrby, (int)n2);
                break;
            } while (true);
        }
        n2 = 2;
        return Base64.encodeToString((byte[])arrby, (int)n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public byte[] a(String string2, boolean bl) throws IllegalArgumentException {
        int n2;
        if (bl) {
            n2 = 11;
            do {
                return Base64.decode((String)string2, (int)n2);
                break;
            } while (true);
        }
        n2 = 2;
        return Base64.decode((String)string2, (int)n2);
    }
}

