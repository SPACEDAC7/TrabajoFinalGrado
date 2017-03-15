/*
 * Decompiled with CFR 0_115.
 */
package org.apache.http.params;

import java.util.Set;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpParamsNames;

@Deprecated
public abstract class AbstractHttpParams
implements HttpParams,
HttpParamsNames {
    protected AbstractHttpParams() {
    }

    @Override
    public boolean getBooleanParameter(String object, boolean bl) {
        if ((object = this.getParameter((String)object)) == null) {
            return bl;
        }
        return (Boolean)object;
    }

    @Override
    public double getDoubleParameter(String object, double d2) {
        if ((object = this.getParameter((String)object)) == null) {
            return d2;
        }
        return (Double)object;
    }

    @Override
    public int getIntParameter(String object, int n2) {
        if ((object = this.getParameter((String)object)) == null) {
            return n2;
        }
        return (Integer)object;
    }

    @Override
    public long getLongParameter(String object, long l2) {
        if ((object = this.getParameter((String)object)) == null) {
            return l2;
        }
        return (Long)object;
    }

    @Override
    public Set<String> getNames() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isParameterFalse(String string2) {
        boolean bl = false;
        if (!this.getBooleanParameter(string2, false)) {
            bl = true;
        }
        return bl;
    }

    @Override
    public boolean isParameterTrue(String string2) {
        return this.getBooleanParameter(string2, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public HttpParams setBooleanParameter(String string2, boolean bl) {
        Boolean bl2 = bl ? Boolean.TRUE : Boolean.FALSE;
        this.setParameter(string2, bl2);
        return this;
    }

    @Override
    public HttpParams setDoubleParameter(String string2, double d2) {
        this.setParameter(string2, d2);
        return this;
    }

    @Override
    public HttpParams setIntParameter(String string2, int n2) {
        this.setParameter(string2, n2);
        return this;
    }

    @Override
    public HttpParams setLongParameter(String string2, long l2) {
        this.setParameter(string2, l2);
        return this;
    }
}

