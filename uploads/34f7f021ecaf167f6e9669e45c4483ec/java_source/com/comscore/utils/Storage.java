/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 */
package com.comscore.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.comscore.utils.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Storage {
    public static final String APP_NAME_KEY = "appName";
    private static final String h = "cSPrefs";
    private static final long i = 300;
    protected SharedPreferences a;
    protected final HashMap<String, String> b = new HashMap();
    protected final HashSet<String> c = new HashSet();
    protected final Object d = new Object();
    protected final Object e = new Object();
    protected long f = -1;
    protected boolean g = false;
    private final Runnable j;

    public Storage(Context context) {
        this(context, "cSPrefs");
    }

    public Storage(Context context, String string2) {
        this.j = new d(this);
        this.a(context, string2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void a() {
        Object object = this.d;
        synchronized (object) {
            if (this.g) {
                if (this.f < 0) {
                    this.f = System.currentTimeMillis() + 300;
                    new Thread(this.j).start();
                } else {
                    this.f = System.currentTimeMillis() + 300;
                    this.d.notify();
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void a(Context object, String object2) {
        Object object3 = this.e;
        synchronized (object3) {
            Object object4 = this.d;
            synchronized (object4) {
                this.a = object.getSharedPreferences((String)object2, 0);
                object = this.a.getAll().entrySet().iterator();
                do {
                    if (!object.hasNext()) {
                        this.g = true;
                        return;
                    }
                    object2 = (Map.Entry)object.next();
                    if (!(object2.getValue() instanceof String)) continue;
                    this.b.put((String)object2.getKey(), (String)object2.getValue());
                } while (true);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void add(String string2, long l2) {
        Object object = this.e;
        // MONITORENTER : object
        if (this.g) {
            long l3;
            if (!this.has(string2).booleanValue()) {
                this.set(string2, Long.toString(l2));
                return;
            }
            String string3 = this.b.get(string2);
            try {
                l3 = Long.parseLong(string3);
            }
            catch (NumberFormatException var5_5) {
                l3 = 0;
            }
            this.b.put(string2, Long.toString(l3 + l2));
            this.c.add(string2);
            this.a();
        }
        // MONITOREXIT : object
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void b() {
        do {
            Object object = this.d;
            synchronized (object) {
                long l2 = this.f - System.currentTimeMillis();
                if (l2 <= 0) {
                    return;
                }
                try {
                    this.d.wait(l2);
                }
                catch (InterruptedException var2_2) {}
            }
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void c() {
        Object object = this.e;
        synchronized (object) {
            Object object2 = this.d;
            synchronized (object2) {
                this.f = -1;
            }
            object2 = this.a.edit();
            Iterator<String> iterator = this.c.iterator();
            do {
                if (!iterator.hasNext()) {
                    object2.commit();
                    this.c.clear();
                    return;
                }
                String string2 = iterator.next();
                if (this.b.containsKey(string2)) {
                    object2.putString(string2, this.b.get(string2));
                    continue;
                }
                object2.remove(string2);
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void clear() {
        Object object = this.e;
        synchronized (object) {
            if (this.g) {
                this.c.addAll(this.b.keySet());
                this.b.clear();
                this.a();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void close() {
        Object object = this.e;
        synchronized (object) {
            this.g = false;
            long l2;
            while ((l2 = this.f) >= 0) {
                try {
                    this.e.wait(100);
                }
                catch (InterruptedException var2_2) {
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public String get(String string2) {
        Object object = this.e;
        synchronized (object) {
            if (!this.g) return "";
            if (this.has(string2) == false) return "";
            return this.b.get(string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Boolean has(String string2) {
        Object object = this.e;
        synchronized (object) {
            if (this.g) {
                boolean bl = this.b.containsKey(string2);
                return bl;
            }
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void remove(String string2) {
        Object object = this.e;
        synchronized (object) {
            if (this.g && this.has(string2).booleanValue()) {
                this.b.remove(string2);
                this.c.add(string2);
                this.a();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void set(String string2, String string3) {
        Object object = this.e;
        synchronized (object) {
            if (this.g) {
                String string4 = this.b.get(string2);
                if (!this.b.containsKey(string2) || string4 != string3 && (string3 == null || string4 == null || !string4.equals(string3))) {
                    this.b.put(string2, string3);
                    this.c.add(string2);
                    this.a();
                }
            }
            return;
        }
    }
}

