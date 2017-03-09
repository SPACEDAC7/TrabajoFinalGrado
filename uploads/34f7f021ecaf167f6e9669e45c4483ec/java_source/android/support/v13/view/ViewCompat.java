/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ClipData
 *  android.view.View
 *  android.view.View$DragShadowBuilder
 */
package android.support.v13.view;

import android.content.ClipData;
import android.support.v13.view.ViewCompatApi24;
import android.support.v4.os.BuildCompat;
import android.view.View;

public class ViewCompat
extends android.support.v4.view.ViewCompat {
    static ViewCompatImpl IMPL = BuildCompat.isAtLeastN() ? new Api24ViewCompatImpl() : new BaseViewCompatImpl();

    private ViewCompat() {
    }

    public static void cancelDragAndDrop(View view) {
        IMPL.cancelDragAndDrop(view);
    }

    public static boolean startDragAndDrop(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object object, int n2) {
        return IMPL.startDragAndDrop(view, clipData, dragShadowBuilder, object, n2);
    }

    public static void updateDragShadow(View view, View.DragShadowBuilder dragShadowBuilder) {
        IMPL.updateDragShadow(view, dragShadowBuilder);
    }

    private static class Api24ViewCompatImpl
    implements ViewCompatImpl {
        Api24ViewCompatImpl() {
        }

        @Override
        public void cancelDragAndDrop(View view) {
            ViewCompatApi24.cancelDragAndDrop(view);
        }

        @Override
        public boolean startDragAndDrop(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object object, int n2) {
            return ViewCompatApi24.startDragAndDrop(view, clipData, dragShadowBuilder, object, n2);
        }

        @Override
        public void updateDragShadow(View view, View.DragShadowBuilder dragShadowBuilder) {
            ViewCompatApi24.updateDragShadow(view, dragShadowBuilder);
        }
    }

    private static class BaseViewCompatImpl
    implements ViewCompatImpl {
        BaseViewCompatImpl() {
        }

        @Override
        public void cancelDragAndDrop(View view) {
        }

        @Override
        public boolean startDragAndDrop(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object object, int n2) {
            return view.startDrag(clipData, dragShadowBuilder, object, n2);
        }

        @Override
        public void updateDragShadow(View view, View.DragShadowBuilder dragShadowBuilder) {
        }
    }

    static interface ViewCompatImpl {
        public void cancelDragAndDrop(View var1);

        public boolean startDragAndDrop(View var1, ClipData var2, View.DragShadowBuilder var3, Object var4, int var5);

        public void updateDragShadow(View var1, View.DragShadowBuilder var2);
    }

}

