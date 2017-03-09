/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a;

import java.io.Serializable;

public class b {
    public static final a a = new a();

    @Deprecated
    public static boolean a(Object object, Object object2) {
        if (object == object2) {
            return true;
        }
        if (object == null || object2 == null) {
            return false;
        }
        return object.equals(object2);
    }

    public static class a
    implements Serializable {
        a() {
        }
    }

}

