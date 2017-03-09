/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.SparseArray
 *  android.view.View
 */
package android.support.transition;

import android.support.transition.TransitionValues;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.util.SparseArray;
import android.view.View;

class TransitionValuesMaps {
    public SparseArray<TransitionValues> idValues = new SparseArray();
    public LongSparseArray<TransitionValues> itemIdValues = new LongSparseArray();
    public ArrayMap<View, TransitionValues> viewValues = new ArrayMap();

    TransitionValuesMaps() {
    }
}

