/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package android.support.v7.widget;

import android.support.v7.widget.OrientationHelper;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ScrollbarHelper {
    ScrollbarHelper() {
    }

    static int computeScrollExtent(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean bl) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!bl) {
            return Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1;
        }
        int n2 = orientationHelper.getDecoratedEnd(view2);
        int n3 = orientationHelper.getDecoratedStart(view);
        return Math.min(orientationHelper.getTotalSpace(), n2 - n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    static int computeScrollOffset(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean bl, boolean bl2) {
        int n2;
        int n3 = n2 = 0;
        if (layoutManager.getChildCount() == 0) return n3;
        n3 = n2;
        if (state.getItemCount() == 0) return n3;
        n3 = n2;
        if (view == null) return n3;
        if (view2 == null) {
            return n2;
        }
        n2 = Math.min(layoutManager.getPosition(view), layoutManager.getPosition(view2));
        n3 = Math.max(layoutManager.getPosition(view), layoutManager.getPosition(view2));
        n2 = bl2 ? Math.max(0, state.getItemCount() - n3 - 1) : Math.max(0, n2);
        n3 = n2;
        if (!bl) return n3;
        n3 = Math.abs(orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view));
        int n4 = Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2));
        float f2 = (float)n3 / (float)(n4 + 1);
        return Math.round((float)n2 * f2 + (float)(orientationHelper.getStartAfterPadding() - orientationHelper.getDecoratedStart(view)));
    }

    static int computeScrollRange(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean bl) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!bl) {
            return state.getItemCount();
        }
        int n2 = orientationHelper.getDecoratedEnd(view2);
        int n3 = orientationHelper.getDecoratedStart(view);
        int n4 = Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2));
        return (int)((float)(n2 - n3) / (float)(n4 + 1) * (float)state.getItemCount());
    }
}

