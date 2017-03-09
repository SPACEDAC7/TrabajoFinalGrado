/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.spicerack.data.supported;

import android.content.Context;
import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.factory.SpiceType;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.data.supported.ComplexSupportedSubbuzz;
import com.buzzfeed.spicerack.ui.utils.SpicyUtil;

public class VideoComplexSupportedSubbuzz
extends ComplexSupportedSubbuzz {
    private static final String FORM = SpiceType.VIDEO.getForm();
    private Context mContext;

    public VideoComplexSupportedSubbuzz(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public String getForm() {
        return FORM;
    }

    @Override
    public SpicyViewState getSpicyViewState(SubBuzz subBuzz) {
        if (SpicyUtil.isYoutubeSubbuzzAndYoutubeAvailable(subBuzz, this.mContext)) {
            return SpicyViewState.Native;
        }
        return SpicyViewState.Fallback;
    }
}

