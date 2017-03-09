/*
 * Decompiled with CFR 0_115.
 */
package bolts;

import java.util.ArrayList;
import java.util.List;

public class AggregateException
extends Exception {
    private static final long serialVersionUID = 1;
    private Throwable[] causes;

    /*
     * Enabled aggressive block sorting
     */
    public AggregateException(String string2, Throwable[] arrthrowable) {
        Throwable throwable = arrthrowable != null && arrthrowable.length > 0 ? arrthrowable[0] : null;
        super(string2, throwable);
        if (arrthrowable == null || arrthrowable.length <= 0) {
            arrthrowable = null;
        }
        this.causes = arrthrowable;
    }

    @Deprecated
    public AggregateException(List<Exception> list) {
        this("There were multiple errors.", list.toArray(new Exception[list.size()]));
    }

    public Throwable[] getCauses() {
        return this.causes;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Deprecated
    public List<Exception> getErrors() {
        ArrayList<Exception> arrayList = new ArrayList<Exception>();
        if (this.causes == null) {
            return arrayList;
        }
        Throwable[] arrthrowable = this.causes;
        int n2 = arrthrowable.length;
        int n3 = 0;
        while (n3 < n2) {
            Throwable throwable = arrthrowable[n3];
            if (throwable instanceof Exception) {
                arrayList.add((Exception)throwable);
            } else {
                arrayList.add(new Exception(throwable));
            }
            ++n3;
        }
        return arrayList;
    }
}

