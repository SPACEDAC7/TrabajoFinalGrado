/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.toolkit.content.BreakingNewsContent;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BreakingBarCard
extends BaseCard {
    protected ImageView mCaret;
    private Context mContext;
    protected TextView mHeader;
    protected TextView mHeadline;

    public BreakingBarCard(View view) {
        super(view);
        this.mContext = view.getContext();
        this.mHeader = (TextView)UIUtil.findView(view, R.id.breaking_bar_card_header);
        if (VersionUtil.hasLollipop()) {
            this.mHeader.setLetterSpacing(this.mContext.getResources().getDimension(R.dimen.breaking_letter_spacing));
        }
        this.mHeadline = (TextView)UIUtil.findView(view, R.id.breaking_bar_card_headline);
        this.mCaret = (ImageView)UIUtil.findView(view, R.id.breaking_bar_card_caret);
    }

    private String extractUrlFromContent(String string2) {
        Matcher matcher = Pattern.compile("href=\"(.*?)\"").matcher(string2);
        string2 = null;
        if (matcher.find()) {
            string2 = matcher.group(1);
        }
        return string2;
    }

    private String getUrl(BreakingNewsContent breakingNewsContent) {
        String string2;
        String string3 = string2 = breakingNewsContent.getUrl();
        if (string2 == null) {
            string3 = this.extractUrlFromContent(breakingNewsContent.getNewsAlert());
        }
        return string3;
    }

    private String removeUrlFromContent(String string2) {
        int n2 = string2.indexOf("<");
        int n3 = string2.indexOf(">");
        if (n2 < 0 || n3 < 0) {
            return string2;
        }
        String string3 = string2.substring(0, n2);
        string2 = string2.substring(n3 + 1, string2.length());
        return (string3 + string2).replace("</a>", "");
    }

    private void setupClickListeners(final FlowItem flowItem, final String string2) {
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (BreakingBarCard.this.getBuffetEventListener() != null) {
                    BreakingBarCard.this.getBuffetEventListener().onBreakingNewsLinkClicked(flowItem, string2);
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void populateFrom(FlowItem object) {
        Object object2 = (BreakingNewsContent)object.getContent();
        String string2 = object2.getNewsAlert();
        object2 = this.getUrl((BreakingNewsContent)object2);
        this.setupClickListeners((FlowItem)object, (String)object2);
        int n2 = this.mContext.getResources().getDimensionPixelOffset(R.dimen.padding_large);
        if (object2 != null) {
            this.itemView.setClickable(true);
            this.mCaret.setVisibility(0);
            this.mHeadline.setPadding(n2, n2, 0, n2);
        } else {
            this.itemView.setClickable(false);
            this.mCaret.setVisibility(8);
            this.mHeadline.setPadding(n2, n2, n2, n2);
        }
        object = this.removeUrlFromContent(string2);
        this.mHeadline.setText((CharSequence)object);
    }

}

