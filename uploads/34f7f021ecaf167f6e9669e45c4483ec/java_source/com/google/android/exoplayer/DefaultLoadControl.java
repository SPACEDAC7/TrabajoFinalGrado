/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  com.google.android.exoplayer.DefaultLoadControl$1
 *  com.google.android.exoplayer.DefaultLoadControl$EventListener
 *  com.google.android.exoplayer.DefaultLoadControl$LoaderState
 *  com.google.android.exoplayer.upstream.NetworkLock
 */
package com.google.android.exoplayer;

import android.os.Handler;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.NetworkLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class DefaultLoadControl
implements LoadControl {
    private static final int ABOVE_HIGH_WATERMARK = 0;
    private static final int BELOW_LOW_WATERMARK = 2;
    private static final int BETWEEN_WATERMARKS = 1;
    public static final float DEFAULT_HIGH_BUFFER_LOAD = 0.8f;
    public static final int DEFAULT_HIGH_WATERMARK_MS = 30000;
    public static final float DEFAULT_LOW_BUFFER_LOAD = 0.2f;
    public static final int DEFAULT_LOW_WATERMARK_MS = 15000;
    private final Allocator allocator;
    private int bufferState;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private boolean fillingBuffers;
    private final float highBufferLoad;
    private final long highWatermarkUs;
    private final HashMap<Object, LoaderState> loaderStates;
    private final List<Object> loaders;
    private final float lowBufferLoad;
    private final long lowWatermarkUs;
    private long maxLoadStartPositionUs;
    private boolean streamingPrioritySet;
    private int targetBufferSize;

    public DefaultLoadControl(Allocator allocator) {
        this(allocator, null, null);
    }

    public DefaultLoadControl(Allocator allocator, Handler handler, EventListener eventListener) {
        this(allocator, handler, eventListener, 15000, 30000, 0.2f, 0.8f);
    }

    public DefaultLoadControl(Allocator allocator, Handler handler, EventListener eventListener, int n2, int n3, float f2, float f3) {
        this.allocator = allocator;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.loaders = new ArrayList<Object>();
        this.loaderStates = new HashMap();
        this.lowWatermarkUs = (long)n2 * 1000;
        this.highWatermarkUs = (long)n3 * 1000;
        this.lowBufferLoad = f2;
        this.highBufferLoad = f3;
    }

    static /* synthetic */ EventListener access$000(DefaultLoadControl defaultLoadControl) {
        return defaultLoadControl.eventListener;
    }

    private int getBufferState(int n2) {
        float f2 = (float)n2 / (float)this.targetBufferSize;
        if (f2 > this.highBufferLoad) {
            return 0;
        }
        if (f2 < this.lowBufferLoad) {
            return 2;
        }
        return 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getLoaderBufferState(long l2, long l3) {
        if (l3 == -1 || (l2 = l3 - l2) > this.highWatermarkUs) {
            return 0;
        }
        if (l2 < this.lowWatermarkUs) {
            return 2;
        }
        return 1;
    }

    private void notifyLoadingChanged(boolean bl) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateControlState() {
        int n2;
        Object object;
        boolean bl = false;
        boolean bl2 = false;
        int n3 = this.bufferState;
        for (n2 = 0; n2 < this.loaders.size(); bl2 |= bl, ++n2) {
            object = this.loaderStates.get(this.loaders.get(n2));
            boolean bl3 = bl | object.loading;
            bl = object.nextLoadPositionUs != -1;
            n3 = Math.max(n3, object.bufferState);
            bl = bl3;
        }
        boolean bl4 = !this.loaders.isEmpty() && (bl || bl2) && (n3 == 2 || n3 == 1 && this.fillingBuffers);
        this.fillingBuffers = bl4;
        if (this.fillingBuffers && !this.streamingPrioritySet) {
            NetworkLock.instance.add(0);
            this.streamingPrioritySet = true;
            this.notifyLoadingChanged(true);
        } else if (!this.fillingBuffers && this.streamingPrioritySet && !bl) {
            NetworkLock.instance.remove(0);
            this.streamingPrioritySet = false;
            this.notifyLoadingChanged(false);
        }
        this.maxLoadStartPositionUs = -1;
        if (!this.fillingBuffers) {
            return;
        }
        n2 = 0;
        while (n2 < this.loaders.size()) {
            object = this.loaders.get(n2);
            long l2 = this.loaderStates.get((Object)object).nextLoadPositionUs;
            if (l2 != -1 && (this.maxLoadStartPositionUs == -1 || l2 < this.maxLoadStartPositionUs)) {
                this.maxLoadStartPositionUs = l2;
            }
            ++n2;
        }
    }

    @Override
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override
    public void register(Object object, int n2) {
        this.loaders.add(object);
        this.loaderStates.put(object, new LoaderState(n2));
        this.targetBufferSize += n2;
    }

    @Override
    public void trimAllocator() {
        this.allocator.trim(this.targetBufferSize);
    }

    @Override
    public void unregister(Object object) {
        this.loaders.remove(object);
        object = this.loaderStates.remove(object);
        this.targetBufferSize -= object.bufferSizeContribution;
        this.updateControlState();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean update(Object object, long l2, long l3, boolean bl) {
        int n2;
        int n3;
        int n4 = this.getLoaderBufferState(l2, l3);
        object = this.loaderStates.get(object);
        boolean bl2 = object.bufferState != n4 || object.nextLoadPositionUs != l3 || object.loading != bl;
        if (bl2) {
            object.bufferState = n4;
            object.nextLoadPositionUs = l3;
            object.loading = bl;
        }
        n4 = this.bufferState != (n3 = this.getBufferState(n2 = this.allocator.getTotalBytesAllocated())) ? 1 : 0;
        if (n4 != 0) {
            this.bufferState = n3;
        }
        if (bl2 || n4 != 0) {
            this.updateControlState();
        }
        if (n2 < this.targetBufferSize && l3 != -1 && l3 <= this.maxLoadStartPositionUs) {
            return true;
        }
        return false;
    }
}

