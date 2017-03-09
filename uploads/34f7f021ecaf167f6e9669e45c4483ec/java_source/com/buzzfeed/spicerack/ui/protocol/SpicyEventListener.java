/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.ui.protocol;

import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.model.subbuzz.ImageSpice;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.FlowItem;

public interface SpicyEventListener {
    public void authorClicked(AuthorContent var1);

    public void onAnalyticsEvent(String var1, String var2);

    public void onImageShare(ImageSpice var1);

    public void onItemDisplayed(FlowItem var1, int var2);

    public void onShareEvent(String var1, String var2);

    public boolean onUrlClicked(String var1, boolean var2);

    public void onViewStateDetermined(SpicyViewState var1);

    public void playYoutube(String var1);

    public void setShareJson(String var1);

    public void viewResponses();
}

