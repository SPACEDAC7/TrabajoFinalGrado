/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.model.subbuzz;

import com.buzzfeed.spicerack.data.model.subbuzz.BaseSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;

public interface ImageGroupSpice
extends BaseSpice {
    public SubBuzz.ImageRow getRow();

    public boolean hasGif();
}

