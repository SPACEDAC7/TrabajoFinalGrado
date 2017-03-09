/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.util;

public class MultiClassKey {
    private Class<?> first;
    private Class<?> second;

    public MultiClassKey() {
    }

    public MultiClassKey(Class<?> class_, Class<?> class_2) {
        this.set(class_, class_2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) return false;
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (MultiClassKey)object;
        if (!this.first.equals(object.first)) {
            return false;
        }
        if (this.second.equals(object.second)) return true;
        return false;
    }

    public int hashCode() {
        return this.first.hashCode() * 31 + this.second.hashCode();
    }

    public void set(Class<?> class_, Class<?> class_2) {
        this.first = class_;
        this.second = class_2;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.first + ", second=" + this.second + '}';
    }
}

