/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build;
import android.support.design.widget.ViewGroupUtilsHoneycomb;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupUtils {
    private static final ViewGroupUtilsImpl IMPL = Build.VERSION.SDK_INT >= 11 ? new ViewGroupUtilsImplHoneycomb() : new ViewGroupUtilsImplBase();

    ViewGroupUtils() {
    }

    static void getDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ViewGroupUtils.offsetDescendantRect(viewGroup, view, rect);
    }

    static void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
        IMPL.offsetDescendantRect(viewGroup, view, rect);
    }

    private static interface ViewGroupUtilsImpl {
        public void offsetDescendantRect(ViewGroup var1, View var2, Rect var3);
    }

    private static class ViewGroupUtilsImplBase
    implements ViewGroupUtilsImpl {
        ViewGroupUtilsImplBase() {
        }

        @Override
        public void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
            viewGroup.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(view.getScrollX(), view.getScrollY());
        }
    }

    private static class ViewGroupUtilsImplHoneycomb
    implements ViewGroupUtilsImpl {
        ViewGroupUtilsImplHoneycomb() {
        }

        @Override
        public void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
            ViewGroupUtilsHoneycomb.offsetDescendantRect(viewGroup, view, rect);
        }
    }

}

