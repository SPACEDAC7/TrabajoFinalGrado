/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a.b;

import a.a.a.a.b.a;
import java.io.Serializable;
import java.util.Map;

public abstract class b<L, R>
implements Serializable,
Comparable<b<L, R>>,
Map.Entry<L, R> {
    public static <L, R> b<L, R> a(L l2, R r2) {
        return new a<L, R>(l2, r2);
    }

    public int a(b<L, R> b2) {
        return new a.a.a.a.a.a().a(this.a(), b2.a()).a(this.b(), b2.b()).a();
    }

    public abstract L a();

    public abstract R b();

    @Override
    public /* synthetic */ int compareTo(Object object) {
        return this.a((b)object);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Map.Entry)) return false;
        object = (Map.Entry)object;
        if (!a.a.a.a.b.a(this.getKey(), object.getKey())) return false;
        if (a.a.a.a.b.a(this.getValue(), object.getValue())) return true;
        return false;
    }

    @Override
    public final L getKey() {
        return this.a();
    }

    @Override
    public R getValue() {
        return this.b();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int hashCode() {
        int n2 = 0;
        int n3 = this.getKey() == null ? 0 : this.getKey().hashCode();
        if (this.getValue() == null) {
            return n3 ^ n2;
        }
        n2 = this.getValue().hashCode();
        return n3 ^ n2;
    }

    public String toString() {
        return "" + '(' + this.a() + ',' + this.b() + ')';
    }
}

