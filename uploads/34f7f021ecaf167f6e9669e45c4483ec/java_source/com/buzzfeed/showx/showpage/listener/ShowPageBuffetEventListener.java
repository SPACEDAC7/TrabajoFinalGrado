/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.showx.showpage.listener;

import com.buzzfeed.buffet.ui.listener.BuffetEventListener;

public interface ShowPageBuffetEventListener
extends BuffetEventListener {
    public boolean isSubscribedToShow();

    public void onSubscribeButtonClicked();
}

