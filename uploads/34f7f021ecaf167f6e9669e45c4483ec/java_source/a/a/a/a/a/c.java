/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a.a;

import a.a.a.a.a;
import a.a.a.a.a.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Set;

public class c {
    private static final ThreadLocal<Set<d>> a = new ThreadLocal();
    private final int b;
    private int c;

    public c() {
        this.c = 0;
        this.b = 37;
        this.c = 17;
    }

    /*
     * Enabled aggressive block sorting
     */
    public c(int n2, int n3) {
        boolean bl = true;
        this.c = 0;
        boolean bl2 = n2 % 2 != 0;
        a.a.a.a.c.a(bl2, "HashCodeBuilder requires an odd initial value", new Object[0]);
        bl2 = n3 % 2 != 0 ? bl : false;
        a.a.a.a.c.a(bl2, "HashCodeBuilder requires an odd multiplier", new Object[0]);
        this.b = n3;
        this.c = n2;
    }

    public static /* varargs */ <T> int a(int n2, int n3, T t2, boolean bl, Class<? super T> class_, String ... arrstring) {
        Class class_2;
        if (t2 == null) {
            throw new IllegalArgumentException("The object to build a hash code for must not be null");
        }
        c c2 = new c(n2, n3);
        c.a(t2, class_2, c2, bl, arrstring);
        for (class_2 = t2.getClass(); class_2.getSuperclass() != null && class_2 != class_; class_2 = class_2.getSuperclass()) {
            c.a(t2, class_2, c2, bl, arrstring);
        }
        return c2.b();
    }

    public static /* varargs */ int a(Object object, String ... arrstring) {
        return c.a(17, 37, object, false, null, arrstring);
    }

    static Set<d> a() {
        return a.get();
    }

    /*
     * Loose catch block
     * Enabled aggressive exception aggregation
     */
    private static void a(Object object, Class<?> arraccessibleObject, c c2, boolean bl, String[] arrstring) {
        if (c.a(object)) {
            return;
        }
        c.b(object);
        arraccessibleObject = arraccessibleObject.getDeclaredFields();
        AccessibleObject.setAccessible(arraccessibleObject, true);
        for (AccessibleObject accessibleObject : arraccessibleObject) {
            boolean bl2;
            if (a.b(arrstring, accessibleObject.getName()) || accessibleObject.getName().indexOf(36) != -1 || !bl && Modifier.isTransient(accessibleObject.getModifiers()) || (bl2 = Modifier.isStatic(accessibleObject.getModifiers()))) continue;
            c2.d(accessibleObject.get(object));
            continue;
            {
                catch (IllegalAccessException illegalAccessException) {
                    try {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                    catch (Throwable var1_3) {
                        c.c(object);
                        throw var1_3;
                    }
                }
            }
        }
        c.c(object);
    }

    static boolean a(Object object) {
        Set<d> set = c.a();
        if (set != null && set.contains(new d(object))) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static void b(Object object) {
        synchronized (c.class) {
            if (c.a() == null) {
                a.set(new HashSet());
            }
        }
        c.a().add(new d(object));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static void c(Object set) {
        Set<d> set2 = c.a();
        if (set2 == null) {
            return;
        }
        set2.remove(new d(set));
        synchronized (c.class) {
            set = c.a();
            if (set != null && set.isEmpty()) {
                a.remove();
            }
            return;
        }
    }

    public c a(byte by) {
        this.c = this.c * this.b + by;
        return this;
    }

    public c a(char c2) {
        this.c = this.c * this.b + c2;
        return this;
    }

    public c a(double d2) {
        return this.a(Double.doubleToLongBits(d2));
    }

    public c a(float f2) {
        this.c = this.c * this.b + Float.floatToIntBits(f2);
        return this;
    }

    public c a(int n2) {
        this.c = this.c * this.b + n2;
        return this;
    }

    public c a(long l2) {
        this.c = this.c * this.b + (int)(l2 >> 32 ^ l2);
        return this;
    }

    public c a(short s2) {
        this.c = this.c * this.b + s2;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public c a(boolean bl) {
        int n2 = this.c;
        int n3 = this.b;
        int n4 = bl ? 0 : 1;
        this.c = n4 + n3 * n2;
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(byte[] arrby) {
        if (arrby == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrby.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrby[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(char[] arrc) {
        if (arrc == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrc.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrc[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(double[] arrd) {
        if (arrd == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrd.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrd[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(float[] arrf) {
        if (arrf == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrf.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrf[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(int[] arrn) {
        if (arrn == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrn.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrn[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(long[] arrl) {
        if (arrl == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrl.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrl[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(Object[] arrobject) {
        if (arrobject == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrobject.length;
        int n3 = 0;
        while (n3 < n2) {
            this.d(arrobject[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(short[] arrs) {
        if (arrs == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrs.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrs[n3]);
            ++n3;
        }
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public c a(boolean[] arrbl) {
        if (arrbl == null) {
            this.c *= this.b;
            return this;
        }
        int n2 = arrbl.length;
        int n3 = 0;
        while (n3 < n2) {
            this.a(arrbl[n3]);
            ++n3;
        }
        return this;
    }

    public int b() {
        return this.c;
    }

    public c d(Object object) {
        if (object == null) {
            this.c *= this.b;
            return this;
        }
        if (object.getClass().isArray()) {
            if (object instanceof long[]) {
                this.a((long[])object);
                return this;
            }
            if (object instanceof int[]) {
                this.a((int[])object);
                return this;
            }
            if (object instanceof short[]) {
                this.a((short[])object);
                return this;
            }
            if (object instanceof char[]) {
                this.a((char[])object);
                return this;
            }
            if (object instanceof byte[]) {
                this.a((byte[])object);
                return this;
            }
            if (object instanceof double[]) {
                this.a((double[])object);
                return this;
            }
            if (object instanceof float[]) {
                this.a((float[])object);
                return this;
            }
            if (object instanceof boolean[]) {
                this.a((boolean[])object);
                return this;
            }
            this.a((Object[])object);
            return this;
        }
        this.c = this.c * this.b + object.hashCode();
        return this;
    }

    public int hashCode() {
        return this.b();
    }
}

