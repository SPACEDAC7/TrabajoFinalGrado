/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.accounts.Account
 *  android.accounts.AccountManager
 *  android.accounts.AccountManagerCallback
 *  android.accounts.AccountManagerFuture
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Parcelable
 */
package com.android.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import com.android.volley.AuthFailureError;
import com.android.volley.toolbox.Authenticator;

public class AndroidAuthenticator
implements Authenticator {
    private final Account mAccount;
    private final AccountManager mAccountManager;
    private final String mAuthTokenType;
    private final boolean mNotifyAuthFailure;

    AndroidAuthenticator(AccountManager accountManager, Account account, String string2, boolean bl) {
        this.mAccountManager = accountManager;
        this.mAccount = account;
        this.mAuthTokenType = string2;
        this.mNotifyAuthFailure = bl;
    }

    public AndroidAuthenticator(Context context, Account account, String string2) {
        this(context, account, string2, false);
    }

    public AndroidAuthenticator(Context context, Account account, String string2, boolean bl) {
        this(AccountManager.get((Context)context), account, string2, bl);
    }

    public Account getAccount() {
        return this.mAccount;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public String getAuthToken() throws AuthFailureError {
        var3_1 = this.mAccountManager.getAuthToken(this.mAccount, this.mAuthTokenType, this.mNotifyAuthFailure, null, null);
        try {
            var4_2 = (Bundle)var3_1.getResult();
            var1_4 = var2_3 = null;
        }
        catch (Exception var1_5) {
            throw new AuthFailureError("Error while retrieving auth token", var1_5);
        }
        if (!var3_1.isDone()) ** GOTO lbl15
        var1_4 = var2_3;
        if (var3_1.isCancelled()) ** GOTO lbl14
        if (var4_2.containsKey("intent")) {
            throw new AuthFailureError((Intent)var4_2.getParcelable("intent"));
        }
        var1_4 = var4_2.getString("authtoken");
lbl14: // 2 sources:
        if (var1_4 != null) return var1_4;
lbl15: // 2 sources:
        if ((var1_4 = String.valueOf(this.mAuthTokenType)).length() != 0) {
            var1_4 = "Got null auth token for type: ".concat(var1_4);
            throw new AuthFailureError(var1_4);
        }
        var1_4 = new String("Got null auth token for type: ");
        throw new AuthFailureError(var1_4);
    }

    public String getAuthTokenType() {
        return this.mAuthTokenType;
    }

    @Override
    public void invalidateAuthToken(String string2) {
        this.mAccountManager.invalidateAuthToken(this.mAccount.type, string2);
    }
}

