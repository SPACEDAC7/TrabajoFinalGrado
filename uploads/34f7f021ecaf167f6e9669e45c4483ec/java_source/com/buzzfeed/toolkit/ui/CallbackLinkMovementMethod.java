/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.Layout
 *  android.text.Spannable
 *  android.text.method.LinkMovementMethod
 *  android.text.style.URLSpan
 *  android.view.MotionEvent
 *  android.widget.TextView
 */
package com.buzzfeed.toolkit.ui;

import android.text.Layout;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;

public class CallbackLinkMovementMethod
extends LinkMovementMethod {
    private LinkClickListener listener;

    public CallbackLinkMovementMethod(LinkClickListener linkClickListener) {
        this.listener = linkClickListener;
    }

    public boolean onTouchEvent(TextView arruRLSpan, Spannable spannable, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            int n2 = (int)motionEvent.getX();
            int n3 = (int)motionEvent.getY();
            int n4 = arruRLSpan.getTotalPaddingLeft();
            int n5 = arruRLSpan.getTotalPaddingTop();
            int n6 = arruRLSpan.getScrollX();
            int n7 = arruRLSpan.getScrollY();
            arruRLSpan = arruRLSpan.getLayout();
            n2 = arruRLSpan.getOffsetForHorizontal(arruRLSpan.getLineForVertical(n3 - n5 + n7), (float)(n2 - n4 + n6));
            arruRLSpan = (URLSpan[])spannable.getSpans(n2, n2, (Class)URLSpan.class);
            if (arruRLSpan.length != 0) {
                arruRLSpan = arruRLSpan[0].getURL();
                this.listener.onLinkClicked((String)arruRLSpan);
                return true;
            }
        }
        return false;
    }

    public static interface LinkClickListener {
        public void onLinkClicked(String var1);
    }

}

