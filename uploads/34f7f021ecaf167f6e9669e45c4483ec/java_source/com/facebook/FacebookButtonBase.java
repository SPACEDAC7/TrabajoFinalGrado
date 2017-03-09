/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.ContextWrapper
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Typeface
 *  android.os.Bundle
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.Button
 */
package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.R;
import com.facebook.appevents.AppEventsLogger;

public abstract class FacebookButtonBase
extends Button {
    private String analyticsButtonCreatedEventName;
    private View.OnClickListener externalOnClickListener;
    private View.OnClickListener internalOnClickListener;
    private Fragment parentFragment;
    private int requestCode;

    protected FacebookButtonBase(Context context, AttributeSet attributeSet, int n2, int n3, String string2, int n4) {
        super(context, attributeSet, 0);
        int n5 = n3;
        if (n3 == 0) {
            n5 = this.getDefaultStyleResource();
        }
        n3 = n5;
        if (n5 == 0) {
            n3 = R.style.com_facebook_button;
        }
        this.configureButton(context, attributeSet, n2, n3);
        this.analyticsButtonCreatedEventName = string2;
        this.requestCode = n4;
    }

    private void logButtonCreated(Context context) {
        AppEventsLogger.newLogger(context).logSdkEvent(this.analyticsButtonCreatedEventName, null, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void parseBackgroundAttributes(Context context, AttributeSet attributeSet, int n2, int n3) {
        context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, n2, n3);
        try {
            if (context.hasValue(0)) {
                n2 = context.getResourceId(0, 0);
                if (n2 != 0) {
                    this.setBackgroundResource(n2);
                    return;
                }
                this.setBackgroundColor(context.getColor(0, 0));
                return;
            }
            this.setBackgroundColor(context.getColor(0, R.color.com_facebook_blue));
            return;
        }
        finally {
            context.recycle();
        }
    }

    private void parseCompoundDrawableAttributes(Context context, AttributeSet attributeSet, int n2, int n3) {
        context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, n2, n3);
        try {
            this.setCompoundDrawablesWithIntrinsicBounds(context.getResourceId(0, 0), context.getResourceId(1, 0), context.getResourceId(2, 0), context.getResourceId(3, 0));
            this.setCompoundDrawablePadding(context.getDimensionPixelSize(4, 0));
            return;
        }
        finally {
            context.recycle();
        }
    }

    private void parseContentAttributes(Context context, AttributeSet attributeSet, int n2, int n3) {
        context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, n2, n3);
        try {
            this.setPadding(context.getDimensionPixelSize(0, 0), context.getDimensionPixelSize(1, 0), context.getDimensionPixelSize(2, 0), context.getDimensionPixelSize(3, 0));
            return;
        }
        finally {
            context.recycle();
        }
    }

    private void parseTextAttributes(Context context, AttributeSet attributeSet, int n2, int n3) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842904}, n2, n3);
        this.setTextColor(typedArray.getColor(0, -1));
        typedArray = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842927}, n2, n3);
        this.setGravity(typedArray.getInt(0, 17));
        context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842901, 16842903, 16843087}, n2, n3);
        try {
            this.setTextSize(0, (float)context.getDimensionPixelSize(0, 0));
            this.setTypeface(Typeface.defaultFromStyle((int)context.getInt(1, 1)));
            this.setText((CharSequence)context.getString(2));
            return;
        }
        finally {
            context.recycle();
        }
    }

    private void setupOnClickListener() {
        super.setOnClickListener(new View.OnClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onClick(View view) {
                if (FacebookButtonBase.this.internalOnClickListener != null) {
                    FacebookButtonBase.this.internalOnClickListener.onClick(view);
                    return;
                } else {
                    if (FacebookButtonBase.this.externalOnClickListener == null) return;
                    {
                        FacebookButtonBase.this.externalOnClickListener.onClick(view);
                        return;
                    }
                }
            }
        });
    }

    protected void callExternalOnClickListener(View view) {
        if (this.externalOnClickListener != null) {
            this.externalOnClickListener.onClick(view);
        }
    }

    protected void configureButton(Context context, AttributeSet attributeSet, int n2, int n3) {
        this.parseBackgroundAttributes(context, attributeSet, n2, n3);
        this.parseCompoundDrawableAttributes(context, attributeSet, n2, n3);
        this.parseContentAttributes(context, attributeSet, n2, n3);
        this.parseTextAttributes(context, attributeSet, n2, n3);
        this.setupOnClickListener();
    }

    protected Activity getActivity() {
        Context context = this.getContext();
        if (context instanceof Activity) {
            return (Activity)context;
        }
        if (context instanceof ContextWrapper && (context = ((ContextWrapper)context).getBaseContext()) instanceof Activity) {
            return (Activity)context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    protected int getDefaultStyleResource() {
        return 0;
    }

    public Fragment getFragment() {
        return this.parentFragment;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.logButtonCreated(this.getContext());
    }

    public void setFragment(Fragment fragment) {
        this.parentFragment = fragment;
    }

    protected void setInternalOnClickListener(View.OnClickListener onClickListener) {
        this.internalOnClickListener = onClickListener;
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.externalOnClickListener = onClickListener;
    }

    protected void setRequestCode(int n2) {
        if (FacebookSdk.isFacebookRequestCode(n2)) {
            throw new IllegalArgumentException("Request code " + n2 + " cannot be within the range reserved by the Facebook SDK.");
        }
        this.requestCode = n2;
    }

}

