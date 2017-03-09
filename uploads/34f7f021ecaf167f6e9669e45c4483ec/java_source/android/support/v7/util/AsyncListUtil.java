/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 *  android.util.SparseBooleanArray
 *  android.util.SparseIntArray
 */
package android.support.v7.util;

import android.support.annotation.UiThread;
import android.support.annotation.WorkerThread;
import android.support.v7.util.MessageThreadUtil;
import android.support.v7.util.ThreadUtil;
import android.support.v7.util.TileList;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;

public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncListUtil";
    boolean mAllowScrollHints;
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback;
    final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    int mDisplayedGeneration;
    int mItemCount = 0;
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback;
    final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    final SparseIntArray mMissingPositions;
    final int[] mPrevRange = new int[2];
    int mRequestedGeneration;
    private int mScrollHint = 0;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final int[] mTmpRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    final ViewCallback mViewCallback;

    public AsyncListUtil(Class<T> object, int n2, DataCallback<T> dataCallback, ViewCallback viewCallback) {
        this.mRequestedGeneration = this.mDisplayedGeneration = 0;
        this.mMissingPositions = new SparseIntArray();
        this.mMainThreadCallback = new ThreadUtil.MainThreadCallback<T>(){

            private boolean isRequestedGeneration(int n2) {
                if (n2 == AsyncListUtil.this.mRequestedGeneration) {
                    return true;
                }
                return false;
            }

            private void recycleAllTiles() {
                for (int i2 = 0; i2 < AsyncListUtil.this.mTileList.size(); ++i2) {
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(AsyncListUtil.this.mTileList.getAtIndex(i2));
                }
                AsyncListUtil.this.mTileList.clear();
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public void addTile(int n2, TileList.Tile<T> tile) {
                if (!this.isRequestedGeneration(n2)) {
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
                    return;
                }
                TileList.Tile tile2 = AsyncListUtil.this.mTileList.addOrReplace(tile);
                if (tile2 != null) {
                    Log.e((String)"AsyncListUtil", (String)("duplicate tile @" + tile2.mStartPosition));
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(tile2);
                }
                int n3 = tile.mStartPosition;
                int n4 = tile.mItemCount;
                n2 = 0;
                while (n2 < AsyncListUtil.this.mMissingPositions.size()) {
                    int n5 = AsyncListUtil.this.mMissingPositions.keyAt(n2);
                    if (tile.mStartPosition <= n5 && n5 < n3 + n4) {
                        AsyncListUtil.this.mMissingPositions.removeAt(n2);
                        AsyncListUtil.this.mViewCallback.onItemLoaded(n5);
                        continue;
                    }
                    ++n2;
                }
            }

            @Override
            public void removeTile(int n2, int n3) {
                if (!this.isRequestedGeneration(n2)) {
                    return;
                }
                TileList.Tile tile = AsyncListUtil.this.mTileList.removeAtPos(n3);
                if (tile == null) {
                    Log.e((String)"AsyncListUtil", (String)("tile not found @" + n3));
                    return;
                }
                AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
            }

            @Override
            public void updateItemCount(int n2, int n3) {
                if (!this.isRequestedGeneration(n2)) {
                    return;
                }
                AsyncListUtil.this.mItemCount = n3;
                AsyncListUtil.this.mViewCallback.onDataRefresh();
                AsyncListUtil.this.mDisplayedGeneration = AsyncListUtil.this.mRequestedGeneration;
                this.recycleAllTiles();
                AsyncListUtil.this.mAllowScrollHints = false;
                AsyncListUtil.this.updateRange();
            }
        };
        this.mBackgroundCallback = new ThreadUtil.BackgroundCallback<T>(){
            private int mFirstRequiredTileStart;
            private int mGeneration;
            private int mItemCount;
            private int mLastRequiredTileStart;
            final SparseBooleanArray mLoadedTiles;
            private TileList.Tile<T> mRecycledRoot;

            private TileList.Tile<T> acquireTile() {
                if (this.mRecycledRoot != null) {
                    TileList.Tile<T> tile = this.mRecycledRoot;
                    this.mRecycledRoot = this.mRecycledRoot.mNext;
                    return tile;
                }
                return new TileList.Tile(AsyncListUtil.this.mTClass, AsyncListUtil.this.mTileSize);
            }

            private void addTile(TileList.Tile<T> tile) {
                this.mLoadedTiles.put(tile.mStartPosition, true);
                AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, tile);
            }

            private void flushTileCache(int n2) {
                int n3 = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
                while (this.mLoadedTiles.size() >= n3) {
                    int n4 = this.mLoadedTiles.keyAt(0);
                    int n5 = this.mLoadedTiles.keyAt(this.mLoadedTiles.size() - 1);
                    int n6 = this.mFirstRequiredTileStart - n4;
                    int n7 = n5 - this.mLastRequiredTileStart;
                    if (n6 > 0 && (n6 >= n7 || n2 == 2)) {
                        this.removeTile(n4);
                        continue;
                    }
                    if (n7 <= 0 || n6 >= n7 && n2 != 1) break;
                    this.removeTile(n5);
                }
            }

            private int getTileStart(int n2) {
                return n2 - n2 % AsyncListUtil.this.mTileSize;
            }

            private boolean isTileLoaded(int n2) {
                return this.mLoadedTiles.get(n2);
            }

            private /* varargs */ void log(String string2, Object ... arrobject) {
                Log.d((String)"AsyncListUtil", (String)("[BKGR] " + String.format(string2, arrobject)));
            }

            private void removeTile(int n2) {
                this.mLoadedTiles.delete(n2);
                AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, n2);
            }

            /*
             * Enabled aggressive block sorting
             */
            private void requestTiles(int n2, int n3, int n4, boolean bl) {
                int n5 = n2;
                while (n5 <= n3) {
                    int n6 = bl ? n3 + n2 - n5 : n5;
                    AsyncListUtil.this.mBackgroundProxy.loadTile(n6, n4);
                    n5 += AsyncListUtil.this.mTileSize;
                }
                return;
            }

            @Override
            public void loadTile(int n2, int n3) {
                if (this.isTileLoaded(n2)) {
                    return;
                }
                TileList.Tile<T> tile = this.acquireTile();
                tile.mStartPosition = n2;
                tile.mItemCount = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - tile.mStartPosition);
                AsyncListUtil.this.mDataCallback.fillData(tile.mItems, tile.mStartPosition, tile.mItemCount);
                this.flushTileCache(n3);
                this.addTile(tile);
            }

            @Override
            public void recycleTile(TileList.Tile<T> tile) {
                AsyncListUtil.this.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
                tile.mNext = this.mRecycledRoot;
                this.mRecycledRoot = tile;
            }

            @Override
            public void refresh(int n2) {
                this.mGeneration = n2;
                this.mLoadedTiles.clear();
                this.mItemCount = AsyncListUtil.this.mDataCallback.refreshData();
                AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
            }

            @Override
            public void updateRange(int n2, int n3, int n4, int n5, int n6) {
                if (n2 > n3) {
                    return;
                }
                n2 = this.getTileStart(n2);
                n3 = this.getTileStart(n3);
                this.mFirstRequiredTileStart = this.getTileStart(n4);
                this.mLastRequiredTileStart = this.getTileStart(n5);
                if (n6 == 1) {
                    this.requestTiles(this.mFirstRequiredTileStart, n3, n6, true);
                    this.requestTiles(AsyncListUtil.this.mTileSize + n3, this.mLastRequiredTileStart, n6, false);
                    return;
                }
                this.requestTiles(n2, this.mLastRequiredTileStart, n6, false);
                this.requestTiles(this.mFirstRequiredTileStart, n2 - AsyncListUtil.this.mTileSize, n6, true);
            }
        };
        this.mTClass = object;
        this.mTileSize = n2;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList(this.mTileSize);
        object = new MessageThreadUtil();
        this.mMainThreadProxy = object.getMainThreadProxy(this.mMainThreadCallback);
        this.mBackgroundProxy = object.getBackgroundProxy(this.mBackgroundCallback);
        this.refresh();
    }

    private boolean isRefreshPending() {
        if (this.mRequestedGeneration != this.mDisplayedGeneration) {
            return true;
        }
        return false;
    }

    public T getItem(int n2) {
        if (n2 < 0 || n2 >= this.mItemCount) {
            throw new IndexOutOfBoundsException("" + n2 + " is not within 0 and " + this.mItemCount);
        }
        T t2 = this.mTileList.getItemAt(n2);
        if (t2 == null && !this.isRefreshPending()) {
            this.mMissingPositions.put(n2, 0);
        }
        return t2;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    /* varargs */ void log(String string2, Object ... arrobject) {
        Log.d((String)"AsyncListUtil", (String)("[MAIN] " + String.format(string2, arrobject)));
    }

    public void onRangeChanged() {
        if (this.isRefreshPending()) {
            return;
        }
        this.updateRange();
        this.mAllowScrollHints = true;
    }

    public void refresh() {
        int n2;
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        this.mRequestedGeneration = n2 = this.mRequestedGeneration + 1;
        backgroundCallback.refresh(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        if (this.mTmpRange[0] > this.mTmpRange[1] || this.mTmpRange[0] < 0 || this.mTmpRange[1] >= this.mItemCount) {
            return;
        }
        if (!this.mAllowScrollHints) {
            this.mScrollHint = 0;
        } else if (this.mTmpRange[0] > this.mPrevRange[1] || this.mPrevRange[0] > this.mTmpRange[1]) {
            this.mScrollHint = 0;
        } else if (this.mTmpRange[0] < this.mPrevRange[0]) {
            this.mScrollHint = 1;
        } else if (this.mTmpRange[0] > this.mPrevRange[0]) {
            this.mScrollHint = 2;
        }
        this.mPrevRange[0] = this.mTmpRange[0];
        this.mPrevRange[1] = this.mTmpRange[1];
        this.mViewCallback.extendRangeInto(this.mTmpRange, this.mTmpRangeExtended, this.mScrollHint);
        this.mTmpRangeExtended[0] = Math.min(this.mTmpRange[0], Math.max(this.mTmpRangeExtended[0], 0));
        this.mTmpRangeExtended[1] = Math.max(this.mTmpRange[1], Math.min(this.mTmpRangeExtended[1], this.mItemCount - 1));
        this.mBackgroundProxy.updateRange(this.mTmpRange[0], this.mTmpRange[1], this.mTmpRangeExtended[0], this.mTmpRangeExtended[1], this.mScrollHint);
    }

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(T[] var1, int var2, int var3);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(T[] arrT, int n2) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        /*
         * Enabled aggressive block sorting
         */
        @UiThread
        public void extendRangeInto(int[] arrn, int[] arrn2, int n2) {
            int n3 = arrn[1] - arrn[0] + 1;
            int n4 = n3 / 2;
            int n5 = arrn[0];
            int n6 = n2 == 1 ? n3 : n4;
            arrn2[0] = n5 - n6;
            n6 = arrn[1];
            if (n2 != 2) {
                n3 = n4;
            }
            arrn2[1] = n6 + n3;
        }

        @UiThread
        public abstract void getItemRangeInto(int[] var1);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int var1);
    }

}

