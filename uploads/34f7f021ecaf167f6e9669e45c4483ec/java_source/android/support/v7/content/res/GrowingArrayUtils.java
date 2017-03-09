/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.content.res;

import java.lang.reflect.Array;

final class GrowingArrayUtils {
    static final /* synthetic */ boolean $assertionsDisabled;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = !GrowingArrayUtils.class.desiredAssertionStatus();
        $assertionsDisabled = bl;
    }

    private GrowingArrayUtils() {
    }

    public static int[] append(int[] arrn, int n2, int n3) {
        if (!$assertionsDisabled && n2 > arrn.length) {
            throw new AssertionError();
        }
        int[] arrn2 = arrn;
        if (n2 + 1 > arrn.length) {
            arrn2 = new int[GrowingArrayUtils.growSize(n2)];
            System.arraycopy(arrn, 0, arrn2, 0, n2);
        }
        arrn2[n2] = n3;
        return arrn2;
    }

    public static long[] append(long[] arrl, int n2, long l2) {
        if (!$assertionsDisabled && n2 > arrl.length) {
            throw new AssertionError();
        }
        long[] arrl2 = arrl;
        if (n2 + 1 > arrl.length) {
            arrl2 = new long[GrowingArrayUtils.growSize(n2)];
            System.arraycopy(arrl, 0, arrl2, 0, n2);
        }
        arrl2[n2] = l2;
        return arrl2;
    }

    public static <T> T[] append(T[] arrT, int n2, T t2) {
        if (!$assertionsDisabled && n2 > arrT.length) {
            throw new AssertionError();
        }
        T[] arrT2 = arrT;
        if (n2 + 1 > arrT.length) {
            arrT2 = (Object[])Array.newInstance(arrT.getClass().getComponentType(), GrowingArrayUtils.growSize(n2));
            System.arraycopy(arrT, 0, arrT2, 0, n2);
        }
        arrT2[n2] = t2;
        return arrT2;
    }

    public static boolean[] append(boolean[] arrbl, int n2, boolean bl) {
        if (!$assertionsDisabled && n2 > arrbl.length) {
            throw new AssertionError();
        }
        boolean[] arrbl2 = arrbl;
        if (n2 + 1 > arrbl.length) {
            arrbl2 = new boolean[GrowingArrayUtils.growSize(n2)];
            System.arraycopy(arrbl, 0, arrbl2, 0, n2);
        }
        arrbl2[n2] = bl;
        return arrbl2;
    }

    public static int growSize(int n2) {
        if (n2 <= 4) {
            return 8;
        }
        return n2 * 2;
    }

    public static int[] insert(int[] arrn, int n2, int n3, int n4) {
        if (!$assertionsDisabled && n2 > arrn.length) {
            throw new AssertionError();
        }
        if (n2 + 1 <= arrn.length) {
            System.arraycopy(arrn, n3, arrn, n3 + 1, n2 - n3);
            arrn[n3] = n4;
            return arrn;
        }
        int[] arrn2 = new int[GrowingArrayUtils.growSize(n2)];
        System.arraycopy(arrn, 0, arrn2, 0, n3);
        arrn2[n3] = n4;
        System.arraycopy(arrn, n3, arrn2, n3 + 1, arrn.length - n3);
        return arrn2;
    }

    public static long[] insert(long[] arrl, int n2, int n3, long l2) {
        if (!$assertionsDisabled && n2 > arrl.length) {
            throw new AssertionError();
        }
        if (n2 + 1 <= arrl.length) {
            System.arraycopy(arrl, n3, arrl, n3 + 1, n2 - n3);
            arrl[n3] = l2;
            return arrl;
        }
        long[] arrl2 = new long[GrowingArrayUtils.growSize(n2)];
        System.arraycopy(arrl, 0, arrl2, 0, n3);
        arrl2[n3] = l2;
        System.arraycopy(arrl, n3, arrl2, n3 + 1, arrl.length - n3);
        return arrl2;
    }

    public static <T> T[] insert(T[] arrT, int n2, int n3, T t2) {
        if (!$assertionsDisabled && n2 > arrT.length) {
            throw new AssertionError();
        }
        if (n2 + 1 <= arrT.length) {
            System.arraycopy(arrT, n3, arrT, n3 + 1, n2 - n3);
            arrT[n3] = t2;
            return arrT;
        }
        Object[] arrobject = (Object[])Array.newInstance(arrT.getClass().getComponentType(), GrowingArrayUtils.growSize(n2));
        System.arraycopy(arrT, 0, arrobject, 0, n3);
        arrobject[n3] = t2;
        System.arraycopy(arrT, n3, arrobject, n3 + 1, arrT.length - n3);
        return arrobject;
    }

    public static boolean[] insert(boolean[] arrbl, int n2, int n3, boolean bl) {
        if (!$assertionsDisabled && n2 > arrbl.length) {
            throw new AssertionError();
        }
        if (n2 + 1 <= arrbl.length) {
            System.arraycopy(arrbl, n3, arrbl, n3 + 1, n2 - n3);
            arrbl[n3] = bl;
            return arrbl;
        }
        boolean[] arrbl2 = new boolean[GrowingArrayUtils.growSize(n2)];
        System.arraycopy(arrbl, 0, arrbl2, 0, n3);
        arrbl2[n3] = bl;
        System.arraycopy(arrbl, n3, arrbl2, n3 + 1, arrbl.length - n3);
        return arrbl2;
    }
}

