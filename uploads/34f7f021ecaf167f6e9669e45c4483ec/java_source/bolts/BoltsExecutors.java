/*
 * Decompiled with CFR 0_115.
 */
package bolts;

import bolts.AndroidExecutors;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class BoltsExecutors {
    private static final BoltsExecutors INSTANCE = new BoltsExecutors();
    private final ExecutorService background;
    private final Executor immediate;

    /*
     * Enabled aggressive block sorting
     */
    private BoltsExecutors() {
        ExecutorService executorService = !BoltsExecutors.isAndroidRuntime() ? Executors.newCachedThreadPool() : AndroidExecutors.newCachedThreadPool();
        this.background = executorService;
        this.immediate = new ImmediateExecutor();
    }

    public static ExecutorService background() {
        return BoltsExecutors.INSTANCE.background;
    }

    static Executor immediate() {
        return BoltsExecutors.INSTANCE.immediate;
    }

    private static boolean isAndroidRuntime() {
        String string2 = System.getProperty("java.runtime.name");
        if (string2 == null) {
            return false;
        }
        return string2.toLowerCase(Locale.US).contains("android");
    }

    private static class ImmediateExecutor
    implements Executor {
        private static final int MAX_DEPTH = 15;
        private ThreadLocal<Integer> executionDepth = new ThreadLocal();

        private ImmediateExecutor() {
        }

        private int decrementDepth() {
            Integer n2;
            int n3;
            Integer n4 = n2 = this.executionDepth.get();
            if (n2 == null) {
                n4 = 0;
            }
            if ((n3 = n4 - 1) == 0) {
                this.executionDepth.remove();
                return n3;
            }
            this.executionDepth.set(n3);
            return n3;
        }

        private int incrementDepth() {
            Integer n2;
            Integer n3 = n2 = this.executionDepth.get();
            if (n2 == null) {
                n3 = 0;
            }
            int n4 = n3 + 1;
            this.executionDepth.set(n4);
            return n4;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void execute(Runnable runnable) {
            if (this.incrementDepth() <= 15) {
                runnable.run();
                do {
                    return;
                    break;
                } while (true);
            }
            try {
                BoltsExecutors.background().execute(runnable);
                return;
            }
            catch (Throwable var1_2) {
                throw var1_2;
            }
            finally {
                this.decrementDepth();
            }
        }
    }

}

