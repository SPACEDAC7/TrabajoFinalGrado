/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.content;

import android.os.Build;
import android.support.v4.content.ExecutorCompatHoneycomb;
import android.support.v4.content.ModernAsyncTask;
import java.util.concurrent.Executor;

public final class ParallelExecutorCompat {
    private ParallelExecutorCompat() {
    }

    public static Executor getParallelExecutor() {
        if (Build.VERSION.SDK_INT >= 11) {
            return ExecutorCompatHoneycomb.getParallelExecutor();
        }
        return ModernAsyncTask.THREAD_POOL_EXECUTOR;
    }
}

