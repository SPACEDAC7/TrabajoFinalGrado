/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 */
package com.comscore.utils.id;

import android.annotation.SuppressLint;
import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.android.id.DeviceId;
import com.comscore.android.id.IdHelperAndroid;
import com.comscore.applications.EventType;
import com.comscore.utils.Storage;
import com.comscore.utils.Utils;
import com.comscore.utils.id.IdChecker;
import java.util.HashMap;

@SuppressLint(value={"NewApi"})
public class IdHelper {
    private Core a;
    private String b;
    private String c;
    private Storage d;
    private Context e;
    private String f;
    private String g;
    private String h;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private Boolean l;
    private IdChecker m;

    public IdHelper(Context context, Storage storage, Core core) {
        this.e = context;
        this.d = storage;
        this.a = core;
        this.m = new IdChecker(this.e, storage);
    }

    private void a() {
        DeviceId deviceId = IdHelperAndroid.getAdvertisingDeviceId(this.e);
        if (deviceId == null) {
            this.i = true;
            this.a(null, false);
            return;
        }
        if (deviceId.getCommonness() == 0 && deviceId.getPersistency() == 0) {
            this.a(deviceId.getId(), true);
            return;
        }
        String string2 = this.d.get("md5RawCrossPublisherId");
        if (!this.m.checkCrossPublisherId(string2)) {
            this.d.remove("md5RawCrossPublisherId");
            this.d.remove("crossPublisherId");
            this.b = null;
            this.h = null;
        }
        this.a(deviceId.getId(), false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(String string2, boolean bl) {
        if (string2 == null) {
            this.b = null;
            this.h = null;
            return;
        }
        this.i = bl;
        String string3 = this.d.get("md5RawCrossPublisherId");
        bl = this.h == null;
        this.h = Utils.md5(string2);
        if (this.a(this.h)) {
            this.b = this.d.get("crossPublisherId");
            return;
        }
        if (this.i && string3 != null && !string3.isEmpty() && string3 != this.h) {
            this.j = true;
            this.k = bl;
        }
        this.b = this.b(string2);
        this.d.set("crossPublisherId", this.b);
        this.d.set("md5RawCrossPublisherId", this.h);
    }

    private boolean a(String string2) {
        String string3 = this.d.get("md5RawCrossPublisherId");
        if (string3 != null && string3.equals(string2)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private String b(String string2) {
        String string3;
        String string4 = string3 = null;
        if (string2 == null) return string4;
        string4 = string3;
        if (string2.length() <= 0) return string4;
        try {
            return Utils.encrypt(string2);
        }
        catch (Exception exception) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void b() {
        Object object;
        if (this.d.has("vid").booleanValue()) {
            this.c = this.d.get("vid");
            if (this.m.checkVisitorId()) return;
            object = new HashMap();
            object.put("cs_c12u", this.d.get("vid"));
            this.a.notify(EventType.AGGREGATE, (HashMap<String, String>)object, true);
            this.d.remove("vid");
            this.c = null;
        }
        Object object2 = IdHelperAndroid.getDeviceId(this.e);
        object = object2.getId();
        object2 = "-cs" + object2.getSuffix();
        if (this.c != null) return;
        this.c = Utils.md5(new StringBuilder().append((String)object).append(this.getPublisherSecret()).toString()) + (String)object2;
        this.d.set("vid", this.c);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean c() {
        boolean bl = IdHelperAndroid.isAdvertisingIdEnabled(this.e);
        if (this.l == null) {
            this.l = bl;
            return bl;
        } else {
            if (this.l == bl) return bl;
            {
                this.a();
                return bl;
            }
        }
    }

    public void generateIds() {
        if (this.isPublisherSecretEmpty()) {
            return;
        }
        this.g = IdHelperAndroid.getDeviceId(this.e).getId();
        this.b();
        this.a();
    }

    public String getAndroidId() {
        return this.g;
    }

    public String getCrossPublisherId() {
        if (this.i) {
            if (this.c()) {
                this.a();
                if (this.j && !this.k) {
                    return "none";
                }
                return this.b;
            }
            return "none";
        }
        return this.b;
    }

    public String getMD5AdvertisingId() {
        if (this.i && this.c()) {
            return this.h;
        }
        return null;
    }

    public String getPublisherSecret() {
        if (this.f == null) {
            this.f = "";
        }
        return this.f;
    }

    public String getVisitorId() {
        return this.c;
    }

    public boolean isIdChanged() {
        return this.j;
    }

    public boolean isPublisherSecretEmpty() {
        if (this.f == null || this.f.length() == 0) {
            return true;
        }
        return false;
    }

    public void resetVisitorId() {
        this.c = null;
        if (!this.d.has("vid").booleanValue()) {
            return;
        }
        this.d.remove("vid");
        this.generateIds();
    }

    public void setPublisherSecret(String string2) {
        this.f = string2;
    }
}

