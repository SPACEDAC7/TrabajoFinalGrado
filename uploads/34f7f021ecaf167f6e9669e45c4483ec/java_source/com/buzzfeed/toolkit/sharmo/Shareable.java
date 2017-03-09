/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.sharmo;

import java.io.Serializable;

public interface Shareable
extends Serializable {
    public String getShareUrl();

    public String getSubject();

    public String getText();
}

