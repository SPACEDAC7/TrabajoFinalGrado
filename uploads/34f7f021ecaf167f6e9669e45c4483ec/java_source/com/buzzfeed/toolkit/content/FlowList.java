/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

public class FlowList
implements List<FlowItem> {
    private final Map<String, Integer> flowIdMap = Collections.synchronizedMap(new HashMap());
    private final List<FlowItem> list = Collections.synchronizedList(new ArrayList());

    public FlowList() {
    }

    public FlowList(List<FlowItem> object) {
        if (object != null) {
            object = object.iterator();
            while (object.hasNext()) {
                this.add((FlowItem)object.next());
            }
        }
    }

    private String getId(FlowItem flowItem) {
        return this.getId(flowItem.getContent());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void add(int n2, FlowItem object) {
        synchronized (this) {
            if (n2 < 0 || n2 > this.list.size()) {
                throw new IndexOutOfBoundsException();
            }
            String string2 = this.getId((FlowItem)object);
            if (this.flowIdMap.get(string2) == null) {
                this.list.add(n2, (FlowItem)object);
                if (n2 < this.list.size() - 1) {
                    for (String string3 : this.flowIdMap.keySet()) {
                        Integer n3 = this.flowIdMap.get(string3);
                        if (n3 < n2) continue;
                        this.flowIdMap.put(string3, n3 + 1);
                    }
                }
                this.flowIdMap.put(string2, n2);
            }
            return;
        }
    }

    @Override
    public boolean add(FlowItem flowItem) {
        this.add(this.size(), flowItem);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public boolean addAll(int n2, Collection<? extends FlowItem> object) {
        synchronized (this) {
            if (n2 < 0 || n2 > this.list.size()) {
                throw new IndexOutOfBoundsException();
            }
            object = object.iterator();
            while (object.hasNext()) {
                this.add(n2, (FlowItem)object.next());
                int n3 = this.size();
                if (n2 + 1 >= n3) continue;
                ++n2;
            }
            return true;
        }
    }

    @Override
    public boolean addAll(Collection<? extends FlowItem> object) {
        synchronized (this) {
            object = object.iterator();
            while (object.hasNext()) {
                this.add((FlowItem)object.next());
            }
            return true;
        }
    }

    @Override
    public void clear() {
        synchronized (this) {
            this.list.clear();
            this.flowIdMap.clear();
            return;
        }
    }

    @Override
    public boolean contains(Object object) {
        return this.list.contains(object);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    public boolean containsContent(Content content) {
        return this.flowIdMap.containsKey(this.getId(content));
    }

    public boolean containsFlowItem(FlowItem flowItem) {
        return this.flowIdMap.containsKey(this.getId(flowItem));
    }

    public FlowList copy() {
        synchronized (this) {
            FlowList flowList;
            flowList = new FlowList();
            Iterator<FlowItem> iterator = this.list.iterator();
            while (iterator.hasNext()) {
                flowList.add(iterator.next());
            }
            return flowList;
        }
    }

    @Override
    public FlowItem get(int n2) {
        try {
            FlowItem flowItem = this.list.get(n2);
            return flowItem;
        }
        catch (IndexOutOfBoundsException var2_3) {
            return null;
        }
    }

    protected String getId(Content content) {
        return content.getFlowId();
    }

    public List<FlowItem> getList() {
        return this.list;
    }

    public int getLocationForContent(Content serializable) {
        if ((serializable = this.flowIdMap.get(this.getId((Content)serializable))) == null) {
            return -1;
        }
        return serializable.intValue();
    }

    public int getLocationForId(String string2) {
        return this.flowIdMap.get(string2);
    }

    @Override
    public int indexOf(Object object) {
        return this.list.indexOf(object);
    }

    @Override
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override
    public Iterator<FlowItem> iterator() {
        return this.list.iterator();
    }

    @Override
    public int lastIndexOf(Object object) {
        return this.list.lastIndexOf(object);
    }

    @Override
    public ListIterator<FlowItem> listIterator() {
        return this.list.listIterator();
    }

    @Override
    public ListIterator<FlowItem> listIterator(int n2) {
        return this.list.listIterator(n2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public FlowItem remove(int n2) {
        synchronized (this) {
            if (n2 < 0 || n2 >= this.list.size()) {
                throw new IndexOutOfBoundsException();
            }
            FlowItem flowItem = this.list.get(n2);
            this.flowIdMap.remove(this.getId(flowItem));
            this.list.remove(n2);
            if (n2 < this.list.size()) {
                for (String string2 : this.flowIdMap.keySet()) {
                    Integer n3 = this.flowIdMap.get(string2);
                    if (n3 < n2) continue;
                    this.flowIdMap.put(string2, n3 - 1);
                }
            }
            return flowItem;
        }
    }

    @Override
    public boolean remove(Object object) {
        synchronized (this) {
            boolean bl;
            block4 : {
                boolean bl2;
                bl = bl2 = false;
                if (!(object instanceof FlowItem)) break block4;
                object = this.getId((FlowItem)object);
                object = this.flowIdMap.get(object);
                bl = bl2;
                if (object == null) break block4;
                this.remove(object.intValue());
                bl = true;
            }
            return bl;
        }
    }

    @Override
    public boolean removeAll(Collection<?> object) {
        synchronized (this) {
            boolean bl = false;
            object = object.iterator();
            while (object.hasNext()) {
                boolean bl2 = this.remove(object.next());
                if (!bl2) continue;
                bl = true;
            }
            return bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public boolean retainAll(Collection<?> iterator) {
        synchronized (this) {
            boolean bl = false;
            ArrayList<Integer> arrayList = new ArrayList<Integer>();
            int n2 = this.list.size() - 1;
            do {
                if (n2 >= 0) {
                    if (!iterator.contains(this.list.get(n2))) {
                        arrayList.add(n2);
                    }
                } else {
                    iterator = arrayList.iterator();
                    do {
                        if (!iterator.hasNext()) {
                            return bl;
                        }
                        this.remove((Integer)iterator.next());
                        bl = true;
                    } while (true);
                }
                --n2;
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public FlowItem set(int n2, FlowItem flowItem) {
        synchronized (this) {
            if (n2 < 0 || n2 >= this.list.size()) {
                throw new IndexOutOfBoundsException();
            }
            FlowItem flowItem2 = this.list.get(n2);
            String string2 = this.getId(flowItem);
            String string3 = this.getId(flowItem2);
            Integer n3 = this.flowIdMap.get(this.getId(flowItem));
            if (n3 != null) {
                if (n3 == n2) {
                    this.list.set(n2, flowItem);
                    this.flowIdMap.put(string2, n2);
                } else {
                    this.remove(n3);
                    int n4 = n2;
                    if (n3 < n2) {
                        n4 = n2;
                        if (n2 > 0) {
                            n4 = n2 - 1;
                        }
                    }
                    this.set(n4, flowItem);
                }
            } else {
                this.list.set(n2, flowItem);
                this.flowIdMap.remove(string3);
                this.flowIdMap.put(string2, n2);
            }
            return flowItem2;
        }
    }

    @Override
    public int size() {
        return this.list.size();
    }

    @Override
    public void sort(Comparator<? super FlowItem> object) {
        synchronized (this) {
            Collections.sort(this.list, object);
            int n2 = 0;
            do {
                if (n2 >= this.list.size()) break;
                object = this.list.get(n2);
                this.flowIdMap.put(this.getId((FlowItem)object), n2);
                ++n2;
            } while (true);
            return;
        }
    }

    @Override
    public List<FlowItem> subList(int n2, int n3) {
        return this.list.subList(n2, n3);
    }

    @Override
    public Object[] toArray() {
        return this.list.toArray();
    }

    @Override
    public <T> T[] toArray(T[] arrT) {
        return this.list.toArray(arrT);
    }

    public String toString() {
        return "FlowItemList [list=" + this.list + "]";
    }
}

