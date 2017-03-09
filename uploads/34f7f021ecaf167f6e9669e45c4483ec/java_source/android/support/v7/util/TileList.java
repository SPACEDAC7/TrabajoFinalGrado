/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.SparseArray
 */
package android.support.v7.util;

import android.util.SparseArray;
import java.lang.reflect.Array;

class TileList<T> {
    Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<Tile<T>> mTiles = new SparseArray(10);

    public TileList(int n2) {
        this.mTileSize = n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Tile<T> addOrReplace(Tile<T> tile) {
        int n2 = this.mTiles.indexOfKey(tile.mStartPosition);
        if (n2 < 0) {
            this.mTiles.put(tile.mStartPosition, tile);
            return null;
        }
        Tile tile2 = (Tile)this.mTiles.valueAt(n2);
        this.mTiles.setValueAt(n2, tile);
        Tile tile3 = tile2;
        if (this.mLastAccessedTile != tile2) return tile3;
        this.mLastAccessedTile = tile;
        return tile2;
    }

    public void clear() {
        this.mTiles.clear();
    }

    public Tile<T> getAtIndex(int n2) {
        return (Tile)this.mTiles.valueAt(n2);
    }

    public T getItemAt(int n2) {
        if (this.mLastAccessedTile == null || !this.mLastAccessedTile.containsPosition(n2)) {
            int n3 = this.mTileSize;
            if ((n3 = this.mTiles.indexOfKey(n2 - n2 % n3)) < 0) {
                return null;
            }
            this.mLastAccessedTile = (Tile)this.mTiles.valueAt(n3);
        }
        return this.mLastAccessedTile.getByPosition(n2);
    }

    public Tile<T> removeAtPos(int n2) {
        Tile tile = (Tile)this.mTiles.get(n2);
        if (this.mLastAccessedTile == tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(n2);
        return tile;
    }

    public int size() {
        return this.mTiles.size();
    }

    public static class Tile<T> {
        public int mItemCount;
        public final T[] mItems;
        Tile<T> mNext;
        public int mStartPosition;

        public Tile(Class<T> class_, int n2) {
            this.mItems = (Object[])Array.newInstance(class_, n2);
        }

        boolean containsPosition(int n2) {
            if (this.mStartPosition <= n2 && n2 < this.mStartPosition + this.mItemCount) {
                return true;
            }
            return false;
        }

        T getByPosition(int n2) {
            return this.mItems[n2 - this.mStartPosition];
        }
    }

}

