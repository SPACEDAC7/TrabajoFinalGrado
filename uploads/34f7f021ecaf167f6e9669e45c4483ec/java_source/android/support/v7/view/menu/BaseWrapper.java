/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.view.menu;

class BaseWrapper<T> {
    final T mWrappedObject;

    BaseWrapper(T t2) {
        if (t2 == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.mWrappedObject = t2;
    }

    public T getWrappedObject() {
        return this.mWrappedObject;
    }
}

