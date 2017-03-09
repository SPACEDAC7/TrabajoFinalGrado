/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.util;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v7.util.BatchingListUpdateCallback;
import android.support.v7.util.ListUpdateCallback;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class DiffUtil {
    private static final Comparator<Snake> SNAKE_COMPARATOR = new Comparator<Snake>(){

        @Override
        public int compare(Snake snake, Snake snake2) {
            int n2;
            int n3 = n2 = snake.x - snake2.x;
            if (n2 == 0) {
                n3 = snake.y - snake2.y;
            }
            return n3;
        }
    };

    private DiffUtil() {
    }

    public static DiffResult calculateDiff(Callback callback) {
        return DiffUtil.calculateDiff(callback, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static DiffResult calculateDiff(Callback callback, boolean bl) {
        int n2 = callback.getOldListSize();
        int n3 = callback.getNewListSize();
        ArrayList<Snake> arrayList = new ArrayList<Snake>();
        ArrayList<Range> arrayList2 = new ArrayList<Range>();
        arrayList2.add(new Range(0, n2, 0, n3));
        n2 = n2 + n3 + Math.abs(n2 - n3);
        int[] arrn = new int[n2 * 2];
        int[] arrn2 = new int[n2 * 2];
        ArrayList<Range> arrayList3 = new ArrayList<Range>();
        do {
            if (arrayList2.isEmpty()) {
                Collections.sort(arrayList, SNAKE_COMPARATOR);
                return new DiffResult(callback, arrayList, arrn, arrn2, bl);
            }
            Range range = (Range)arrayList2.remove(arrayList2.size() - 1);
            Snake snake = DiffUtil.diffPartial(callback, range.oldListStart, range.oldListEnd, range.newListStart, range.newListEnd, arrn, arrn2, n2);
            if (snake != null) {
                if (snake.size > 0) {
                    arrayList.add(snake);
                }
                snake.x += range.oldListStart;
                snake.y += range.newListStart;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range)arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                if (snake.reverse) {
                    range2.oldListEnd = snake.x;
                    range2.newListEnd = snake.y;
                } else if (snake.removal) {
                    range2.oldListEnd = snake.x - 1;
                    range2.newListEnd = snake.y;
                } else {
                    range2.oldListEnd = snake.x;
                    range2.newListEnd = snake.y - 1;
                }
                arrayList2.add(range2);
                if (snake.reverse) {
                    if (snake.removal) {
                        range.oldListStart = snake.x + snake.size + 1;
                        range.newListStart = snake.y + snake.size;
                    } else {
                        range.oldListStart = snake.x + snake.size;
                        range.newListStart = snake.y + snake.size + 1;
                    }
                } else {
                    range.oldListStart = snake.x + snake.size;
                    range.newListStart = snake.y + snake.size;
                }
                arrayList2.add(range);
                continue;
            }
            arrayList3.add(range);
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static Snake diffPartial(Callback object, int n2, int n3, int n4, int n5, int[] arrn, int[] arrn2, int n6) {
        int n7 = n3 - n2;
        int n8 = n5 - n4;
        if (n3 - n2 < 1 || n5 - n4 < 1) {
            return null;
        }
        int n9 = n7 - n8;
        int n10 = (n7 + n8 + 1) / 2;
        Arrays.fill(arrn, n6 - n10 - 1, n6 + n10 + 1, 0);
        Arrays.fill(arrn2, n6 - n10 - 1 + n9, n6 + n10 + 1 + n9, n7);
        n5 = n9 % 2 != 0 ? 1 : 0;
        int n11 = 0;
        do {
            boolean bl;
            int n12;
            int n13;
            if (n11 > n10) {
                throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
            }
            for (n12 = - n11; n12 <= n11; n12 += 2) {
                if (n12 == - n11 || n12 != n11 && arrn[n6 + n12 - 1] < arrn[n6 + n12 + 1]) {
                    n3 = arrn[n6 + n12 + 1];
                    bl = false;
                } else {
                    n3 = arrn[n6 + n12 - 1] + 1;
                    bl = true;
                }
                for (n13 = n3 - n12; n3 < n7 && n13 < n8 && object.areItemsTheSame(n2 + n3, n4 + n13); ++n3, ++n13) {
                }
                arrn[n6 + n12] = n3;
                if (n5 == 0 || n12 < n9 - n11 + 1 || n12 > n9 + n11 - 1 || arrn[n6 + n12] < arrn2[n6 + n12]) continue;
                object = new Snake();
                object.x = arrn2[n6 + n12];
                object.y = object.x - n12;
                object.size = arrn[n6 + n12] - arrn2[n6 + n12];
                object.removal = bl;
                object.reverse = false;
                return object;
            }
            for (n12 = - n11; n12 <= n11; n12 += 2) {
                int n14 = n12 + n9;
                if (n14 == n11 + n9 || n14 != - n11 + n9 && arrn2[n6 + n14 - 1] < arrn2[n6 + n14 + 1]) {
                    n3 = arrn2[n6 + n14 - 1];
                    bl = false;
                } else {
                    n3 = arrn2[n6 + n14 + 1] - 1;
                    bl = true;
                }
                for (n13 = n3 - n14; n3 > 0 && n13 > 0 && object.areItemsTheSame(n2 + n3 - 1, n4 + n13 - 1); --n3, --n13) {
                }
                arrn2[n6 + n14] = n3;
                if (n5 != 0 || n12 + n9 < - n11 || n12 + n9 > n11 || arrn[n6 + n14] < arrn2[n6 + n14]) continue;
                object = new Snake();
                object.x = arrn2[n6 + n14];
                object.y = object.x - n14;
                object.size = arrn[n6 + n14] - arrn2[n6 + n14];
                object.removal = bl;
                object.reverse = true;
                return object;
            }
            ++n11;
        } while (true);
    }

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int var1, int var2);

        public abstract boolean areItemsTheSame(int var1, int var2);

        @Nullable
        public Object getChangePayload(int n2, int n3) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_IGNORE = 16;
        private static final int FLAG_MASK = 31;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 5;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;
        private final List<Snake> mSnakes;

        DiffResult(Callback callback, List<Snake> list, int[] arrn, int[] arrn2, boolean bl) {
            this.mSnakes = list;
            this.mOldItemStatuses = arrn;
            this.mNewItemStatuses = arrn2;
            Arrays.fill(this.mOldItemStatuses, 0);
            Arrays.fill(this.mNewItemStatuses, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = bl;
            this.addRootSnake();
            this.findMatchingItems();
        }

        /*
         * Enabled aggressive block sorting
         */
        private void addRootSnake() {
            Snake snake = this.mSnakes.isEmpty() ? null : this.mSnakes.get(0);
            if (snake == null || snake.x != 0 || snake.y != 0) {
                snake = new Snake();
                snake.x = 0;
                snake.y = 0;
                snake.removal = false;
                snake.size = 0;
                snake.reverse = false;
                this.mSnakes.add(0, snake);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private void dispatchAdditions(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int n2, int n3, int n4) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onInserted(n2, n3);
                return;
            }
            --n3;
            while (n3 >= 0) {
                int n5 = this.mNewItemStatuses[n4 + n3] & 31;
                switch (n5) {
                    default: {
                        throw new IllegalStateException("unknown flag for pos " + (n4 + n3) + " " + Long.toBinaryString(n5));
                    }
                    case 0: {
                        listUpdateCallback.onInserted(n2, 1);
                        for (PostponedUpdate postponedUpdate : list) {
                            ++postponedUpdate.currentPos;
                        }
                        break;
                    }
                    case 4: 
                    case 8: {
                        int n6 = this.mNewItemStatuses[n4 + n3] >> 5;
                        listUpdateCallback.onMoved(DiffResult.removePostponedUpdate(list, (int)n6, (boolean)true).currentPos, n2);
                        if (n5 != 4) break;
                        listUpdateCallback.onChanged(n2, 1, this.mCallback.getChangePayload(n6, n4 + n3));
                        break;
                    }
                    case 16: {
                        list.add(new PostponedUpdate(n4 + n3, n2, false));
                    }
                }
                --n3;
            }
            return;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void dispatchRemovals(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int n2, int n3, int n4) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onRemoved(n2, n3);
                return;
            }
            --n3;
            while (n3 >= 0) {
                int n5 = this.mOldItemStatuses[n4 + n3] & 31;
                switch (n5) {
                    default: {
                        throw new IllegalStateException("unknown flag for pos " + (n4 + n3) + " " + Long.toBinaryString(n5));
                    }
                    case 0: {
                        listUpdateCallback.onRemoved(n2 + n3, 1);
                        for (PostponedUpdate postponedUpdate : list) {
                            --postponedUpdate.currentPos;
                        }
                        break;
                    }
                    case 4: 
                    case 8: {
                        int n6 = this.mOldItemStatuses[n4 + n3] >> 5;
                        PostponedUpdate postponedUpdate = DiffResult.removePostponedUpdate(list, n6, false);
                        listUpdateCallback.onMoved(n2 + n3, postponedUpdate.currentPos - 1);
                        if (n5 != 4) break;
                        listUpdateCallback.onChanged(postponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(n4 + n3, n6));
                        break;
                    }
                    case 16: {
                        list.add(new PostponedUpdate(n4 + n3, n2 + n3, true));
                    }
                }
                --n3;
            }
            return;
        }

        private void findAddition(int n2, int n3, int n4) {
            if (this.mOldItemStatuses[n2 - 1] != 0) {
                return;
            }
            this.findMatchingItem(n2, n3, n4, false);
        }

        /*
         * Enabled aggressive block sorting
         */
        private boolean findMatchingItem(int n2, int n3, int n4, boolean bl) {
            int n5;
            int n6;
            int n7;
            if (bl) {
                n7 = n3 - 1;
                n5 = n2;
                n6 = n3 - 1;
                n3 = n5;
            } else {
                n7 = n2 - 1;
                n5 = n2 - 1;
                n6 = n3;
                n3 = n5;
            }
            while (n4 >= 0) {
                Snake snake = this.mSnakes.get(n4);
                n5 = snake.x;
                int n8 = snake.size;
                int n9 = snake.y;
                int n10 = snake.size;
                if (bl) {
                    --n3;
                    while (n3 >= n5 + n8) {
                        if (this.mCallback.areItemsTheSame(n3, n7)) {
                            n2 = this.mCallback.areContentsTheSame(n3, n7) ? 8 : 4;
                            this.mNewItemStatuses[n7] = n3 << 5 | 16;
                            this.mOldItemStatuses[n3] = n7 << 5 | n2;
                            return true;
                        }
                        --n3;
                    }
                } else {
                    for (n3 = n6 - 1; n3 >= n9 + n10; --n3) {
                        if (!this.mCallback.areItemsTheSame(n7, n3)) continue;
                        n4 = this.mCallback.areContentsTheSame(n7, n3) ? 8 : 4;
                        this.mOldItemStatuses[n2 - 1] = n3 << 5 | 16;
                        this.mNewItemStatuses[n3] = n2 - 1 << 5 | n4;
                        return true;
                    }
                }
                n3 = snake.x;
                n6 = snake.y;
                --n4;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void findMatchingItems() {
            int n2 = this.mOldListSize;
            int n3 = this.mNewListSize;
            int n4 = this.mSnakes.size() - 1;
            while (n4 >= 0) {
                int n5;
                Snake snake = this.mSnakes.get(n4);
                int n6 = snake.x;
                int n7 = snake.size;
                int n8 = snake.y;
                int n9 = snake.size;
                if (this.mDetectMoves) {
                    do {
                        if (n2 <= n6 + n7) break;
                        this.findAddition(n2, n3, n4);
                        --n2;
                    } while (true);
                    for (n5 = n3; n5 > n8 + n9; --n5) {
                        this.findRemoval(n2, n5, n4);
                    }
                }
                for (n3 = 0; n3 < snake.size; ++n3) {
                    n5 = snake.x + n3;
                    n8 = snake.y + n3;
                    n2 = this.mCallback.areContentsTheSame(n5, n8) ? 1 : 2;
                    this.mOldItemStatuses[n5] = n8 << 5 | n2;
                    this.mNewItemStatuses[n8] = n5 << 5 | n2;
                }
                n2 = snake.x;
                n3 = snake.y;
                --n4;
            }
            return;
        }

        private void findRemoval(int n2, int n3, int n4) {
            if (this.mNewItemStatuses[n3 - 1] != 0) {
                return;
            }
            this.findMatchingItem(n2, n3, n4, true);
        }

        /*
         * Enabled aggressive block sorting
         */
        private static PostponedUpdate removePostponedUpdate(List<PostponedUpdate> list, int n2, boolean bl) {
            PostponedUpdate postponedUpdate;
            int n3;
            block3 : {
                n3 = list.size() - 1;
                while (n3 >= 0) {
                    postponedUpdate = list.get(n3);
                    if (postponedUpdate.posInOwnerList != n2 || postponedUpdate.removal != bl) {
                        --n3;
                        continue;
                    }
                    break block3;
                }
                return null;
            }
            list.remove(n3);
            n2 = n3;
            do {
                PostponedUpdate postponedUpdate2 = postponedUpdate;
                if (n2 >= list.size()) return postponedUpdate2;
                postponedUpdate2 = list.get(n2);
                int n4 = postponedUpdate2.currentPos;
                n3 = bl ? 1 : -1;
                postponedUpdate2.currentPos = n3 + n4;
                ++n2;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            listUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback)listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            ArrayList<PostponedUpdate> arrayList = new ArrayList<PostponedUpdate>();
            int n2 = this.mOldListSize;
            int n3 = this.mNewListSize;
            int n4 = this.mSnakes.size() - 1;
            do {
                if (n4 < 0) {
                    listUpdateCallback.dispatchLastEvent();
                    return;
                }
                Snake snake = this.mSnakes.get(n4);
                int n5 = snake.size;
                int n6 = snake.x + n5;
                int n7 = snake.y + n5;
                if (n6 < n2) {
                    this.dispatchRemovals(arrayList, listUpdateCallback, n6, n2 - n6, n6);
                }
                if (n7 < n3) {
                    this.dispatchAdditions(arrayList, listUpdateCallback, n6, n3 - n7, n7);
                }
                for (n3 = n5 - 1; n3 >= 0; --n3) {
                    if ((this.mOldItemStatuses[snake.x + n3] & 31) != 2) continue;
                    listUpdateCallback.onChanged(snake.x + n3, 1, this.mCallback.getChangePayload(snake.x + n3, snake.y + n3));
                }
                n2 = snake.x;
                n3 = snake.y;
                --n4;
            } while (true);
        }

        public void dispatchUpdatesTo(final RecyclerView.Adapter adapter) {
            this.dispatchUpdatesTo(new ListUpdateCallback(){

                @Override
                public void onChanged(int n2, int n3, Object object) {
                    adapter.notifyItemRangeChanged(n2, n3, object);
                }

                @Override
                public void onInserted(int n2, int n3) {
                    adapter.notifyItemRangeInserted(n2, n3);
                }

                @Override
                public void onMoved(int n2, int n3) {
                    adapter.notifyItemMoved(n2, n3);
                }

                @Override
                public void onRemoved(int n2, int n3) {
                    adapter.notifyItemRangeRemoved(n2, n3);
                }
            });
        }

        @VisibleForTesting
        List<Snake> getSnakes() {
            return this.mSnakes;
        }

    }

    private static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int n2, int n3, boolean bl) {
            this.posInOwnerList = n2;
            this.currentPos = n3;
            this.removal = bl;
        }
    }

    static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int n2, int n3, int n4, int n5) {
            this.oldListStart = n2;
            this.oldListEnd = n3;
            this.newListStart = n4;
            this.newListEnd = n5;
        }
    }

    static class Snake {
        boolean removal;
        boolean reverse;
        int size;
        int x;
        int y;

        Snake() {
        }
    }

}

