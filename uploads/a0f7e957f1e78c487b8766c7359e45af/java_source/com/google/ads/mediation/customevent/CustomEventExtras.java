/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;

public class CustomEventExtras
implements NetworkExtras {
    private final HashMap<String, Object> a = new HashMap();

    public CustomEventExtras addExtra(String string2, Object object) {
        this.a.put(string2, object);
        return this;
    }

    public CustomEventExtras clearExtras() {
        this.a.clear();
        return this;
    }

    public Object getExtra(String string2) {
        return this.a.get(string2);
    }

    public Object removeExtra(String string2) {
        return this.a.remove(string2);
    }
}

