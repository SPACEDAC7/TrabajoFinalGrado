/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.AbsListView
 *  android.widget.AbsListView$OnScrollListener
 */
package com.bumptech.glide;

import android.widget.AbsListView;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.BaseTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import java.util.List;
import java.util.Queue;

public class ListPreloader<T>
implements AbsListView.OnScrollListener {
    private boolean isIncreasing = true;
    private int lastEnd;
    private int lastFirstVisible;
    private int lastStart;
    private final int maxPreload;
    private final PreloadSizeProvider<T> preloadDimensionProvider;
    private final PreloadModelProvider<T> preloadModelProvider;
    private final PreloadTargetQueue preloadTargetQueue;
    private int totalItemCount;

    @Deprecated
    public ListPreloader(int n2) {
        this.preloadModelProvider = new PreloadModelProvider<T>(){

            @Override
            public List<T> getPreloadItems(int n2) {
                return ListPreloader.this.getItems(n2, n2 + 1);
            }

            @Override
            public GenericRequestBuilder getPreloadRequestBuilder(T t2) {
                return ListPreloader.this.getRequestBuilder(t2);
            }
        };
        this.preloadDimensionProvider = new PreloadSizeProvider<T>(){

            @Override
            public int[] getPreloadSize(T t2, int n2, int n3) {
                return ListPreloader.this.getDimensions(t2);
            }
        };
        this.maxPreload = n2;
        this.preloadTargetQueue = new PreloadTargetQueue(n2 + 1);
    }

    public ListPreloader(PreloadModelProvider<T> preloadModelProvider, PreloadSizeProvider<T> preloadSizeProvider, int n2) {
        this.preloadModelProvider = preloadModelProvider;
        this.preloadDimensionProvider = preloadSizeProvider;
        this.maxPreload = n2;
        this.preloadTargetQueue = new PreloadTargetQueue(n2 + 1);
    }

    private void cancelAll() {
        for (int i2 = 0; i2 < this.maxPreload; ++i2) {
            Glide.clear(this.preloadTargetQueue.next(0, 0));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void preload(int n2, int n3) {
        int n4;
        int n5;
        if (n2 < n3) {
            n5 = Math.max(this.lastEnd, n2);
            n4 = n3;
        } else {
            n5 = n3;
            n4 = Math.min(this.lastStart, n2);
        }
        n4 = Math.min(this.totalItemCount, n4);
        n5 = Math.min(this.totalItemCount, Math.max(0, n5));
        if (n2 < n3) {
            for (n2 = n5; n2 < n4; ++n2) {
                this.preloadAdapterPosition(this.preloadModelProvider.getPreloadItems(n2), n2, true);
            }
        } else {
            for (n2 = n4 - 1; n2 >= n5; --n2) {
                this.preloadAdapterPosition(this.preloadModelProvider.getPreloadItems(n2), n2, false);
            }
        }
        this.lastStart = n5;
        this.lastEnd = n4;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void preload(int n2, boolean bl) {
        if (this.isIncreasing != bl) {
            this.isIncreasing = bl;
            this.cancelAll();
        }
        int n3 = bl ? this.maxPreload : - this.maxPreload;
        this.preload(n2, n3 + n2);
    }

    private void preloadAdapterPosition(List<T> list, int n2, boolean bl) {
        int n3 = list.size();
        if (bl) {
            for (int i2 = 0; i2 < n3; ++i2) {
                this.preloadItem(list.get(i2), n2, i2);
            }
        } else {
            for (int i3 = n3 - 1; i3 >= 0; --i3) {
                this.preloadItem(list.get(i3), n2, i3);
            }
        }
    }

    private void preloadItem(T t2, int n2, int n3) {
        int[] arrn = this.preloadDimensionProvider.getPreloadSize(t2, n2, n3);
        if (arrn != null) {
            this.preloadModelProvider.getPreloadRequestBuilder(t2).into(this.preloadTargetQueue.next(arrn[0], arrn[1]));
        }
    }

    @Deprecated
    protected int[] getDimensions(T t2) {
        throw new IllegalStateException("You must either provide a PreloadDimensionProvider or override getDimensions()");
    }

    @Deprecated
    protected List<T> getItems(int n2, int n3) {
        throw new IllegalStateException("You must either provide a PreloadModelProvider or override getItems()");
    }

    @Deprecated
    protected GenericRequestBuilder getRequestBuilder(T t2) {
        throw new IllegalStateException("You must either provide a PreloadModelProvider, or override getRequestBuilder()");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onScroll(AbsListView absListView, int n2, int n3, int n4) {
        this.totalItemCount = n4;
        if (n2 > this.lastFirstVisible) {
            this.preload(n2 + n3, true);
        } else if (n2 < this.lastFirstVisible) {
            this.preload(n2, false);
        }
        this.lastFirstVisible = n2;
    }

    public void onScrollStateChanged(AbsListView absListView, int n2) {
    }

    public static interface PreloadModelProvider<U> {
        public List<U> getPreloadItems(int var1);

        public GenericRequestBuilder getPreloadRequestBuilder(U var1);
    }

    public static interface PreloadSizeProvider<T> {
        public int[] getPreloadSize(T var1, int var2, int var3);
    }

    private static class PreloadTarget
    extends BaseTarget<Object> {
        private int photoHeight;
        private int photoWidth;

        private PreloadTarget() {
        }

        @Override
        public void getSize(SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.photoWidth, this.photoHeight);
        }

        @Override
        public void onResourceReady(Object object, GlideAnimation<? super Object> glideAnimation) {
        }
    }

    private static final class PreloadTargetQueue {
        private final Queue<PreloadTarget> queue;

        public PreloadTargetQueue(int n2) {
            this.queue = Util.createQueue(n2);
            for (int i2 = 0; i2 < n2; ++i2) {
                this.queue.offer(new PreloadTarget());
            }
        }

        public PreloadTarget next(int n2, int n3) {
            PreloadTarget preloadTarget = this.queue.poll();
            this.queue.offer(preloadTarget);
            preloadTarget.photoWidth = n2;
            preloadTarget.photoHeight = n3;
            return preloadTarget;
        }
    }

}

