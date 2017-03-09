/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a;

public class a {
    public static final Object[] a = new Object[0];
    public static final Class<?>[] b = new Class[0];
    public static final String[] c = new String[0];
    public static final long[] d = new long[0];
    public static final Long[] e = new Long[0];
    public static final int[] f = new int[0];
    public static final Integer[] g = new Integer[0];
    public static final short[] h = new short[0];
    public static final Short[] i = new Short[0];
    public static final byte[] j = new byte[0];
    public static final Byte[] k = new Byte[0];
    public static final double[] l = new double[0];
    public static final Double[] m = new Double[0];
    public static final float[] n = new float[0];
    public static final Float[] o = new Float[0];
    public static final boolean[] p = new boolean[0];
    public static final Boolean[] q = new Boolean[0];
    public static final char[] r = new char[0];
    public static final Character[] s = new Character[0];

    public static int a(Object[] arrobject, Object object) {
        return a.a(arrobject, object, 0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int a(Object[] arrobject, Object object, int n2) {
        if (arrobject == null) {
            return -1;
        }
        if (n2 < 0) {
            n2 = 0;
        }
        if (object == null) {
            int n3 = n2;
            while (n3 < arrobject.length) {
                n2 = n3;
                if (arrobject[n3] == null) return n2;
                ++n3;
            }
            return -1;
        }
        if (!arrobject.getClass().getComponentType().isInstance(object)) return -1;
        int n4 = n2;
        while (n4 < arrobject.length) {
            n2 = n4;
            if (object.equals(arrobject[n4])) return n2;
            ++n4;
        }
        return -1;
    }

    public static boolean b(Object[] arrobject, Object object) {
        if (a.a(arrobject, object) != -1) {
            return true;
        }
        return false;
    }
}

