/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.browse.MediaBrowser
 *  android.media.browse.MediaBrowser$MediaItem
 */
package android.support.v4.media;

import android.media.browse.MediaBrowser;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

class ParceledListSliceAdapterApi21 {
    private static Constructor sConstructor;

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static {
        try {
            ParceledListSliceAdapterApi21.sConstructor = Class.forName("android.content.pm.ParceledListSlice").getConstructor(new Class[]{List.class});
            return;
        }
        catch (ClassNotFoundException var0) {}
        ** GOTO lbl-1000
        catch (NoSuchMethodException var0_2) {}
lbl-1000: // 2 sources:
        {
            var0_1.printStackTrace();
            return;
        }
    }

    ParceledListSliceAdapterApi21() {
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static Object newInstance(List<MediaBrowser.MediaItem> var0) {
        try {
            return ParceledListSliceAdapterApi21.sConstructor.newInstance(new Object[]{var0 /* !! */ });
        }
        catch (InstantiationException var0_2) {}
        ** GOTO lbl-1000
        catch (IllegalAccessException var0_4) {
            ** GOTO lbl-1000
        }
        catch (InvocationTargetException var0_5) {}
lbl-1000: // 3 sources:
        {
            var0_3.printStackTrace();
            return null;
        }
    }
}

