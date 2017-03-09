/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.util;

import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.UpdateCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public class SessionList
extends ArrayList<TermSession> {
    LinkedList<UpdateCallback> callbacks = new LinkedList();
    UpdateCallback mTitleChangedListener;
    LinkedList<UpdateCallback> titleChangedListeners = new LinkedList();

    public SessionList() {
        this.mTitleChangedListener = new UpdateCallback(){

            @Override
            public void onUpdate() {
                SessionList.this.notifyTitleChanged();
            }
        };
    }

    public SessionList(int n) {
        super(n);
        this.mTitleChangedListener = new ;
    }

    private void notifyChange() {
        Iterator<UpdateCallback> iterator = this.callbacks.iterator();
        while (iterator.hasNext()) {
            iterator.next().onUpdate();
        }
    }

    private void notifyTitleChanged() {
        Iterator<UpdateCallback> iterator = this.titleChangedListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onUpdate();
        }
    }

    @Override
    public void add(int n, TermSession termSession) {
        super.add(n, termSession);
        termSession.setTitleChangedListener(this.mTitleChangedListener);
        this.notifyChange();
    }

    @Override
    public boolean add(TermSession termSession) {
        boolean bl = super.add(termSession);
        termSession.setTitleChangedListener(this.mTitleChangedListener);
        this.notifyChange();
        return bl;
    }

    @Override
    public boolean addAll(int n, Collection<? extends TermSession> object) {
        boolean bl = super.addAll(n, object);
        object = object.iterator();
        while (object.hasNext()) {
            ((TermSession)object.next()).setTitleChangedListener(this.mTitleChangedListener);
        }
        this.notifyChange();
        return bl;
    }

    @Override
    public boolean addAll(Collection<? extends TermSession> object) {
        boolean bl = super.addAll(object);
        object = object.iterator();
        while (object.hasNext()) {
            ((TermSession)object.next()).setTitleChangedListener(this.mTitleChangedListener);
        }
        this.notifyChange();
        return bl;
    }

    public void addCallback(UpdateCallback updateCallback) {
        this.callbacks.add(updateCallback);
        updateCallback.onUpdate();
    }

    public void addTitleChangedListener(UpdateCallback updateCallback) {
        this.titleChangedListeners.add(updateCallback);
        updateCallback.onUpdate();
    }

    @Override
    public void clear() {
        Iterator iterator = this.iterator();
        while (iterator.hasNext()) {
            ((TermSession)iterator.next()).setTitleChangedListener(null);
        }
        super.clear();
        this.notifyChange();
    }

    @Override
    public TermSession remove(int n) {
        TermSession termSession = (TermSession)super.remove(n);
        if (termSession != null) {
            termSession.setTitleChangedListener(null);
            this.notifyChange();
        }
        return termSession;
    }

    @Override
    public boolean remove(Object object) {
        boolean bl = super.remove(object);
        if (bl && object instanceof TermSession) {
            ((TermSession)object).setTitleChangedListener(null);
            this.notifyChange();
        }
        return bl;
    }

    public boolean removeCallback(UpdateCallback updateCallback) {
        return this.callbacks.remove(updateCallback);
    }

    public boolean removeTitleChangedListener(UpdateCallback updateCallback) {
        return this.titleChangedListeners.remove(updateCallback);
    }

    @Override
    public TermSession set(int n, TermSession termSession) {
        TermSession termSession2 = super.set(n, termSession);
        termSession.setTitleChangedListener(this.mTitleChangedListener);
        if (termSession2 != null) {
            termSession2.setTitleChangedListener(null);
        }
        this.notifyChange();
        return termSession2;
    }

}

