/*
 * Decompiled with CFR 0_115.
 */
package android.support.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(value=RetentionPolicy.SOURCE)
@Target(value={ElementType.ANNOTATION_TYPE})
public @interface IntDef {
    public boolean flag() default 0;

    public long[] value() default {};
}

