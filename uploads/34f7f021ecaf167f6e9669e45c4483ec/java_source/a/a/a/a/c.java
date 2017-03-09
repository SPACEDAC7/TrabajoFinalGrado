/*
 * Decompiled with CFR 0_115.
 */
package a.a.a.a;

public class c {
    public static /* varargs */ void a(boolean bl, String string2, Object ... arrobject) {
        if (!bl) {
            throw new IllegalArgumentException(String.format(string2, arrobject));
        }
    }
}

