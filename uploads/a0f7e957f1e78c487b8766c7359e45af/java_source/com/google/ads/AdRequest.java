/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.location.Location
 *  android.text.TextUtils
 */
package com.google.ads;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.google.ads.ah;
import com.google.ads.doubleclick.DfpExtras;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobAdapterExtras;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR;
    public static final String VERSION = "6.2.1";
    private static final SimpleDateFormat a;
    private static Method b;
    private static Method c;
    private Gender d = null;
    private Date e = null;
    private Set<String> f = null;
    private Map<String, Object> g = null;
    private final Map<Class<?>, NetworkExtras> h = new HashMap();
    private Location i = null;
    private boolean j = false;
    private boolean k = false;
    private Set<String> l = null;

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static {
        AdRequest.a = new SimpleDateFormat("yyyyMMdd");
        AdRequest.b = null;
        AdRequest.c = null;
        var2 = Class.forName("com.google.analytics.tracking.android.AdMobInfo").getMethods();
        var1_3 = var2.length;
        var0_4 = 0;
        do {
            if (var0_4 < var1_3) {
                var3_5 = var2[var0_4];
                if (var3_5.getName().equals("getInstance") && var3_5.getParameterTypes().length == 0) {
                    AdRequest.b = var3_5;
                } else if (var3_5.getName().equals("getJoinIds") && var3_5.getParameterTypes().length == 0) {
                    AdRequest.c = var3_5;
                }
            }
            try {
                if (AdRequest.b == null || AdRequest.c == null) {
                    AdRequest.b = null;
                    AdRequest.c = null;
                    b.e("No Google Analytics: Library Incompatible.");
                }
                ** GOTO lbl29
            }
            catch (ClassNotFoundException var2_1) {
                b.a("No Google Analytics: Library Not Found.");
                ** GOTO lbl29
                catch (Throwable var2_2) {
                    b.a("No Google Analytics: Error Loading Library");
                }
lbl29: // 3 sources:
                AdRequest.TEST_EMULATOR = AdUtil.b("emulator");
                return;
            }
            ++var0_4;
        } while (true);
    }

    private AdMobAdapterExtras a() {
        synchronized (this) {
            if (this.getNetworkExtras(AdMobAdapterExtras.class) == null) {
                this.setNetworkExtras(new AdMobAdapterExtras());
            }
            AdMobAdapterExtras adMobAdapterExtras = (AdMobAdapterExtras)this.getNetworkExtras(AdMobAdapterExtras.class);
            return adMobAdapterExtras;
        }
    }

    @Deprecated
    public AdRequest addExtra(String string2, Object object) {
        AdMobAdapterExtras adMobAdapterExtras = this.a();
        if (adMobAdapterExtras.getExtras() == null) {
            adMobAdapterExtras.setExtras(new HashMap<String, Object>());
        }
        adMobAdapterExtras.getExtras().put(string2, object);
        return this;
    }

    public AdRequest addKeyword(String string2) {
        if (this.f == null) {
            this.f = new HashSet<String>();
        }
        this.f.add(string2);
        return this;
    }

    public AdRequest addKeywords(Set<String> set) {
        if (this.f == null) {
            this.f = new HashSet<String>();
        }
        this.f.addAll(set);
        return this;
    }

    public AdRequest addMediationExtra(String string2, Object object) {
        if (this.g == null) {
            this.g = new HashMap<String, Object>();
        }
        this.g.put(string2, object);
        return this;
    }

    public AdRequest addTestDevice(String string2) {
        if (this.l == null) {
            this.l = new HashSet<String>();
        }
        this.l.add(string2);
        return this;
    }

    public AdRequest clearBirthday() {
        this.e = null;
        return this;
    }

    public Date getBirthday() {
        return this.e;
    }

    public Gender getGender() {
        return this.d;
    }

    public Set<String> getKeywords() {
        if (this.f == null) {
            return null;
        }
        return Collections.unmodifiableSet(this.f);
    }

    public Location getLocation() {
        return this.i;
    }

    public <T> T getNetworkExtras(Class<T> class_) {
        return (T)this.h.get(class_);
    }

    @Deprecated
    public boolean getPlusOneOptOut() {
        return this.a().getPlusOneOptOut();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Map<String, Object> getRequestMap(Context object) {
        Object object2;
        int n2 = 1;
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        if (this.f != null) {
            hashMap.put("kw", this.f);
        }
        if (this.d != null) {
            hashMap.put("cust_gender", this.d.ordinal());
        }
        if (this.e != null) {
            hashMap.put("cust_age", a.format(this.e));
        }
        if (this.i != null) {
            hashMap.put("uule", AdUtil.a(this.i));
        }
        if (this.j) {
            hashMap.put("testing", 1);
        }
        if (this.isTestDevice((Context)object)) {
            hashMap.put("adtest", "on");
        } else if (!this.k) {
            object2 = AdUtil.c() ? "AdRequest.TEST_EMULATOR" : "\"" + AdUtil.a((Context)object) + "\"";
            b.c("To get test ads on this device, call adRequest.addTestDevice(" + (String)object2 + ");");
            this.k = true;
        }
        if ((object2 = (AdMobAdapterExtras)this.getNetworkExtras(AdMobAdapterExtras.class)) != null && object2.getPlusOneOptOut()) {
            hashMap.put("pto", 1);
        } else {
            if (!ah.a((Context)object)) {
                n2 = 0;
            }
            hashMap.put("cipa", n2);
        }
        if ((object = (DfpExtras)this.getNetworkExtras(DfpExtras.class)) != null && object.getExtras() != null && !object.getExtras().isEmpty()) {
            hashMap.put("extras", object.getExtras());
        } else if (object2 != null && object2.getExtras() != null && !object2.getExtras().isEmpty()) {
            hashMap.put("extras", object2.getExtras());
        }
        if (object != null && !TextUtils.isEmpty((CharSequence)(object = object.getPublisherProvidedId()))) {
            hashMap.put("ppid", object);
        }
        if (this.g != null) {
            hashMap.put("mediation_extras", this.g);
        }
        try {
            if (b != null) {
                object = b.invoke(null, new Object[0]);
                if ((object = (Map)c.invoke(object, new Object[0])) != null && object.size() > 0) {
                    hashMap.put("analytics_join_id", object);
                }
            }
            return hashMap;
        }
        catch (Throwable var1_2) {
            b.c("Internal Analytics Error:", var1_2);
            return hashMap;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isTestDevice(Context object) {
        if (this.l == null || (object = AdUtil.a((Context)object)) == null || !this.l.contains(object)) {
            return false;
        }
        return true;
    }

    public AdRequest removeNetworkExtras(Class<?> class_) {
        this.h.remove(class_);
        return this;
    }

    @Deprecated
    public AdRequest setBirthday(String string2) {
        if (string2 == "" || string2 == null) {
            this.e = null;
            return this;
        }
        try {
            this.e = a.parse(string2);
            return this;
        }
        catch (ParseException var1_2) {
            b.b("Birthday format invalid.  Expected 'YYYYMMDD' where 'YYYY' is a 4 digit year, 'MM' is a two digit month, and 'DD' is a two digit day.  Birthday value ignored");
            this.e = null;
            return this;
        }
    }

    public AdRequest setBirthday(Calendar calendar) {
        if (calendar == null) {
            this.e = null;
            return this;
        }
        this.setBirthday(calendar.getTime());
        return this;
    }

    public AdRequest setBirthday(Date date) {
        if (date == null) {
            this.e = null;
            return this;
        }
        this.e = new Date(date.getTime());
        return this;
    }

    @Deprecated
    public AdRequest setExtras(Map<String, Object> map) {
        this.a().setExtras(map);
        return this;
    }

    public AdRequest setGender(Gender gender) {
        this.d = gender;
        return this;
    }

    public AdRequest setKeywords(Set<String> set) {
        this.f = set;
        return this;
    }

    public AdRequest setLocation(Location location) {
        this.i = location;
        return this;
    }

    public AdRequest setMediationExtras(Map<String, Object> map) {
        this.g = map;
        return this;
    }

    public AdRequest setNetworkExtras(NetworkExtras networkExtras) {
        if (networkExtras != null) {
            this.h.put(networkExtras.getClass(), networkExtras);
        }
        return this;
    }

    @Deprecated
    public AdRequest setPlusOneOptOut(boolean bl) {
        this.a().setPlusOneOptOut(bl);
        return this;
    }

    public AdRequest setTestDevices(Set<String> set) {
        this.l = set;
        return this;
    }

    @Deprecated
    public AdRequest setTesting(boolean bl) {
        this.j = bl;
        return this;
    }

    public static enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        
        private final String a;

        private ErrorCode(String string3) {
            this.a = string3;
        }

        public String toString() {
            return this.a;
        }
    }

    public static enum Gender {
        UNKNOWN,
        MALE,
        FEMALE;
        

        private Gender() {
        }
    }

}

