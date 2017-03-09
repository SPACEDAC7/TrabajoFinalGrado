/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a.a;

final class d {
    private final Object a;
    private final int b;

    public d(Object object) {
        this.b = System.identityHashCode(object);
        this.a = object;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof d)) {
            return false;
        }
        object = (d)object;
        if (this.b != object.b) return false;
        if (this.a != object.a) return false;
        return true;
    }

    public int hashCode() {
        return this.b;
    }
}

