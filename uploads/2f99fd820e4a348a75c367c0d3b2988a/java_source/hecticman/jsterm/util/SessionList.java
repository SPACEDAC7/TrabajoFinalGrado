/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm.util;

import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.UpdateCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public class SessionList
extends ArrayList<TermSession> {
    LinkedList<UpdateCallback> callbacks = new LinkedList();

    public SessionList() {
    }

    public SessionList(int n) {
        super(n);
    }

    private void notifyChange() {
        Iterator<UpdateCallback> iterator = this.callbacks.iterator();
        while (iterator.hasNext()) {
            iterator.next().onUpdate();
        }
        return;
    }

    @Override
    public void add(int n, TermSession termSession) {
        super.add(n, termSession);
        this.notifyChange();
    }

    @Override
    public boolean add(TermSession termSession) {
        boolean bl = super.add(termSession);
        this.notifyChange();
        return bl;
    }

    @Override
    public boolean addAll(int n, Collection<? extends TermSession> collection) {
        boolean bl = super.addAll(n, collection);
        this.notifyChange();
        return bl;
    }

    @Override
    public boolean addAll(Collection<? extends TermSession> collection) {
        boolean bl = super.addAll(collection);
        this.notifyChange();
        return bl;
    }

    public void addCallback(UpdateCallback updateCallback) {
        this.callbacks.add(updateCallback);
    }

    @Override
    public void clear() {
        super.clear();
        this.notifyChange();
    }

    @Override
    public TermSession remove(int n) {
        TermSession termSession = (TermSession)super.remove(n);
        if (termSession != null) {
            this.notifyChange();
        }
        return termSession;
    }

    @Override
    public boolean remove(Object object) {
        boolean bl = super.remove(object);
        if (bl) {
            this.notifyChange();
        }
        return bl;
    }

    public boolean removeCallback(UpdateCallback updateCallback) {
        return this.callbacks.remove(updateCallback);
    }

    @Override
    public TermSession set(int n, TermSession termSession) {
        termSession = super.set(n, termSession);
        this.notifyChange();
        return termSession;
    }
}

