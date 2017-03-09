/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.widget.util;

import android.support.v7.util.SortedList;
import android.support.v7.widget.RecyclerView;

public abstract class SortedListAdapterCallback<T2>
extends SortedList.Callback<T2> {
    final RecyclerView.Adapter mAdapter;

    public SortedListAdapterCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override
    public void onChanged(int n2, int n3) {
        this.mAdapter.notifyItemRangeChanged(n2, n3);
    }

    @Override
    public void onInserted(int n2, int n3) {
        this.mAdapter.notifyItemRangeInserted(n2, n3);
    }

    @Override
    public void onMoved(int n2, int n3) {
        this.mAdapter.notifyItemMoved(n2, n3);
    }

    @Override
    public void onRemoved(int n2, int n3) {
        this.mAdapter.notifyItemRangeRemoved(n2, n3);
    }
}

