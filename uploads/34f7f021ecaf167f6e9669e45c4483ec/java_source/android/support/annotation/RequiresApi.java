/*
 * Decompiled with CFR 0_115.
 */
package android.support.annotation;

import android.support.annotation.IntRange;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(value=RetentionPolicy.CLASS)
@Target(value={ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
public @interface RequiresApi {
    @IntRange(from=1)
    public int api() default 1;

    @IntRange(from=1)
    public int value() default 1;
}

