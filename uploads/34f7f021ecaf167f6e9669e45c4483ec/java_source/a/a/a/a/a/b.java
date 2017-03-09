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

public class b {
    private static final ThreadLocal<Set<a.a.a.a.b.b<d, d>>> a = new ThreadLocal();
    private boolean b = true;

    static a.a.a.a.b.b<d, d> a(Object object, Object object2) {
        return a.a.a.a.b.b.a(new d(object), new d(object2));
    }

    static Set<a.a.a.a.b.b<d, d>> a() {
        return a.get();
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void a(Object var0, Object var1_1, Class<?> var2_2, b var3_5, boolean var4_6, String[] var5_7) {
        block10 : {
            if (b.b(var0, var1_1)) {
                return;
            }
            b.c(var0, var1_1);
            var2_2 = var2_2.getDeclaredFields();
            AccessibleObject.setAccessible(var2_2, true);
            var6_8 = 0;
            do {
                block11 : {
                    if (var6_8 >= var2_2.length || !var3_5.b) break block10;
                    var8_10 = var2_2[var6_8];
                    if (a.b(var5_7, var8_10.getName()) || var8_10.getName().indexOf(36) != -1) break block11;
                    if (var4_6) ** GOTO lbl17
                    if (Modifier.isTransient(var8_10.getModifiers())) break block11;
lbl17: // 2 sources:
                    if (var7_9 = Modifier.isStatic(var8_10.getModifiers())) break block11;
                    var3_5.e(var8_10.get(var0), var8_10.get(var1_1));
                }
                ++var6_8;
            } while (true);
            catch (IllegalAccessException var2_3) {
                try {
                    throw new InternalError("Unexpected IllegalAccessException");
                }
                catch (Throwable var2_4) {
                    b.d(var0, var1_1);
                    throw var2_4;
                }
            }
        }
        b.d(var0, var1_1);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static /* varargs */ boolean a(Object var0, Object var1_2, boolean var2_3, Class<?> var3_4, String ... var4_5) {
        if (var0 == var1_2) {
            return true;
        }
        if (var0 == null || var1_2 == null) {
            return false;
        }
        var6_6 = var0.getClass();
        var5_7 = var1_2.getClass();
        if (!var6_6.isInstance(var1_2)) ** GOTO lbl10
        if (var5_7.isInstance(var0)) ** GOTO lbl15
        ** GOTO lbl16
lbl10: // 1 sources:
        if (!var5_7.isInstance(var0)) {
            return false;
        }
        if (!var6_6.isInstance(var1_2)) {
            var5_7 = var6_6;
        }
        ** GOTO lbl16
lbl15: // 1 sources:
        var5_7 = var6_6;
lbl16: // 3 sources:
        var6_6 = new b();
        try {
            if (var5_7.isArray()) {
                var6_6.e(var0, var1_2);
                return var6_6.b();
            }
            b.a(var0, var1_2, var5_7, (b)var6_6, var2_3, var4_5);
            do {
                if (var5_7.getSuperclass() == null || var5_7 == var3_4) {
                    return var6_6.b();
                }
                var5_7 = var5_7.getSuperclass();
                b.a(var0, var1_2, var5_7, (b)var6_6, var2_3, var4_5);
            } while (true);
        }
        catch (IllegalArgumentException var0_1) {
            return false;
        }
    }

    public static /* varargs */ boolean a(Object object, Object object2, String ... arrstring) {
        return b.a(object, object2, false, null, arrstring);
    }

    static boolean b(Object b2, Object b3) {
        Set<a.a.a.a.b.b<d, d>> set = b.a();
        b2 = b.a(b2, b3);
        b3 = a.a.a.a.b.b.a(b2.a(), b2.b());
        if (set != null && (set.contains(b2) || set.contains(b3))) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static void c(Object object, Object object2) {
        synchronized (b.class) {
            if (b.a() == null) {
                a.set(new HashSet());
            }
        }
        b.a().add(b.a(object, object2));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static void d(Object set, Object object) {
        Set<a.a.a.a.b.b<d, d>> set2 = b.a();
        if (set2 == null) {
            return;
        }
        set2.remove(b.a(set, object));
        synchronized (b.class) {
            set = b.a();
            if (set != null && set.isEmpty()) {
                a.remove();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(byte by, byte by2) {
        if (!this.b) {
            return this;
        }
        boolean bl = by == by2;
        this.b = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(char c2, char c3) {
        if (!this.b) {
            return this;
        }
        boolean bl = c2 == c3;
        this.b = bl;
        return this;
    }

    public b a(double d2, double d3) {
        if (!this.b) {
            return this;
        }
        return this.a(Double.doubleToLongBits(d2), Double.doubleToLongBits(d3));
    }

    public b a(float f2, float f3) {
        if (!this.b) {
            return this;
        }
        return this.a(Float.floatToIntBits(f2), Float.floatToIntBits(f3));
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(int n2, int n3) {
        if (!this.b) {
            return this;
        }
        boolean bl = n2 == n3;
        this.b = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(long l2, long l3) {
        if (!this.b) {
            return this;
        }
        boolean bl = l2 == l3;
        this.b = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(short s2, short s3) {
        if (!this.b) {
            return this;
        }
        boolean bl = s2 == s3;
        this.b = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(boolean bl, boolean bl2) {
        if (!this.b) {
            return this;
        }
        bl = bl == bl2;
        this.b = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(byte[] arrby, byte[] arrby2) {
        if (this.b && arrby != arrby2) {
            if (arrby == null || arrby2 == null) {
                this.a(false);
                return this;
            }
            if (arrby.length != arrby2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrby.length && this.b; ++i2) {
                this.a(arrby[i2], arrby2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(char[] arrc, char[] arrc2) {
        if (this.b && arrc != arrc2) {
            if (arrc == null || arrc2 == null) {
                this.a(false);
                return this;
            }
            if (arrc.length != arrc2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrc.length && this.b; ++i2) {
                this.a(arrc[i2], arrc2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(double[] arrd, double[] arrd2) {
        if (this.b && arrd != arrd2) {
            if (arrd == null || arrd2 == null) {
                this.a(false);
                return this;
            }
            if (arrd.length != arrd2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrd.length && this.b; ++i2) {
                this.a(arrd[i2], arrd2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(float[] arrf, float[] arrf2) {
        if (this.b && arrf != arrf2) {
            if (arrf == null || arrf2 == null) {
                this.a(false);
                return this;
            }
            if (arrf.length != arrf2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrf.length && this.b; ++i2) {
                this.a(arrf[i2], arrf2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(int[] arrn, int[] arrn2) {
        if (this.b && arrn != arrn2) {
            if (arrn == null || arrn2 == null) {
                this.a(false);
                return this;
            }
            if (arrn.length != arrn2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrn.length && this.b; ++i2) {
                this.a(arrn[i2], arrn2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(long[] arrl, long[] arrl2) {
        if (this.b && arrl != arrl2) {
            if (arrl == null || arrl2 == null) {
                this.a(false);
                return this;
            }
            if (arrl.length != arrl2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrl.length && this.b; ++i2) {
                this.a(arrl[i2], arrl2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(Object[] arrobject, Object[] arrobject2) {
        if (this.b && arrobject != arrobject2) {
            if (arrobject == null || arrobject2 == null) {
                this.a(false);
                return this;
            }
            if (arrobject.length != arrobject2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrobject.length && this.b; ++i2) {
                this.e(arrobject[i2], arrobject2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(short[] arrs, short[] arrs2) {
        if (this.b && arrs != arrs2) {
            if (arrs == null || arrs2 == null) {
                this.a(false);
                return this;
            }
            if (arrs.length != arrs2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrs.length && this.b; ++i2) {
                this.a(arrs[i2], arrs2[i2]);
            }
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b a(boolean[] arrbl, boolean[] arrbl2) {
        if (this.b && arrbl != arrbl2) {
            if (arrbl == null || arrbl2 == null) {
                this.a(false);
                return this;
            }
            if (arrbl.length != arrbl2.length) {
                this.a(false);
                return this;
            }
            for (int i2 = 0; i2 < arrbl.length && this.b; ++i2) {
                this.a(arrbl[i2], arrbl2[i2]);
            }
        }
        return this;
    }

    protected void a(boolean bl) {
        this.b = bl;
    }

    public boolean b() {
        return this.b;
    }

    /*
     * Enabled aggressive block sorting
     */
    public b e(Object object, Object object2) {
        if (!this.b || object == object2) {
            return this;
        }
        if (object == null || object2 == null) {
            this.a(false);
            return this;
        }
        if (!object.getClass().isArray()) {
            this.b = object.equals(object2);
            return this;
        }
        if (object.getClass() != object2.getClass()) {
            this.a(false);
            return this;
        }
        if (object instanceof long[]) {
            this.a((long[])object, (long[])object2);
            return this;
        }
        if (object instanceof int[]) {
            this.a((int[])object, (int[])object2);
            return this;
        }
        if (object instanceof short[]) {
            this.a((short[])object, (short[])object2);
            return this;
        }
        if (object instanceof char[]) {
            this.a((char[])object, (char[])object2);
            return this;
        }
        if (object instanceof byte[]) {
            this.a((byte[])object, (byte[])object2);
            return this;
        }
        if (object instanceof double[]) {
            this.a((double[])object, (double[])object2);
            return this;
        }
        if (object instanceof float[]) {
            this.a((float[])object, (float[])object2);
            return this;
        }
        if (object instanceof boolean[]) {
            this.a((boolean[])object, (boolean[])object2);
            return this;
        }
        this.a((Object[])object, (Object[])object2);
        return this;
    }
}

