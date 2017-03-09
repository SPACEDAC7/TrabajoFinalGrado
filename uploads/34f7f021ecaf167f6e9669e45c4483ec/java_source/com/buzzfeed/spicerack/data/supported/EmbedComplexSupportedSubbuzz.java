/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.supported;

import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.factory.SpiceType;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.data.supported.ComplexSupportedSubbuzz;

public class EmbedComplexSupportedSubbuzz
extends ComplexSupportedSubbuzz {
    private static final String FORM = SpiceType.EMBED.getForm();

    @Override
    public String getForm() {
        return FORM;
    }

    @Override
    public SpicyViewState getSpicyViewState(SubBuzz subBuzz) {
        if (subBuzz.isInstagramEmbed()) {
            return SpicyViewState.PartiallyNative;
        }
        return SpicyViewState.Fallback;
    }
}

