/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.buzzfeed.toolkit.ui;

import android.view.View;

public abstract class DebouncingOnClickListener
implements View.OnClickListener {
    private final Runnable ENABLE_AGAIN;
    private int mDelayedTime = 500;
    private boolean mEnabled = true;

    public DebouncingOnClickListener() {
        this.ENABLE_AGAIN = new Runnable(){

            @Override
            public void run() {
                DebouncingOnClickListener.this.mEnabled = true;
            }
        };
    }

    public abstract void doClick(View var1);

    public final void onClick(View view) {
        if (this.mEnabled) {
            this.mEnabled = false;
            view.postDelayed(this.ENABLE_AGAIN, (long)this.mDelayedTime);
            this.doClick(view);
        }
    }

}

