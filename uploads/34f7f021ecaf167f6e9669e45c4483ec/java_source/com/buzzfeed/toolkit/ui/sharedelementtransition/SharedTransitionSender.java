/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.ui.sharedelementtransition;

import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionElement;
import java.util.HashMap;

public class SharedTransitionSender {
    private HashMap<String, SharedTransitionElement> mElements;

    public SharedTransitionSender(HashMap<String, SharedTransitionElement> hashMap) {
        this.mElements = hashMap;
    }

    public SharedTransitionElement getElementForKey(String string2) {
        return this.mElements.get(string2);
    }
}

