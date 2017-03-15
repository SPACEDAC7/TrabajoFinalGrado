/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.ContextWrapper
 *  android.util.AttributeSet
 *  android.view.LayoutInflater
 *  android.view.View
 *  uk.co.chrisjenx.calligraphy.CalligraphyActivityFactory
 *  uk.co.chrisjenx.calligraphy.CalligraphyLayoutInflater
 */
package uk.co.chrisjenx.calligraphy;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import uk.co.chrisjenx.calligraphy.CalligraphyActivityFactory;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;
import uk.co.chrisjenx.calligraphy.CalligraphyLayoutInflater;

public class CalligraphyContextWrapper
extends ContextWrapper {
    private final int mAttributeId;
    private CalligraphyLayoutInflater mInflater;

    CalligraphyContextWrapper(Context context) {
        super(context);
        this.mAttributeId = CalligraphyConfig.get().getAttrId();
    }

    @Deprecated
    public CalligraphyContextWrapper(Context context, int n2) {
        super(context);
        this.mAttributeId = n2;
    }

    static CalligraphyActivityFactory get(Activity activity) {
        if (!(activity.getLayoutInflater() instanceof CalligraphyLayoutInflater)) {
            throw new RuntimeException("This activity does not wrap the Base Context! See CalligraphyContextWrapper.wrap(Context)");
        }
        return (CalligraphyActivityFactory)activity.getLayoutInflater();
    }

    public static View onActivityCreateView(Activity activity, View view, View view2, String string2, Context context, AttributeSet attributeSet) {
        return CalligraphyContextWrapper.get(activity).onActivityCreateView(view, view2, string2, context, attributeSet);
    }

    public static ContextWrapper wrap(Context context) {
        return new CalligraphyContextWrapper(context);
    }

    public Object getSystemService(String string2) {
        if ("layout_inflater".equals(string2)) {
            if (this.mInflater == null) {
                this.mInflater = new CalligraphyLayoutInflater(LayoutInflater.from((Context)this.getBaseContext()), (Context)this, this.mAttributeId, false);
            }
            return this.mInflater;
        }
        return super.getSystemService(string2);
    }
}

