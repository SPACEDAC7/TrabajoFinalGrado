/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 */
package com.buzzfeed.androidabframework.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

public class Variant
implements Serializable {
    private static final long serialVersionUID = 0;
    @Nullable
    private String mName;

    private Variant() {
    }

    private Variant setName(String string2) throws IllegalArgumentException {
        if (string2 == null) {
            throw new IllegalArgumentException("name parameter cannot be null");
        }
        this.mName = string2;
        return this;
    }

    @NonNull
    public static ArrayList<Variant> variantListFromJson(@NonNull JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            throw new JSONException("variantListJsonArray parameter cannot be null");
        }
        ArrayList<Variant> arrayList = new ArrayList<Variant>();
        for (int i2 = 0; i2 < jSONArray.length(); ++i2) {
            String string2 = jSONArray.get(i2).toString();
            Variant variant = new Variant();
            variant.setName(string2);
            arrayList.add(variant);
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) return false;
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (Variant)object;
        if (this.mName != null) {
            if (this.mName.equals(object.mName)) return true;
            return false;
        }
        if (object.mName == null) return true;
        return false;
    }

    @Nullable
    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        if (this.mName != null) {
            return this.mName.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "Variant{name='" + this.mName + '\'' + '}';
    }
}

