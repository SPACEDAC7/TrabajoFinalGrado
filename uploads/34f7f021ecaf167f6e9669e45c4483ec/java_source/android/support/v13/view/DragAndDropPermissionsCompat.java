/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.view.DragEvent
 */
package android.support.v13.view;

import android.app.Activity;
import android.support.annotation.RestrictTo;
import android.support.v13.view.DragAndDropPermissionsCompatApi24;
import android.support.v4.os.BuildCompat;
import android.view.DragEvent;

public final class DragAndDropPermissionsCompat {
    private static DragAndDropPermissionsCompatImpl IMPL = BuildCompat.isAtLeastN() ? new Api24DragAndDropPermissionsCompatImpl() : new BaseDragAndDropPermissionsCompatImpl();
    private Object mDragAndDropPermissions;

    private DragAndDropPermissionsCompat(Object object) {
        this.mDragAndDropPermissions = object;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static DragAndDropPermissionsCompat request(Activity object, DragEvent dragEvent) {
        if ((object = IMPL.request((Activity)object, dragEvent)) != null) {
            return new DragAndDropPermissionsCompat(object);
        }
        return null;
    }

    public void release() {
        IMPL.release(this.mDragAndDropPermissions);
    }

    static class Api24DragAndDropPermissionsCompatImpl
    extends BaseDragAndDropPermissionsCompatImpl {
        Api24DragAndDropPermissionsCompatImpl() {
        }

        @Override
        public void release(Object object) {
            DragAndDropPermissionsCompatApi24.release(object);
        }

        @Override
        public Object request(Activity activity, DragEvent dragEvent) {
            return DragAndDropPermissionsCompatApi24.request(activity, dragEvent);
        }
    }

    static class BaseDragAndDropPermissionsCompatImpl
    implements DragAndDropPermissionsCompatImpl {
        BaseDragAndDropPermissionsCompatImpl() {
        }

        @Override
        public void release(Object object) {
        }

        @Override
        public Object request(Activity activity, DragEvent dragEvent) {
            return null;
        }
    }

    static interface DragAndDropPermissionsCompatImpl {
        public void release(Object var1);

        public Object request(Activity var1, DragEvent var2);
    }

}

