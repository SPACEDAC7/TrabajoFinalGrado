/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.applications;

import com.comscore.analytics.Core;
import com.comscore.applications.ApplicationMeasurement;
import com.comscore.applications.EventType;
import com.comscore.measurement.Label;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class AggregateMeasurement
extends ApplicationMeasurement {
    protected AggregateMeasurement(Core core, EventType eventType, String string2) {
        super(core, eventType, string2);
    }

    private Boolean a(String string2) {
        for (int i2 = 0; i2 < string2.length(); ++i2) {
            if ("0123456789".contains("" + string2.charAt(i2))) continue;
            return false;
        }
        return true;
    }

    private Boolean b(String string2) {
        if (string2 == null) {
            return false;
        }
        if (!string2.contains(",")) {
            return false;
        }
        if (!string2.contains(" ")) {
            return true;
        }
        return false;
    }

    private Boolean b(String string2, String string3) {
        return string2.contains(string3);
    }

    private String c(String object, String charSequence) {
        charSequence = new StringBuilder((String)charSequence);
        for (String string2 : this.c((String)object)) {
            if (!charSequence.toString().contains(string2)) {
                if (charSequence.toString().equals("")) {
                    charSequence.append(string2).append(":1");
                    continue;
                }
                charSequence.append(";").append(string2).append(":1");
                continue;
            }
            String[] arrstring = charSequence.toString().split(";");
            for (int i2 = 0; i2 < arrstring.length; ++i2) {
                if (!arrstring[i2].contains(string2)) continue;
                Object object2 = arrstring[i2].split(":");
                int n2 = Integer.valueOf(object2[1]);
                object2 = object2[0] + ":" + Integer.valueOf(n2 + 1);
                charSequence.replace(charSequence.indexOf(arrstring[i2]), charSequence.indexOf(arrstring[i2]) + arrstring[i2].length(), (String)object2);
            }
        }
        return charSequence.toString();
    }

    private List<String> c(String arrstring) {
        arrstring = arrstring.split(",");
        ArrayList<String> arrayList = new ArrayList<String>();
        for (int i2 = 0; i2 < arrstring.length; ++i2) {
            arrayList.add(arrstring[i2]);
        }
        return arrayList;
    }

    public void aggregateLabels(List<Label> object) {
        object = object.iterator();
        while (object.hasNext()) {
            Object object2 = (Label)object.next();
            Object object3 = (Label)this.a.get(object2.name);
            if (object3 == null) {
                if (this.b(object2.value).booleanValue()) {
                    object3 = this.c(object2.value, "");
                    this.setLabel(object2.name, (String)object3, true);
                    continue;
                }
                this.setLabel((Label)object2);
                continue;
            }
            if (this.a(object3.value).booleanValue() && this.a(object2.value).booleanValue()) {
                int n2 = Integer.valueOf(object3.value);
                int n3 = Integer.valueOf(object2.value);
                this.setLabel(object3.name, Integer.valueOf(n3 + n2).toString(), true);
                continue;
            }
            if (this.b(object2.value).booleanValue()) {
                object3 = this.c(object2.value, object3.value);
                this.setLabel(object2.name, (String)object3, true);
                continue;
            }
            if (this.b(object3.value, object2.value).booleanValue()) continue;
            object2 = object3.value + "," + object2.value;
            this.setLabel(object3.name, (String)object2, true);
        }
    }

    public void formatLists() {
        Object object = new ArrayList();
        for (Label label : this.a.values()) {
            if (!this.b(label.value).booleanValue()) continue;
            object.add(label);
        }
        object = object.iterator();
        while (object.hasNext()) {
            Label label2 = (Label)object.next();
            this.setLabel(label2.name, this.c(label2.value, ""), true);
        }
    }

    public List<Label> getAggregateLabels() {
        ArrayList<Label> arrayList = new ArrayList<Label>();
        for (Label label : this.a.values()) {
            if (!label.aggregate.booleanValue()) continue;
            arrayList.add(label);
        }
        return arrayList;
    }
}

