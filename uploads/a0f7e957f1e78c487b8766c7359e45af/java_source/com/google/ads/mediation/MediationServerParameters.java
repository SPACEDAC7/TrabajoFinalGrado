/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.mediation;

import com.google.ads.util.b;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public abstract class MediationServerParameters {
    protected void a() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void load(Map<String, String> object) throws MappingException {
        HashMap<String, Field> hashMap = new HashMap<String, Field>();
        for (Field field : this.getClass().getFields()) {
            Parameter parameter = (Parameter)field.getAnnotation(Parameter.class);
            if (parameter == null) continue;
            hashMap.put(parameter.name(), field);
        }
        if (hashMap.isEmpty()) {
            b.e("No server options fields detected.  To suppress this message either add a field with the @Parameter annotation, or override the load() method");
        }
        for (Map.Entry entry : object.entrySet()) {
            Field field2 = (Field)hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                }
                catch (IllegalAccessException var6_13) {
                    b.b("Server Option '" + (String)entry.getKey() + "' could not be set: Illegal Access");
                }
                catch (IllegalArgumentException var6_14) {
                    b.b("Server Option '" + (String)entry.getKey() + "' could not be set: Bad Type");
                }
                continue;
            }
            b.e("Unexpected Server Option: " + (String)entry.getKey() + " = '" + (String)entry.getValue() + "'");
        }
        object = null;
        for (Field field3 : hashMap.values()) {
            if (!((Parameter)field3.getAnnotation(Parameter.class)).required()) continue;
            b.b("Required Server Option missing: " + ((Parameter)field3.getAnnotation(Parameter.class)).name());
            StringBuilder stringBuilder = new StringBuilder();
            object = object == null ? "" : (String)object + ", ";
            object = stringBuilder.append((String)object).append(((Parameter)field3.getAnnotation(Parameter.class)).name()).toString();
        }
        if (object != null) {
            throw new MappingException("Required Server Option(s) missing: " + object);
        }
        this.a();
    }

    public static class MappingException
    extends Exception {
        public MappingException(String string2) {
            super(string2);
        }
    }

    @Retention(value=RetentionPolicy.RUNTIME)
    @Target(value={ElementType.FIELD})
    protected static @interface Parameter {
        public String name();

        public boolean required() default 1;
    }

}

