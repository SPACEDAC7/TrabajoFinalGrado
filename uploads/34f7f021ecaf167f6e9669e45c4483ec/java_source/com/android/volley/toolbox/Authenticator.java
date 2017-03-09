/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;

public interface Authenticator {
    public String getAuthToken() throws AuthFailureError;

    public void invalidateAuthToken(String var1);
}

