/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a.a;

import java.util.Comparator;

public class a {
    private int a = 0;

    public int a() {
        return this.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(byte by, byte by2) {
        if (this.a != 0) {
            return this;
        }
        by = by < by2 ? (byte)-1 : (by > by2 ? 1 : 0);
        this.a = by;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(char c2, char c3) {
        if (this.a != 0) {
            return this;
        }
        c2 = c2 < c3 ? (char)-1 : (c2 > c3 ? '\u0001' : '\u0000');
        this.a = c2;
        return this;
    }

    public a a(double d2, double d3) {
        if (this.a != 0) {
            return this;
        }
        this.a = Double.compare(d2, d3);
        return this;
    }

    public a a(float f2, float f3) {
        if (this.a != 0) {
            return this;
        }
        this.a = Float.compare(f2, f3);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(int n2, int n3) {
        if (this.a != 0) {
            return this;
        }
        n2 = n2 < n3 ? -1 : (n2 > n3 ? 1 : 0);
        this.a = n2;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(long l2, long l3) {
        if (this.a != 0) {
            return this;
        }
        int n2 = l2 < l3 ? -1 : (l2 > l3 ? 1 : 0);
        this.a = n2;
        return this;
    }

    public a a(Object object, Object object2) {
        return this.a(object, object2, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(Object object, Object object2, Comparator<?> comparator) {
        if (this.a != 0 || object == object2) {
            return this;
        }
        if (object == null) {
            this.a = -1;
            return this;
        }
        if (object2 == null) {
            this.a = 1;
            return this;
        }
        if (object.getClass().isArray()) {
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
            this.a((Object[])object, (Object[])object2, comparator);
            return this;
        }
        if (comparator == null) {
            this.a = ((Comparable)object).compareTo(object2);
            return this;
        }
        this.a = comparator.compare((Object)object, (Object)object2);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(short s2, short s3) {
        if (this.a != 0) {
            return this;
        }
        s2 = s2 < s3 ? (short)-1 : (s2 > s3 ? 1 : 0);
        this.a = s2;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public a a(boolean bl, boolean bl2) {
        if (this.a != 0 || bl == bl2) {
            return this;
        }
        if (!bl) {
            this.a = -1;
            return this;
        }
        this.a = 1;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(byte[] arrby, byte[] arrby2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrby == arrby2) return this;
        if (arrby == null) {
            this.a = -1;
            return this;
        }
        if (arrby2 == null) {
            this.a = 1;
            return this;
        }
        if (arrby.length != arrby2.length) {
            if (arrby.length >= arrby2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrby.length) {
            if (this.a != 0) return this;
            this.a(arrby[n2], arrby2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(char[] arrc, char[] arrc2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrc == arrc2) return this;
        if (arrc == null) {
            this.a = -1;
            return this;
        }
        if (arrc2 == null) {
            this.a = 1;
            return this;
        }
        if (arrc.length != arrc2.length) {
            if (arrc.length >= arrc2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrc.length) {
            if (this.a != 0) return this;
            this.a(arrc[n2], arrc2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(double[] arrd, double[] arrd2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrd == arrd2) return this;
        if (arrd == null) {
            this.a = -1;
            return this;
        }
        if (arrd2 == null) {
            this.a = 1;
            return this;
        }
        if (arrd.length != arrd2.length) {
            if (arrd.length >= arrd2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrd.length) {
            if (this.a != 0) return this;
            this.a(arrd[n2], arrd2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(float[] arrf, float[] arrf2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrf == arrf2) return this;
        if (arrf == null) {
            this.a = -1;
            return this;
        }
        if (arrf2 == null) {
            this.a = 1;
            return this;
        }
        if (arrf.length != arrf2.length) {
            if (arrf.length >= arrf2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrf.length) {
            if (this.a != 0) return this;
            this.a(arrf[n2], arrf2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(int[] arrn, int[] arrn2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrn == arrn2) return this;
        if (arrn == null) {
            this.a = -1;
            return this;
        }
        if (arrn2 == null) {
            this.a = 1;
            return this;
        }
        if (arrn.length != arrn2.length) {
            if (arrn.length >= arrn2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrn.length) {
            if (this.a != 0) return this;
            this.a(arrn[n2], arrn2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(long[] arrl, long[] arrl2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrl == arrl2) return this;
        if (arrl == null) {
            this.a = -1;
            return this;
        }
        if (arrl2 == null) {
            this.a = 1;
            return this;
        }
        if (arrl.length != arrl2.length) {
            if (arrl.length >= arrl2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrl.length) {
            if (this.a != 0) return this;
            this.a(arrl[n2], arrl2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(Object[] arrobject, Object[] arrobject2, Comparator<?> comparator) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrobject == arrobject2) return this;
        if (arrobject == null) {
            this.a = -1;
            return this;
        }
        if (arrobject2 == null) {
            this.a = 1;
            return this;
        }
        if (arrobject.length != arrobject2.length) {
            if (arrobject.length >= arrobject2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrobject.length) {
            if (this.a != 0) return this;
            this.a(arrobject[n2], arrobject2[n2], comparator);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(short[] arrs, short[] arrs2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrs == arrs2) return this;
        if (arrs == null) {
            this.a = -1;
            return this;
        }
        if (arrs2 == null) {
            this.a = 1;
            return this;
        }
        if (arrs.length != arrs2.length) {
            if (arrs.length >= arrs2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrs.length) {
            if (this.a != 0) return this;
            this.a(arrs[n2], arrs2[n2]);
            ++n2;
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public a a(boolean[] arrbl, boolean[] arrbl2) {
        int n2 = -1;
        if (this.a != 0) {
            return this;
        }
        if (arrbl == arrbl2) return this;
        if (arrbl == null) {
            this.a = -1;
            return this;
        }
        if (arrbl2 == null) {
            this.a = 1;
            return this;
        }
        if (arrbl.length != arrbl2.length) {
            if (arrbl.length >= arrbl2.length) {
                n2 = 1;
            }
            this.a = n2;
            return this;
        }
        n2 = 0;
        while (n2 < arrbl.length) {
            if (this.a != 0) return this;
            this.a(arrbl[n2], arrbl2[n2]);
            ++n2;
        }
        return this;
    }
}

