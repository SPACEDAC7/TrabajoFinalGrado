/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.text.format.DateUtils
 *  android.text.method.MovementMethod
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.method.MovementMethod;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListenerProvider;
import com.buzzfeed.spicerack.ui.utils.MarkdownConverter;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.ui.CallbackLinkMovementMethod;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Date;

public abstract class BaseViewHolder
extends RecyclerView.ViewHolder {
    private SpicyEventListenerProvider mSpicyEventListenerProvider;

    public BaseViewHolder(View view) {
        super(view);
    }

    private void setTextViewText(TextView textView, String string2, boolean bl) {
        if (textView == null) {
            return;
        }
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            if (bl) {
                CallbackLinkMovementMethod callbackLinkMovementMethod = new CallbackLinkMovementMethod(new CallbackLinkMovementMethod.LinkClickListener(){

                    @Override
                    public void onLinkClicked(String string2) {
                        if (BaseViewHolder.this.getSpicyEventListener() != null) {
                            BaseViewHolder.this.getSpicyEventListener().onUrlClicked(string2, false);
                        }
                    }
                });
                textView.setText(MarkdownConverter.spannedFromMarkdown(this.itemView.getContext(), string2));
                textView.setMovementMethod((MovementMethod)callbackLinkMovementMethod);
                UIUtil.stripUnderlines(textView);
                return;
            }
            textView.setText((CharSequence)string2);
            return;
        }
        textView.setText((CharSequence)"");
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateTextViewVisibility(TextView textView) {
        int n2 = textView.getText() == null || textView.getText().length() == 0 ? 8 : 0;
        textView.setVisibility(n2);
    }

    protected SpicyEventListener getSpicyEventListener() {
        return this.mSpicyEventListenerProvider.getSpicyEventListener();
    }

    public void onAttachedToWindow(SpicyEventListenerProvider spicyEventListenerProvider, boolean bl) {
        this.mSpicyEventListenerProvider = spicyEventListenerProvider;
        if (bl) {
            this.showContent();
        }
    }

    public void onDetachedToWindow(SpicyEventListenerProvider spicyEventListenerProvider) {
        this.mSpicyEventListenerProvider = spicyEventListenerProvider;
    }

    public void populateFrom(Content content) {
    }

    protected String setDate(long l2) {
        return this.setDateMilliseconds(1000 * l2);
    }

    protected String setDate(Date date) {
        if (date == null) {
            return "";
        }
        return DateUtils.formatDateTime((Context)this.itemView.getContext(), (long)date.getTime(), (int)65557);
    }

    protected String setDateMilliseconds(long l2) {
        return this.setDate(new Date(l2));
    }

    protected void setText(TextView textView, String string2, boolean bl) {
        this.setTextViewText(textView, string2, bl);
        this.updateTextViewVisibility(textView);
    }

    protected void setTextIgnoreVisibility(TextView textView, String string2, boolean bl) {
        this.setTextViewText(textView, string2, bl);
    }

    protected void showContent() {
    }

}

