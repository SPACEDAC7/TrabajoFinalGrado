/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.text.Html
 *  android.text.Spannable
 *  android.text.SpannableString
 *  android.text.style.QuoteSpan
 */
package com.buzzfeed.spicerack.ui.utils;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.QuoteSpan;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.ui.utils.CustomQuoteSpan;
import com.buzzfeed.toolkit.util.MarkdownUtil;
import com.commonsware.cwac.anddown.AndDown;

public class MarkdownConverter {
    private MarkdownConverter() {
    }

    public static String fromMarkdown(String string2) {
        return MarkdownUtil.convertHtmlTags(new AndDown().markdownToHtml(string2));
    }

    public static String fromMarkdownWithPreprocessing(String string2) {
        return MarkdownConverter.fromMarkdown(MarkdownUtil.preprocessMarkdown(string2));
    }

    private static void replaceQuoteSpans(Context context, Spannable spannable) {
        for (QuoteSpan quoteSpan : (QuoteSpan[])spannable.getSpans(0, spannable.length(), (Class)QuoteSpan.class)) {
            int n2 = spannable.getSpanStart((Object)quoteSpan);
            int n3 = spannable.getSpanEnd((Object)quoteSpan);
            int n4 = spannable.getSpanFlags((Object)quoteSpan);
            spannable.removeSpan((Object)quoteSpan);
            spannable.setSpan((Object)new CustomQuoteSpan(context.getResources().getColor(17170445), context.getResources().getColor(R.color.buzzfeed_red), context.getResources().getDimensionPixelSize(R.dimen.block_quote_strip_size), context.getResources().getDimensionPixelSize(R.dimen.padding_medium)), n2, n3, n4);
        }
    }

    public static CharSequence spannedFromMarkdown(Context context, String string2) {
        string2 = new SpannableString((CharSequence)Html.fromHtml((String)MarkdownConverter.fromMarkdownWithPreprocessing(string2)));
        MarkdownConverter.replaceQuoteSpans(context, (Spannable)string2);
        return MarkdownConverter.trimTrailingWhitespace((Spannable)string2);
    }

    public static CharSequence trimTrailingWhitespace(Spannable spannable) {
        int n2;
        if (spannable == null) {
            return "";
        }
        int n3 = spannable.length();
        while ((n2 = n3 - 1) >= 0) {
            n3 = n2;
            if (Character.isWhitespace(spannable.charAt(n2))) continue;
        }
        return spannable.subSequence(0, n2 + 1);
    }
}

