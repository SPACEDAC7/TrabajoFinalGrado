/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.ViewConfiguration
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.ViewConfigurationCompatICS;
import android.view.ViewConfiguration;

public final class ViewConfigurationCompat {
    static final ViewConfigurationVersionImpl IMPL = Build.VERSION.SDK_INT >= 14 ? new IcsViewConfigurationVersionImpl() : (Build.VERSION.SDK_INT >= 11 ? new HoneycombViewConfigurationVersionImpl() : new BaseViewConfigurationVersionImpl());

    private ViewConfigurationCompat() {
    }

    @Deprecated
    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledPagingTouchSlop();
    }

    public static boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return IMPL.hasPermanentMenuKey(viewConfiguration);
    }

    static class BaseViewConfigurationVersionImpl
    implements ViewConfigurationVersionImpl {
        BaseViewConfigurationVersionImpl() {
        }

        @Override
        public boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
            return true;
        }
    }

    static class HoneycombViewConfigurationVersionImpl
    extends BaseViewConfigurationVersionImpl {
        HoneycombViewConfigurationVersionImpl() {
        }

        @Override
        public boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
            return false;
        }
    }

    static class IcsViewConfigurationVersionImpl
    extends HoneycombViewConfigurationVersionImpl {
        IcsViewConfigurationVersionImpl() {
        }

        @Override
        public boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
            return ViewConfigurationCompatICS.hasPermanentMenuKey(viewConfiguration);
        }
    }

    static interface ViewConfigurationVersionImpl {
        public boolean hasPermanentMenuKey(ViewConfiguration var1);
    }

}

