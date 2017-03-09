/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.widget;

import java.util.ArrayList;

class PositionMap<E>
implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage = false;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public PositionMap() {
        this(10);
    }

    /*
     * Enabled aggressive block sorting
     */
    public PositionMap(int n2) {
        if (n2 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            n2 = PositionMap.idealIntArraySize(n2);
            this.mKeys = new int[n2];
            this.mValues = new Object[n2];
        }
        this.mSize = 0;
    }

    private void gc() {
        int n2 = this.mSize;
        int n3 = 0;
        int[] arrn = this.mKeys;
        Object[] arrobject = this.mValues;
        for (int i2 = 0; i2 < n2; ++i2) {
            Object object = arrobject[i2];
            int n4 = n3;
            if (object != DELETED) {
                if (i2 != n3) {
                    arrn[n3] = arrn[i2];
                    arrobject[n3] = object;
                    arrobject[i2] = null;
                }
                n4 = n3 + 1;
            }
            n3 = n4;
        }
        this.mGarbage = false;
        this.mSize = n3;
    }

    static int idealBooleanArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static int idealByteArraySize(int n2) {
        int n3 = 4;
        do {
            int n4 = n2;
            if (n3 >= 32) return n4;
            if (n2 <= (1 << n3) - 12) {
                return (1 << n3) - 12;
            }
            ++n3;
        } while (true);
    }

    static int idealCharArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2 * 2) / 2;
    }

    static int idealFloatArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2 * 4) / 4;
    }

    static int idealIntArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2 * 4) / 4;
    }

    static int idealLongArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2 * 8) / 8;
    }

    static int idealObjectArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2 * 4) / 4;
    }

    static int idealShortArraySize(int n2) {
        return PositionMap.idealByteArraySize(n2 * 2) / 2;
    }

    public void append(int n2, E e2) {
        int n3;
        if (this.mSize != 0 && n2 <= this.mKeys[this.mSize - 1]) {
            this.put(n2, e2);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            this.gc();
        }
        if ((n3 = this.mSize) >= this.mKeys.length) {
            int n4 = PositionMap.idealIntArraySize(n3 + 1);
            int[] arrn = new int[n4];
            Object[] arrobject = new Object[n4];
            System.arraycopy(this.mKeys, 0, arrn, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, arrobject, 0, this.mValues.length);
            this.mKeys = arrn;
            this.mValues = arrobject;
        }
        this.mKeys[n3] = n2;
        this.mValues[n3] = e2;
        this.mSize = n3 + 1;
    }

    public void clear() {
        int n2 = this.mSize;
        Object[] arrobject = this.mValues;
        for (int i2 = 0; i2 < n2; ++i2) {
            arrobject[i2] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public PositionMap<E> clone() {
        PositionMap positionMap;
        PositionMap positionMap2 = null;
        try {
            positionMap2 = positionMap = (PositionMap)super.clone();
        }
        catch (CloneNotSupportedException var2_3) {
            return positionMap2;
        }
        positionMap.mKeys = (int[])this.mKeys.clone();
        positionMap2 = positionMap;
        positionMap.mValues = (Object[])this.mValues.clone();
        return positionMap;
    }

    public void delete(int n2) {
        if ((n2 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, n2)) >= 0 && this.mValues[n2] != DELETED) {
            this.mValues[n2] = DELETED;
            this.mGarbage = true;
        }
    }

    public E get(int n2) {
        return this.get(n2, null);
    }

    public E get(int n2, E e2) {
        if ((n2 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, n2)) < 0 || this.mValues[n2] == DELETED) {
            return e2;
        }
        return (E)this.mValues[n2];
    }

    public int indexOfKey(int n2) {
        if (this.mGarbage) {
            this.gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, n2);
    }

    public int indexOfValue(E e2) {
        if (this.mGarbage) {
            this.gc();
        }
        for (int i2 = 0; i2 < this.mSize; ++i2) {
            if (this.mValues[i2] != e2) continue;
            return i2;
        }
        return -1;
    }

    public void insertKeyRange(int n2, int n3) {
    }

    public int keyAt(int n2) {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mKeys[n2];
    }

    public void put(int n2, E e2) {
        int n3 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, n2);
        if (n3 >= 0) {
            this.mValues[n3] = e2;
            return;
        }
        int n4 = ~ n3;
        if (n4 < this.mSize && this.mValues[n4] == DELETED) {
            this.mKeys[n4] = n2;
            this.mValues[n4] = e2;
            return;
        }
        n3 = n4;
        if (this.mGarbage) {
            n3 = n4;
            if (this.mSize >= this.mKeys.length) {
                this.gc();
                n3 = ~ ContainerHelpers.binarySearch(this.mKeys, this.mSize, n2);
            }
        }
        if (this.mSize >= this.mKeys.length) {
            n4 = PositionMap.idealIntArraySize(this.mSize + 1);
            int[] arrn = new int[n4];
            Object[] arrobject = new Object[n4];
            System.arraycopy(this.mKeys, 0, arrn, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, arrobject, 0, this.mValues.length);
            this.mKeys = arrn;
            this.mValues = arrobject;
        }
        if (this.mSize - n3 != 0) {
            System.arraycopy(this.mKeys, n3, this.mKeys, n3 + 1, this.mSize - n3);
            System.arraycopy(this.mValues, n3, this.mValues, n3 + 1, this.mSize - n3);
        }
        this.mKeys[n3] = n2;
        this.mValues[n3] = e2;
        ++this.mSize;
    }

    public void remove(int n2) {
        this.delete(n2);
    }

    public void removeAt(int n2) {
        if (this.mValues[n2] != DELETED) {
            this.mValues[n2] = DELETED;
            this.mGarbage = true;
        }
    }

    public void removeAtRange(int n2, int n3) {
        n3 = Math.min(this.mSize, n2 + n3);
        while (n2 < n3) {
            this.removeAt(n2);
            ++n2;
        }
    }

    public void removeKeyRange(ArrayList<E> arrayList, int n2, int n3) {
    }

    public void setValueAt(int n2, E e2) {
        if (this.mGarbage) {
            this.gc();
        }
        this.mValues[n2] = e2;
    }

    public int size() {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mSize;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        if (this.size() <= 0) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.mSize * 28);
        stringBuilder.append('{');
        int n2 = 0;
        do {
            if (n2 >= this.mSize) {
                stringBuilder.append('}');
                return stringBuilder.toString();
            }
            if (n2 > 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(this.keyAt(n2));
            stringBuilder.append('=');
            E e2 = this.valueAt(n2);
            if (e2 != this) {
                stringBuilder.append(e2);
            } else {
                stringBuilder.append("(this Map)");
            }
            ++n2;
        } while (true);
    }

    public E valueAt(int n2) {
        if (this.mGarbage) {
            this.gc();
        }
        return (E)this.mValues[n2];
    }

    static class ContainerHelpers {
        static final boolean[] EMPTY_BOOLEANS = new boolean[0];
        static final int[] EMPTY_INTS = new int[0];
        static final long[] EMPTY_LONGS = new long[0];
        static final Object[] EMPTY_OBJECTS = new Object[0];

        ContainerHelpers() {
        }

        static int binarySearch(int[] arrn, int n2, int n3) {
            int n4;
            block3 : {
                n4 = 0;
                int n5 = n2 - 1;
                n2 = n4;
                n4 = n5;
                while (n2 <= n4) {
                    n5 = n2 + n4 >>> 1;
                    int n6 = arrn[n5];
                    if (n6 < n3) {
                        n2 = n5 + 1;
                        continue;
                    }
                    n4 = n5;
                    if (n6 > n3) {
                        n4 = n5 - 1;
                        continue;
                    }
                    break block3;
                }
                n4 = ~ n2;
            }
            return n4;
        }
    }

}

