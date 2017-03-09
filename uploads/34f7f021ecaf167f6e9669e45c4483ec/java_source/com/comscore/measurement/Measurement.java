/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.measurement;

import com.comscore.analytics.Core;
import com.comscore.measurement.Label;
import com.comscore.measurement.PrivilegedLabel;
import com.comscore.utils.Constants;
import com.comscore.utils.Date;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Measurement {
    protected HashMap<String, Label> a = new HashMap();
    protected String b;
    protected long c;

    protected Measurement(Core core) {
        this.setPixelURL(core.getPixelURL());
        this.c = Date.unixTime();
    }

    protected Boolean a(String string2, long l2) {
        return this.a(string2, Long.toString(l2));
    }

    protected Boolean a(String object, String string2) {
        if ((object = this.a.get(object)) != null) {
            return object.value.equals(string2);
        }
        return false;
    }

    protected void a(Label label) {
        if (this.a.get(label.name) == null) {
            this.a.put(label.name, label);
        }
    }

    protected void a(String string2, String string3, Boolean bl, Boolean bl2) {
        if (bl2.booleanValue()) {
            this.a(new PrivilegedLabel(string2, string3, bl));
            return;
        }
        this.a(new Label(string2, string3, bl));
    }

    protected void a(HashMap<String, String> hashMap) {
        this.a(hashMap, false);
    }

    protected void a(HashMap<String, String> hashMap, boolean bl) {
        if (hashMap != null) {
            for (String string2 : hashMap.keySet()) {
                this.setLabel(string2, hashMap.get(string2), bl);
            }
        }
    }

    protected void b(String string2, String string3, Boolean bl, Boolean bl2) {
        this.removeLabel(string2, bl, bl2);
        this.a(string2, string3, bl, bl2);
    }

    public Label getLabel(String string2) {
        return this.a.get(string2);
    }

    public String getPixelURL() {
        return this.b;
    }

    public Boolean hasLabel(String string2) {
        return this.a.containsKey(string2);
    }

    public void removeLabel(String string2, Boolean bl, Boolean bl2) {
        Label label = this.a.get(string2);
        if (label != null && (!(label instanceof PrivilegedLabel) || bl2.booleanValue() || bl.booleanValue())) {
            this.a.remove(string2);
        }
    }

    public String retrieveLabelsAsString(String[] object) {
        Label label;
        StringBuilder stringBuilder = new StringBuilder();
        HashMap<String, Label> hashMap = new HashMap<String, Label>(this.a);
        int n2 = object.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            Object object2 = object[i2];
            label = hashMap.get(object2);
            if (label == null) continue;
            stringBuilder.append(label.pack());
            hashMap.remove(object2);
        }
        if (object != Constants.LABELS_ORDER) {
            for (String string2 : Constants.LABELS_ORDER) {
                label = hashMap.get(string2);
                if (label == null) continue;
                stringBuilder.append(label.pack());
                hashMap.remove(string2);
            }
        }
        object = hashMap.values().iterator();
        while (object.hasNext()) {
            stringBuilder.append(((Label)object.next()).pack());
        }
        if (stringBuilder.length() > 0 && stringBuilder.charAt(0) == '&') {
            return stringBuilder.substring(1);
        }
        return stringBuilder.toString();
    }

    public void setLabel(Label label) {
        this.removeLabel(label.name, label.aggregate, label instanceof PrivilegedLabel);
        this.a(label);
    }

    public void setLabel(String string2, String string3) {
        this.setLabel(string2, string3, false);
    }

    public void setLabel(String string2, String string3, Boolean bl) {
        this.removeLabel(string2, bl, false);
        this.a(string2, string3, bl, false);
    }

    public void setPixelURL(String string2) {
        this.b = string2;
    }
}

