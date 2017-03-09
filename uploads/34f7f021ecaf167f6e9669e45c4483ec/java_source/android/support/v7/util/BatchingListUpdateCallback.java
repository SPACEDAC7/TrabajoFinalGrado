/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.util;

import android.support.v7.util.ListUpdateCallback;

public class BatchingListUpdateCallback
implements ListUpdateCallback {
    private static final int TYPE_ADD = 1;
    private static final int TYPE_CHANGE = 3;
    private static final int TYPE_NONE = 0;
    private static final int TYPE_REMOVE = 2;
    int mLastEventCount = -1;
    Object mLastEventPayload = null;
    int mLastEventPosition = -1;
    int mLastEventType = 0;
    final ListUpdateCallback mWrapped;

    public BatchingListUpdateCallback(ListUpdateCallback listUpdateCallback) {
        this.mWrapped = listUpdateCallback;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void dispatchLastEvent() {
        if (this.mLastEventType == 0) {
            return;
        }
        switch (this.mLastEventType) {
            case 1: {
                this.mWrapped.onInserted(this.mLastEventPosition, this.mLastEventCount);
                ** break;
            }
            case 2: {
                this.mWrapped.onRemoved(this.mLastEventPosition, this.mLastEventCount);
            }
lbl9: // 3 sources:
            default: {
                ** GOTO lbl13
            }
            case 3: 
        }
        this.mWrapped.onChanged(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
lbl13: // 2 sources:
        this.mLastEventPayload = null;
        this.mLastEventType = 0;
    }

    @Override
    public void onChanged(int n2, int n3, Object object) {
        if (this.mLastEventType == 3 && n2 <= this.mLastEventPosition + this.mLastEventCount && n2 + n3 >= this.mLastEventPosition && this.mLastEventPayload == object) {
            int n4 = this.mLastEventPosition;
            int n5 = this.mLastEventCount;
            this.mLastEventPosition = Math.min(n2, this.mLastEventPosition);
            this.mLastEventCount = Math.max(n4 + n5, n2 + n3) - this.mLastEventPosition;
            return;
        }
        this.dispatchLastEvent();
        this.mLastEventPosition = n2;
        this.mLastEventCount = n3;
        this.mLastEventPayload = object;
        this.mLastEventType = 3;
    }

    @Override
    public void onInserted(int n2, int n3) {
        if (this.mLastEventType == 1 && n2 >= this.mLastEventPosition && n2 <= this.mLastEventPosition + this.mLastEventCount) {
            this.mLastEventCount += n3;
            this.mLastEventPosition = Math.min(n2, this.mLastEventPosition);
            return;
        }
        this.dispatchLastEvent();
        this.mLastEventPosition = n2;
        this.mLastEventCount = n3;
        this.mLastEventType = 1;
    }

    @Override
    public void onMoved(int n2, int n3) {
        this.dispatchLastEvent();
        this.mWrapped.onMoved(n2, n3);
    }

    @Override
    public void onRemoved(int n2, int n3) {
        if (this.mLastEventType == 2 && this.mLastEventPosition >= n2 && this.mLastEventPosition <= n2 + n3) {
            this.mLastEventCount += n3;
            this.mLastEventPosition = n2;
            return;
        }
        this.dispatchLastEvent();
        this.mLastEventPosition = n2;
        this.mLastEventCount = n3;
        this.mLastEventType = 2;
    }
}

