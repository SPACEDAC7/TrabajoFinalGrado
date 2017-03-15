/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.annotation.ThreadSafe
 */
package org.apache.http.params;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.params.AbstractHttpParams;
import org.apache.http.params.HttpParams;

@Deprecated
@ThreadSafe
public class BasicHttpParams
extends AbstractHttpParams
implements Serializable,
Cloneable {
    private static final long serialVersionUID = -7086398485908701455L;
    private final Map<String, Object> parameters = new ConcurrentHashMap<String, Object>();

    public void clear() {
        this.parameters.clear();
    }

    public Object clone() throws CloneNotSupportedException {
        BasicHttpParams basicHttpParams = (BasicHttpParams)super.clone();
        this.copyParams(basicHttpParams);
        return basicHttpParams;
    }

    @Override
    public HttpParams copy() {
        try {
            HttpParams httpParams = (HttpParams)this.clone();
            return httpParams;
        }
        catch (CloneNotSupportedException var1_2) {
            throw new UnsupportedOperationException("Cloning not supported");
        }
    }

    public void copyParams(HttpParams httpParams) {
        for (Map.Entry<String, Object> entry : this.parameters.entrySet()) {
            httpParams.setParameter(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public Set<String> getNames() {
        return new HashSet<String>(this.parameters.keySet());
    }

    @Override
    public Object getParameter(String string2) {
        return this.parameters.get(string2);
    }

    public boolean isParameterSet(String string2) {
        if (this.getParameter(string2) != null) {
            return true;
        }
        return false;
    }

    public boolean isParameterSetLocally(String string2) {
        if (this.parameters.get(string2) != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean removeParameter(String string2) {
        if (this.parameters.containsKey(string2)) {
            this.parameters.remove(string2);
            return true;
        }
        return false;
    }

    @Override
    public HttpParams setParameter(String string2, Object object) {
        if (string2 == null) {
            return this;
        }
        if (object != null) {
            this.parameters.put(string2, object);
            return this;
        }
        this.parameters.remove(string2);
        return this;
    }

    public void setParameters(String[] arrstring, Object object) {
        int n2 = arrstring.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            this.setParameter(arrstring[i2], object);
        }
    }
}

