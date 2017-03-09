/*
 * Decompiled with CFR 0_115.
 */
package bolts;

public class Capture<T> {
    private T value;

    public Capture() {
    }

    public Capture(T t2) {
        this.value = t2;
    }

    public T get() {
        return this.value;
    }

    public void set(T t2) {
        this.value = t2;
    }
}

