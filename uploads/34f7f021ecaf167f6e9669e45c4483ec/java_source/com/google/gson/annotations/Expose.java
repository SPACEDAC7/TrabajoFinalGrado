/*
 * Decompiled with CFR 0_115.
 */
package com.google.gson.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(value=RetentionPolicy.RUNTIME)
@Target(value={ElementType.FIELD})
public @interface Expose {
    public boolean deserialize() default 1;

    public boolean serialize() default 1;
}

