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
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.data.supported.ComplexSupportedSubbuzz;
import com.buzzfeed.spicerack.data.supported.EmbedComplexSupportedSubbuzz;
import com.buzzfeed.spicerack.data.supported.VideoComplexSupportedSubbuzz;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class SupportedSubbuzzProvider {
    private static final List<String> SIMPLE_SUPPORTED_FORMS;
    private static final String TAG;
    private List<ComplexSupportedSubbuzz> mComplexSupportedForms = new ArrayList<ComplexSupportedSubbuzz>();

    static {
        TAG = SupportedSubbuzzProvider.class.getSimpleName();
        SIMPLE_SUPPORTED_FORMS = Arrays.asList(SpiceType.HEADER.getForm(), SpiceType.LOADING.getForm(), SpiceType.FALLBACK.getForm(), SpiceType.EMPTY.getForm(), SpiceType.SHARE_BAR.getForm(), SpiceType.CUSTOM_BOTTOM.getForm(), SpiceType.TEXT.getForm(), SpiceType.IMAGE_ARTICLE.getForm(), SpiceType.IMAGE_LIST.getForm(), SpiceType.LINK.getForm(), SpiceType.CORRECTION.getForm(), SpiceType.UPDATE.getForm(), SpiceType.TWEET.getForm());
    }

    public SupportedSubbuzzProvider(Context context) {
        this.mComplexSupportedForms.add(new VideoComplexSupportedSubbuzz(context));
        this.mComplexSupportedForms.add(new EmbedComplexSupportedSubbuzz());
    }

    private List<String> getComplexForms() {
        ArrayList<String> arrayList = new ArrayList<String>();
        Iterator<ComplexSupportedSubbuzz> iterator = this.mComplexSupportedForms.iterator();
        while (iterator.hasNext()) {
            arrayList.add(iterator.next().getForm());
        }
        return arrayList;
    }

    private SpicyViewState getViewStateForSubbuzz(SubBuzz subBuzz) {
        if (!subBuzz.isValid()) {
            return SpicyViewState.Fallback;
        }
        if (SIMPLE_SUPPORTED_FORMS.contains(subBuzz.getForm())) {
            return SpicyViewState.Native;
        }
        for (ComplexSupportedSubbuzz complexSupportedSubbuzz : this.mComplexSupportedForms) {
            if (!complexSupportedSubbuzz.matchesForm(subBuzz.getForm())) continue;
            return complexSupportedSubbuzz.getSpicyViewState(subBuzz);
        }
        return SpicyViewState.Fallback;
    }

    public SpicyViewState getSpicyViewState(List<SubBuzz> object) {
        SpicyViewState spicyViewState = SpicyViewState.Native;
        Iterator<SubBuzz> iterator = object.iterator();
        object = spicyViewState;
        while (iterator.hasNext()) {
            SubBuzz subBuzz = iterator.next();
            spicyViewState = this.getViewStateForSubbuzz(subBuzz);
            LogUtil.d(TAG, "spicy view type for form: " + subBuzz.getForm() + " is: " + spicyViewState.toString());
            if (spicyViewState == SpicyViewState.Fallback) {
                return spicyViewState;
            }
            if (spicyViewState != SpicyViewState.PartiallyNative) continue;
            object = spicyViewState;
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    public List<String> getUnsupportedSubbuzzs(SpiceItem iterator) {
        ArrayList<String> arrayList = new ArrayList<String>();
        if (iterator.getSubBuzzes() != null && iterator.getSubBuzzes().size() != 0) {
            List<String> list = this.getComplexForms();
            for (SubBuzz subBuzz : iterator.getSubBuzzes()) {
                if (SIMPLE_SUPPORTED_FORMS.contains(subBuzz.getForm()) && list.contains(subBuzz.getForm())) continue;
                arrayList.add(subBuzz.getForm());
            }
        }
        return arrayList;
    }
}

