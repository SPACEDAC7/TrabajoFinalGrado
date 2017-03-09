/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.model.subbuzz;

import com.buzzfeed.spicerack.data.model.subbuzz.BaseSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import java.util.Stack;

public interface ImageSpice
extends BaseSpice {
    public Stack<SubBuzz.Images.Image> getImageStack();

    public SubBuzz.Images getImages();
}

