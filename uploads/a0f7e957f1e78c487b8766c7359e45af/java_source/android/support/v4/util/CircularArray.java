/*
 * Decompiled with CFR 0_115.
 */
package android.support.v4.util;

public class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    public CircularArray(int n2) {
        if (n2 <= 0) {
            throw new IllegalArgumentException("capacity must be positive");
        }
        int n3 = n2;
        if (Integer.bitCount(n2) != 1) {
            n3 = 1 << Integer.highestOneBit(n2) + 1;
        }
        this.mCapacityBitmask = n3 - 1;
        this.mElements = new Object[n3];
    }

    private void doubleCapacity() {
        int n2 = this.mElements.length;
        int n3 = n2 - this.mHead;
        int n4 = n2 << 1;
        if (n4 < 0) {
            throw new RuntimeException("Too big");
        }
        Object[] arrobject = new Object[n4];
        System.arraycopy(this.mElements, this.mHead, arrobject, 0, n3);
        System.arraycopy(this.mElements, 0, arrobject, n3, this.mHead);
        this.mElements = arrobject;
        this.mHead = 0;
        this.mTail = n2;
        this.mCapacityBitmask = n4 - 1;
    }

    public final void addFirst(E e2) {
        this.mHead = this.mHead - 1 & this.mCapacityBitmask;
        this.mElements[this.mHead] = e2;
        if (this.mHead == this.mTail) {
            this.doubleCapacity();
        }
    }

    public final void addLast(E e2) {
        this.mElements[this.mTail] = e2;
        this.mTail = this.mTail + 1 & this.mCapacityBitmask;
        if (this.mTail == this.mHead) {
            this.doubleCapacity();
        }
    }

    public final E get(int n2) {
        if (n2 < 0 || n2 >= this.size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int n3 = this.mHead;
        int n4 = this.mCapacityBitmask;
        return this.mElements[n3 + n2 & n4];
    }

    public final E getFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mHead];
    }

    public final E getLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mTail - 1 & this.mCapacityBitmask];
    }

    public final boolean isEmpty() {
        if (this.mHead == this.mTail) {
            return true;
        }
        return false;
    }

    public final E popFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E e2 = this.mElements[this.mHead];
        this.mElements[this.mHead] = null;
        this.mHead = this.mHead + 1 & this.mCapacityBitmask;
        return e2;
    }

    public final E popLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int n2 = this.mTail - 1 & this.mCapacityBitmask;
        E e2 = this.mElements[n2];
        this.mElements[n2] = null;
        this.mTail = n2;
        return e2;
    }

    public final int size() {
        return this.mTail - this.mHead & this.mCapacityBitmask;
    }
}

