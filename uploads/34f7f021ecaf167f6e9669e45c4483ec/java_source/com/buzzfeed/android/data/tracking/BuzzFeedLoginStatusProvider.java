/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data.tracking;

import android.content.Context;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.DustBusterMetaDataValues;
import com.buzzfeed.analytics.provider.LoginStatusProvider;
import com.buzzfeed.android.data.BuzzUser;

public class BuzzFeedLoginStatusProvider
implements LoginStatusProvider {
    BuzzUser buzzUser;

    public BuzzFeedLoginStatusProvider(BuzzUser buzzUser) {
        this.buzzUser = buzzUser;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public String getLoginStatus(Context var1_1) {
        var1_1 = this.buzzUser.getLoginType();
        if (TextUtils.isEmpty((CharSequence)var1_1) != false) return DustBusterMetaDataValues.NO_LOGIN;
        var2_2 = -1;
        switch (var1_1.hashCode()) {
            case -644871684: {
                if (var1_1.equals("buzzfeedAccount")) {
                    var2_2 = 0;
                    ** break;
                }
                ** GOTO lbl13
            }
            case -885653068: {
                if (var1_1.equals("googleAccount")) {
                    var2_2 = 1;
                }
            }
lbl13: // 6 sources:
            default: {
                ** GOTO lbl18
            }
            case 1701969031: 
        }
        if (var1_1.equals("facebookAccount")) {
            var2_2 = 2;
        }
lbl18: // 4 sources:
        switch (var2_2) {
            default: {
                return DustBusterMetaDataValues.NO_LOGIN;
            }
            case 0: {
                return "buzzfeed";
            }
            case 1: {
                return "google";
            }
            case 2: 
        }
        return "facebook";
    }
}

