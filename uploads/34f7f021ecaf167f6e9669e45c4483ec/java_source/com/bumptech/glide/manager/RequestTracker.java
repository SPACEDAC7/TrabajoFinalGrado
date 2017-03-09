/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.manager;

import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class RequestTracker {
    private boolean isPaused;
    private final List<Request> pendingRequests = new ArrayList<Request>();
    private final Set<Request> requests = Collections.newSetFromMap(new WeakHashMap());

    void addRequest(Request request) {
        this.requests.add(request);
    }

    public void clearRequests() {
        Iterator<Request> iterator = Util.getSnapshot(this.requests).iterator();
        while (iterator.hasNext()) {
            iterator.next().clear();
        }
        this.pendingRequests.clear();
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    public void pauseRequests() {
        this.isPaused = true;
        for (Request request : Util.getSnapshot(this.requests)) {
            if (!request.isRunning()) continue;
            request.pause();
            this.pendingRequests.add(request);
        }
    }

    public void removeRequest(Request request) {
        this.requests.remove(request);
        this.pendingRequests.remove(request);
    }

    public void restartRequests() {
        for (Request request : Util.getSnapshot(this.requests)) {
            if (request.isComplete() || request.isCancelled()) continue;
            request.pause();
            if (!this.isPaused) {
                request.begin();
                continue;
            }
            this.pendingRequests.add(request);
        }
    }

    public void resumeRequests() {
        this.isPaused = false;
        for (Request request : Util.getSnapshot(this.requests)) {
            if (request.isComplete() || request.isCancelled() || request.isRunning()) continue;
            request.begin();
        }
        this.pendingRequests.clear();
    }

    public void runRequest(Request request) {
        this.requests.add(request);
        if (!this.isPaused) {
            request.begin();
            return;
        }
        this.pendingRequests.add(request);
    }
}

