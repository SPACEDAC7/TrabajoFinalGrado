/*
 * Decompiled with CFR 0_115.
 */
package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import android.support.v4.util.SimpleArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

final class DirectedAcyclicGraph<T> {
    private final SimpleArrayMap<T, ArrayList<T>> mGraph = new SimpleArrayMap();
    private final Pools.Pool<ArrayList<T>> mListPool = new Pools.SimplePool<ArrayList<T>>(10);
    private final ArrayList<T> mSortResult = new ArrayList();
    private final HashSet<T> mSortTmpMarked = new HashSet();

    DirectedAcyclicGraph() {
    }

    private void dfs(T t2, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t2)) {
            return;
        }
        if (hashSet.contains(t2)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t2);
        ArrayList<T> arrayList2 = this.mGraph.get(t2);
        if (arrayList2 != null) {
            int n2 = arrayList2.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.dfs(arrayList2.get(i2), arrayList, hashSet);
            }
        }
        hashSet.remove(t2);
        arrayList.add(t2);
    }

    @NonNull
    private ArrayList<T> getEmptyList() {
        ArrayList<T> arrayList;
        ArrayList arrayList2 = arrayList = this.mListPool.acquire();
        if (arrayList == null) {
            arrayList2 = new ArrayList();
        }
        return arrayList2;
    }

    private void poolList(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.mListPool.release(arrayList);
    }

    void addEdge(@NonNull T t2, @NonNull T t3) {
        ArrayList<T> arrayList;
        if (!this.mGraph.containsKey(t2) || !this.mGraph.containsKey(t3)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList2 = arrayList = this.mGraph.get(t2);
        if (arrayList == null) {
            arrayList2 = this.getEmptyList();
            this.mGraph.put(t2, arrayList2);
        }
        arrayList2.add(t3);
    }

    void addNode(@NonNull T t2) {
        if (!this.mGraph.containsKey(t2)) {
            this.mGraph.put(t2, null);
        }
    }

    void clear() {
        int n2 = this.mGraph.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            ArrayList<T> arrayList = this.mGraph.valueAt(i2);
            if (arrayList == null) continue;
            this.poolList(arrayList);
        }
        this.mGraph.clear();
    }

    boolean contains(@NonNull T t2) {
        return this.mGraph.containsKey(t2);
    }

    @Nullable
    List getIncomingEdges(@NonNull T t2) {
        return this.mGraph.get(t2);
    }

    @Nullable
    List getOutgoingEdges(@NonNull T t2) {
        ArrayList<T> arrayList = null;
        int n2 = this.mGraph.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            ArrayList<T> arrayList2 = this.mGraph.valueAt(i2);
            ArrayList<T> arrayList3 = arrayList;
            if (arrayList2 != null) {
                arrayList3 = arrayList;
                if (arrayList2.contains(t2)) {
                    arrayList3 = arrayList;
                    if (arrayList == null) {
                        arrayList3 = new ArrayList<T>();
                    }
                    arrayList3.add(this.mGraph.keyAt(i2));
                }
            }
            arrayList = arrayList3;
        }
        return arrayList;
    }

    @NonNull
    ArrayList<T> getSortedList() {
        this.mSortResult.clear();
        this.mSortTmpMarked.clear();
        int n2 = this.mGraph.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.dfs(this.mGraph.keyAt(i2), this.mSortResult, this.mSortTmpMarked);
        }
        return this.mSortResult;
    }

    boolean hasOutgoingEdges(@NonNull T t2) {
        int n2 = this.mGraph.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            ArrayList<T> arrayList = this.mGraph.valueAt(i2);
            if (arrayList == null || !arrayList.contains(t2)) continue;
            return true;
        }
        return false;
    }

    int size() {
        return this.mGraph.size();
    }
}

