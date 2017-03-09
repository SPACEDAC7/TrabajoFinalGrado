/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.view.DragAndDropPermissions
 *  android.view.DragEvent
 */
package android.support.v13.view;

import android.app.Activity;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;

class DragAndDropPermissionsCompatApi24 {
    DragAndDropPermissionsCompatApi24() {
    }

    public static void release(Object object) {
        ((DragAndDropPermissions)object).release();
    }

    public static Object request(Activity activity, DragEvent dragEvent) {
        return activity.requestDragAndDropPermissions(dragEvent);
    }
}

