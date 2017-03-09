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
import android.view.View;

class ViewCompatApi24 {
    private ViewCompatApi24() {
    }

    public static void cancelDragAndDrop(View view) {
        view.cancelDragAndDrop();
    }

    public static boolean startDragAndDrop(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object object, int n2) {
        return view.startDragAndDrop(clipData, dragShadowBuilder, object, n2);
    }

    public static void updateDragShadow(View view, View.DragShadowBuilder dragShadowBuilder) {
        view.updateDragShadow(dragShadowBuilder);
    }
}

