/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request;

import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;

public class ThumbnailRequestCoordinator
implements RequestCoordinator,
Request {
    private RequestCoordinator coordinator;
    private Request full;
    private Request thumb;

    public ThumbnailRequestCoordinator() {
        this(null);
    }

    public ThumbnailRequestCoordinator(RequestCoordinator requestCoordinator) {
        this.coordinator = requestCoordinator;
    }

    private boolean parentCanNotifyStatusChanged() {
        if (this.coordinator == null || this.coordinator.canNotifyStatusChanged(this)) {
            return true;
        }
        return false;
    }

    private boolean parentCanSetImage() {
        if (this.coordinator == null || this.coordinator.canSetImage(this)) {
            return true;
        }
        return false;
    }

    private boolean parentIsAnyResourceSet() {
        if (this.coordinator != null && this.coordinator.isAnyResourceSet()) {
            return true;
        }
        return false;
    }

    @Override
    public void begin() {
        if (!this.thumb.isRunning()) {
            this.thumb.begin();
        }
        if (!this.full.isRunning()) {
            this.full.begin();
        }
    }

    @Override
    public boolean canNotifyStatusChanged(Request request) {
        if (this.parentCanNotifyStatusChanged() && request.equals(this.full) && !this.isAnyResourceSet()) {
            return true;
        }
        return false;
    }

    @Override
    public boolean canSetImage(Request request) {
        if (this.parentCanSetImage() && (request.equals(this.full) || !this.full.isResourceSet())) {
            return true;
        }
        return false;
    }

    @Override
    public void clear() {
        this.thumb.clear();
        this.full.clear();
    }

    @Override
    public boolean isAnyResourceSet() {
        if (this.parentIsAnyResourceSet() || this.isResourceSet()) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isCancelled() {
        return this.full.isCancelled();
    }

    @Override
    public boolean isComplete() {
        if (this.full.isComplete() || this.thumb.isComplete()) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isFailed() {
        return this.full.isFailed();
    }

    @Override
    public boolean isPaused() {
        return this.full.isPaused();
    }

    @Override
    public boolean isResourceSet() {
        if (this.full.isResourceSet() || this.thumb.isResourceSet()) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isRunning() {
        return this.full.isRunning();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onRequestSuccess(Request request) {
        if (request.equals(this.thumb)) {
            return;
        }
        if (this.coordinator != null) {
            this.coordinator.onRequestSuccess(this);
        }
        if (this.thumb.isComplete()) return;
        this.thumb.clear();
    }

    @Override
    public void pause() {
        this.full.pause();
        this.thumb.pause();
    }

    @Override
    public void recycle() {
        this.full.recycle();
        this.thumb.recycle();
    }

    public void setRequests(Request request, Request request2) {
        this.full = request;
        this.thumb = request2;
    }
}

