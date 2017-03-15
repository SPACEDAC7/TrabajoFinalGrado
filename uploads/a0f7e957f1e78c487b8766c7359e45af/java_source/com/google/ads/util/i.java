/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.util;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class i {
    private static final Object a = new Object();
    private static int b = 0;
    private static HashMap<Class<?>, Integer> c = new HashMap();
    private final ArrayList<a<?>> d = new ArrayList();
    public final int o;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public i() {
        Object object = a;
        synchronized (object) {
            int n2 = b;
            b = n2 + 1;
            this.o = n2;
            Integer n3 = c.get(this.getClass());
            if (n3 == null) {
                c.put(this.getClass(), 1);
            } else {
                c.put(this.getClass(), n3 + 1);
            }
        }
        com.google.ads.util.b.d("State created: " + this.toString());
    }

    private void a(a<?> a2) {
        this.d.add(a2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void finalize() throws Throwable {
        Object object = a;
        synchronized (object) {
            c.put(this.getClass(), c.get(this.getClass()) - 1);
        }
        super.finalize();
    }

    public String toString() {
        return this.getClass().getSimpleName() + "[" + this.o + "]";
    }

    public abstract class a<T> {
        protected T a;
        protected final String b;

        private a(String string2) {
            this(string2, null);
        }

        private a(String string2, T t2) {
            this.b = string2;
            i.this.a(this);
            this.a = t2;
        }

        public String toString() {
            return i.this.toString() + "." + this.b + " = " + this.a;
        }
    }

    public final class b<T>
    extends a<T> {
        public b(String string2, T t2) {
            super(string2, t2);
        }

        public T a() {
            return (T)this.a;
        }

        @Override
        public String toString() {
            return super.toString() + " (!)";
        }
    }

    public final class c<T>
    extends a<T> {
        final /* synthetic */ i d;
        private boolean e;

        public c(i i2, String string2) {
            this.d = i2;
            super(string2);
            this.e = false;
            this.e = false;
        }

        public c(i i2, String string2, T t2) {
            this.d = i2;
            super(string2, t2);
            this.e = false;
            this.e = false;
        }

        public T a() {
            synchronized (this) {
                Object object = this.a;
                return (T)object;
            }
        }

        public void a(T t2) {
            synchronized (this) {
                com.google.ads.util.b.d("State changed - " + this.d.toString() + "." + this.b + ": '" + t2 + "' <-- '" + this.a + "'.");
                this.a = t2;
                this.e = true;
                return;
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public String toString() {
            String string2;
            StringBuilder stringBuilder = new StringBuilder().append(super.toString());
            if (this.e) {
                string2 = " (*)";
                do {
                    return stringBuilder.append(string2).toString();
                    break;
                } while (true);
            }
            string2 = "";
            return stringBuilder.append(string2).toString();
        }
    }

    public final class d<T>
    extends a<WeakReference<T>> {
        public d(String string2, T t2) {
            super(string2, new WeakReference<T>(t2));
        }

        public T a() {
            return ((WeakReference)this.a).get();
        }

        @Override
        public String toString() {
            return i.this.toString() + "." + this.b + " = " + this.a() + " (?)";
        }
    }

}

