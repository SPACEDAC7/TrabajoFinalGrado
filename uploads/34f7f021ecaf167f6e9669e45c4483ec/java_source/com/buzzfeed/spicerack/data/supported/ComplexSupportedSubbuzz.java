/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.supported;

import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;

public abstract class ComplexSupportedSubbuzz {
    abstract String getForm();

    abstract SpicyViewState getSpicyViewState(SubBuzz var1);

    boolean matchesForm(String string2) {
        return this.getForm().equals(string2);
    }
}

