/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  bolts.Task.TaskCompletionSource
 */
package bolts;

import bolts.AggregateException;
import bolts.AndroidExecutors;
import bolts.BoltsExecutors;
import bolts.Capture;
import bolts.Continuation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class Task<TResult> {
    public static final ExecutorService BACKGROUND_EXECUTOR = BoltsExecutors.background();
    private static final Executor IMMEDIATE_EXECUTOR = BoltsExecutors.immediate();
    public static final Executor UI_THREAD_EXECUTOR = AndroidExecutors.uiThread();
    private boolean cancelled;
    private boolean complete;
    private List<Continuation<TResult, Void>> continuations = new ArrayList<Continuation<TResult, Void>>();
    private Exception error;
    private final Object lock = new Object();
    private TResult result;

    private Task() {
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return Task.call(callable, IMMEDIATE_EXECUTOR);
    }

    public static <TResult> Task<TResult> call(final Callable<TResult> callable, Executor executor) {
        final TaskCompletionSource taskCompletionSource = Task.create();
        executor.execute(new Runnable(){

            @Override
            public void run() {
                try {
                    taskCompletionSource.setResult(callable.call());
                    return;
                }
                catch (Exception var1_1) {
                    taskCompletionSource.setError(var1_1);
                    return;
                }
            }
        });
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<TResult> callInBackground(Callable<TResult> callable) {
        return Task.call(callable, BACKGROUND_EXECUTOR);
    }

    public static <TResult> Task<TResult> cancelled() {
        TaskCompletionSource taskCompletionSource = Task.create();
        taskCompletionSource.setCancelled();
        return taskCompletionSource.getTask();
    }

    private static <TContinuationResult, TResult> void completeAfterTask(bolts.Task.TaskCompletionSource taskCompletionSource, final Continuation<TResult, Task<TContinuationResult>> continuation, final Task<TResult> task, Executor executor) {
        executor.execute(new Runnable((TaskCompletionSource)taskCompletionSource){
            final /* synthetic */ TaskCompletionSource val$tcs;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void run() {
                try {
                    Task task2 = (Task)continuation.then(task);
                    if (task2 == null) {
                        this.val$tcs.setResult(null);
                        return;
                    }
                    task2.continueWith(new Continuation<TContinuationResult, Void>(){

                        /*
                         * Enabled force condition propagation
                         * Lifted jumps to return sites
                         */
                        @Override
                        public Void then(Task<TContinuationResult> task) {
                            if (task.isCancelled()) {
                                10.this.val$tcs.setCancelled();
                                do {
                                    return null;
                                    break;
                                } while (true);
                            }
                            if (task.isFaulted()) {
                                10.this.val$tcs.setError(task.getError());
                                return null;
                            }
                            10.this.val$tcs.setResult(task.getResult());
                            return null;
                        }
                    });
                    return;
                }
                catch (Exception var1_2) {
                    this.val$tcs.setError(var1_2);
                    return;
                }
            }

        });
    }

    private static <TContinuationResult, TResult> void completeImmediately(bolts.Task.TaskCompletionSource taskCompletionSource, final Continuation<TResult, TContinuationResult> continuation, final Task<TResult> task, Executor executor) {
        executor.execute(new Runnable((TaskCompletionSource)taskCompletionSource){
            final /* synthetic */ TaskCompletionSource val$tcs;

            @Override
            public void run() {
                try {
                    Object TContinuationResult = continuation.then(task);
                    this.val$tcs.setResult(TContinuationResult);
                    return;
                }
                catch (Exception var1_2) {
                    this.val$tcs.setError(var1_2);
                    return;
                }
            }
        });
    }

    public static <TResult> bolts.Task.TaskCompletionSource create() {
        Task<TResult> task = new Task<TResult>();
        task.getClass();
        return task.new TaskCompletionSource();
    }

    public static <TResult> Task<TResult> forError(Exception exception) {
        TaskCompletionSource taskCompletionSource = Task.create();
        taskCompletionSource.setError(exception);
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<TResult> forResult(TResult TResult) {
        TaskCompletionSource taskCompletionSource = Task.create();
        taskCompletionSource.setResult(TResult);
        return taskCompletionSource.getTask();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void runContinuations() {
        Object object = this.lock;
        synchronized (object) {
            Iterator<Continuation<TResult, Void>> iterator = this.continuations.iterator();
            do {
                if (!iterator.hasNext()) {
                    this.continuations = null;
                    return;
                }
                Continuation<TResult, Void> continuation = iterator.next();
                try {
                    continuation.then(this);
                    continue;
                }
                catch (RuntimeException var2_3) {
                    throw var2_3;
                }
                catch (Exception var2_4) {}
                throw new RuntimeException(var2_4);
                {
                    continue;
                }
                break;
            } while (true);
        }
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> object) {
        if (object.size() == 0) {
            return Task.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = Task.create();
        final ArrayList arrayList = new ArrayList();
        final Object object2 = new Object();
        final AtomicInteger atomicInteger = new AtomicInteger(object.size());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        object = object.iterator();
        while (object.hasNext()) {
            ((Task)object.next()).continueWith(new Continuation<Object, Void>(){

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 * Enabled aggressive exception aggregation
                 * Converted monitor instructions to comments
                 * Lifted jumps to return sites
                 */
                @Override
                public Void then(Task<Object> object) {
                    if (object.isFaulted()) {
                        Object object22 = object2;
                        // MONITORENTER : object22
                        arrayList.add(object.getError());
                        // MONITOREXIT : object22
                    }
                    if (object.isCancelled()) {
                        atomicBoolean.set(true);
                    }
                    if (atomicInteger.decrementAndGet() != 0) return null;
                    if (arrayList.size() != 0) {
                        if (arrayList.size() == 1) {
                            taskCompletionSource.setError((Exception)arrayList.get(0));
                            return null;
                        }
                        object = arrayList.toArray(new Throwable[arrayList.size()]);
                        object = new AggregateException(String.format("There were %d exceptions.", arrayList.size()), (Throwable[])object);
                        taskCompletionSource.setError((Exception)object);
                        return null;
                    }
                    if (atomicBoolean.get()) {
                        taskCompletionSource.setCancelled();
                        return null;
                    }
                    taskCompletionSource.setResult(null);
                    return null;
                }
            });
        }
        return taskCompletionSource.getTask();
    }

    public <TOut> Task<TOut> cast() {
        return this;
    }

    public Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation) {
        return this.continueWhile(callable, continuation, IMMEDIATE_EXECUTOR);
    }

    public Task<Void> continueWhile(final Callable<Boolean> callable, final Continuation<Void, Task<Void>> continuation, final Executor executor) {
        final Capture<> capture = new Capture<>();
        capture.set(()new Continuation<Void, Task<Void>>(){

            @Override
            public Task<Void> then(Task<Void> task) throws Exception {
                if (((Boolean)callable.call()).booleanValue()) {
                    return Task.forResult(null).onSuccessTask(continuation, executor).onSuccessTask((Continuation)capture.get(), executor);
                }
                return Task.forResult(null);
            }
        });
        return this.makeVoid().continueWithTask((Continuation)capture.get(), executor);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return this.continueWith(continuation, IMMEDIATE_EXECUTOR);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public <TContinuationResult> Task<TContinuationResult> continueWith(final Continuation<TResult, TContinuationResult> continuation, final Executor executor) {
        final TaskCompletionSource taskCompletionSource = Task.create();
        Object object = this.lock;
        // MONITORENTER : object
        boolean bl = this.isCompleted();
        if (!bl) {
            this.continuations.add(()new Continuation<TResult, Void>(){

                @Override
                public Void then(Task<TResult> task) {
                    Task.completeImmediately((TaskCompletionSource)taskCompletionSource, (Continuation)continuation, (Task)task, (Executor)executor);
                    return null;
                }
            });
        }
        // MONITOREXIT : object
        if (!bl) return taskCompletionSource.getTask();
        Task.completeImmediately((TaskCompletionSource)taskCompletionSource, continuation, (Task)this, (Executor)executor);
        return taskCompletionSource.getTask();
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return this.continueWithTask(continuation, IMMEDIATE_EXECUTOR);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(final Continuation<TResult, Task<TContinuationResult>> continuation, final Executor executor) {
        final TaskCompletionSource taskCompletionSource = Task.create();
        Object object = this.lock;
        // MONITORENTER : object
        boolean bl = this.isCompleted();
        if (!bl) {
            this.continuations.add(()new Continuation<TResult, Void>(){

                @Override
                public Void then(Task<TResult> task) {
                    Task.completeAfterTask((TaskCompletionSource)taskCompletionSource, (Continuation)continuation, (Task)task, (Executor)executor);
                    return null;
                }
            });
        }
        // MONITOREXIT : object
        if (!bl) return taskCompletionSource.getTask();
        Task.completeAfterTask((TaskCompletionSource)taskCompletionSource, continuation, (Task)this, (Executor)executor);
        return taskCompletionSource.getTask();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Exception getError() {
        Object object = this.lock;
        synchronized (object) {
            return this.error;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public TResult getResult() {
        Object object = this.lock;
        synchronized (object) {
            TResult TResult = this.result;
            return TResult;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isCancelled() {
        Object object = this.lock;
        synchronized (object) {
            return this.cancelled;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isCompleted() {
        Object object = this.lock;
        synchronized (object) {
            return this.complete;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isFaulted() {
        Object object = this.lock;
        synchronized (object) {
            if (this.error == null) return false;
            return true;
        }
    }

    public Task<Void> makeVoid() {
        return this.continueWithTask(new Continuation<TResult, Task<Void>>(){

            @Override
            public Task<Void> then(Task<TResult> task) throws Exception {
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                return Task.forResult(null);
            }
        });
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation) {
        return this.onSuccess(continuation, IMMEDIATE_EXECUTOR);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(final Continuation<TResult, TContinuationResult> continuation, Executor executor) {
        return this.continueWithTask(new Continuation<TResult, Task<TContinuationResult>>(){

            @Override
            public Task<TContinuationResult> then(Task<TResult> task) {
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                return task.continueWith(continuation);
            }
        }, executor);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return this.onSuccessTask(continuation, IMMEDIATE_EXECUTOR);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(final Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor) {
        return this.continueWithTask(new Continuation<TResult, Task<TContinuationResult>>(){

            @Override
            public Task<TContinuationResult> then(Task<TResult> task) {
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                return task.continueWithTask(continuation);
            }
        }, executor);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void waitForCompletion() throws InterruptedException {
        Object object = this.lock;
        synchronized (object) {
            if (!this.isCompleted()) {
                this.lock.wait();
            }
            return;
        }
    }

    public class TaskCompletionSource {
        private TaskCompletionSource() {
        }

        public Task<TResult> getTask() {
            return Task.this;
        }

        public void setCancelled() {
            if (!this.trySetCancelled()) {
                throw new IllegalStateException("Cannot cancel a completed task.");
            }
        }

        public void setError(Exception exception) {
            if (!this.trySetError(exception)) {
                throw new IllegalStateException("Cannot set the error on a completed task.");
            }
        }

        public void setResult(TResult TResult) {
            if (!this.trySetResult(TResult)) {
                throw new IllegalStateException("Cannot set the result of a completed task.");
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public boolean trySetCancelled() {
            Object object = Task.this.lock;
            synchronized (object) {
                if (Task.this.complete) {
                    return false;
                }
                Task.this.complete = true;
                Task.this.cancelled = true;
                Task.this.lock.notifyAll();
                Task.this.runContinuations();
                return true;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public boolean trySetError(Exception exception) {
            Object object = Task.this.lock;
            synchronized (object) {
                if (Task.this.complete) {
                    return false;
                }
                Task.this.complete = true;
                Task.this.error = exception;
                Task.this.lock.notifyAll();
                Task.this.runContinuations();
                return true;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public boolean trySetResult(TResult TResult) {
            Object object = Task.this.lock;
            synchronized (object) {
                if (Task.this.complete) {
                    return false;
                }
                Task.this.complete = true;
                Task.this.result = TResult;
                Task.this.lock.notifyAll();
                Task.this.runContinuations();
                return true;
            }
        }
    }

}

