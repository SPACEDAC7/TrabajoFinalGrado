/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Handler
 *  io.fabric.sdk.android.ActivityLifecycleManager
 *  io.fabric.sdk.android.ActivityLifecycleManager$Callbacks
 *  io.fabric.sdk.android.DefaultLogger
 *  io.fabric.sdk.android.Fabric$1
 *  io.fabric.sdk.android.Fabric$2
 *  io.fabric.sdk.android.Fabric$Builder
 *  io.fabric.sdk.android.FabricKitsFinder
 *  io.fabric.sdk.android.InitializationCallback
 *  io.fabric.sdk.android.InitializationTask
 *  io.fabric.sdk.android.KitInfo
 *  io.fabric.sdk.android.Logger
 *  io.fabric.sdk.android.Onboarding
 *  io.fabric.sdk.android.services.concurrency.PriorityThreadPoolExecutor
 *  io.fabric.sdk.android.services.concurrency.Task
 *  io.fabric.sdk.android.services.concurrency.UnmetDependencyException
 */
package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.DefaultLogger;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.FabricKitsFinder;
import io.fabric.sdk.android.InitializationCallback;
import io.fabric.sdk.android.InitializationTask;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.KitGroup;
import io.fabric.sdk.android.KitInfo;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.Onboarding;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.PriorityThreadPoolExecutor;
import io.fabric.sdk.android.services.concurrency.Task;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

public class Fabric {
    static final boolean DEFAULT_DEBUGGABLE = false;
    static final Logger DEFAULT_LOGGER = new DefaultLogger();
    static final String ROOT_DIR = ".Fabric";
    public static final String TAG = "Fabric";
    static volatile Fabric singleton;
    private WeakReference<Activity> activity;
    private ActivityLifecycleManager activityLifecycleManager;
    private final Context context;
    final boolean debuggable;
    private final ExecutorService executorService;
    private final IdManager idManager;
    private final InitializationCallback<Fabric> initializationCallback;
    private AtomicBoolean initialized;
    private final InitializationCallback<?> kitInitializationCallback;
    private final Map<Class<? extends Kit>, Kit> kits;
    final Logger logger;
    private final Handler mainHandler;

    Fabric(Context context, Map<Class<? extends Kit>, Kit> map, PriorityThreadPoolExecutor priorityThreadPoolExecutor, Handler handler, Logger logger, boolean bl, InitializationCallback initializationCallback, IdManager idManager) {
        this.context = context;
        this.kits = map;
        this.executorService = priorityThreadPoolExecutor;
        this.mainHandler = handler;
        this.logger = logger;
        this.debuggable = bl;
        this.initializationCallback = initializationCallback;
        this.initialized = new AtomicBoolean(false);
        this.kitInitializationCallback = this.createKitInitializationCallback(map.size());
        this.idManager = idManager;
    }

    static /* synthetic */ Map access$000(Collection collection) {
        return Fabric.getKitMap(collection);
    }

    static /* synthetic */ AtomicBoolean access$100(Fabric fabric) {
        return fabric.initialized;
    }

    static /* synthetic */ InitializationCallback access$200(Fabric fabric) {
        return fabric.initializationCallback;
    }

    private static void addToKitMap(Map<Class<? extends Kit>, Kit> map, Collection<? extends Kit> object) {
        object = object.iterator();
        while (object.hasNext()) {
            Kit kit = (Kit)object.next();
            map.put(kit.getClass(), kit);
            if (!(kit instanceof KitGroup)) continue;
            Fabric.addToKitMap(map, ((KitGroup)((Object)kit)).getKits());
        }
    }

    private Activity extractActivity(Context context) {
        if (context instanceof Activity) {
            return (Activity)context;
        }
        return null;
    }

    public static <T extends Kit> T getKit(Class<T> class_) {
        return (T)Fabric.singleton().kits.get(class_);
    }

    private static Map<Class<? extends Kit>, Kit> getKitMap(Collection<? extends Kit> collection) {
        HashMap<Class<? extends Kit>, Kit> hashMap = new HashMap<Class<? extends Kit>, Kit>(collection.size());
        Fabric.addToKitMap(hashMap, collection);
        return hashMap;
    }

    public static Logger getLogger() {
        if (singleton == null) {
            return DEFAULT_LOGGER;
        }
        return Fabric.singleton.logger;
    }

    private void init() {
        this.setCurrentActivity(this.extractActivity(this.context));
        this.activityLifecycleManager = new ActivityLifecycleManager(this.context);
        this.activityLifecycleManager.registerCallbacks((ActivityLifecycleManager.Callbacks)new 1(this));
        this.initializeKits(this.context);
    }

    public static boolean isDebuggable() {
        if (singleton == null) {
            return false;
        }
        return Fabric.singleton.debuggable;
    }

    public static boolean isInitialized() {
        if (singleton != null && Fabric.singleton.initialized.get()) {
            return true;
        }
        return false;
    }

    private static void setFabric(Fabric fabric) {
        singleton = fabric;
        fabric.init();
    }

    static Fabric singleton() {
        if (singleton == null) {
            throw new IllegalStateException("Must Initialize Fabric before using singleton()");
        }
        return singleton;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static /* varargs */ Fabric with(Context context, Kit ... arrkit) {
        if (singleton == null) {
            synchronized (Fabric.class) {
                if (singleton == null) {
                    Fabric.setFabric(new Builder(context).kits(arrkit).build());
                }
            }
        }
        return singleton;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Fabric with(Fabric fabric) {
        if (singleton == null) {
            synchronized (Fabric.class) {
                if (singleton == null) {
                    Fabric.setFabric(fabric);
                }
            }
        }
        return singleton;
    }

    void addAnnotatedDependencies(Map<Class<? extends Kit>, Kit> map, Kit kit) {
        Class<?>[] arrclass = kit.dependsOnAnnotation;
        if (arrclass != null) {
            for (Class class_ : arrclass.value()) {
                if (class_.isInterface()) {
                    for (Kit kit2 : map.values()) {
                        if (!class_.isAssignableFrom(kit2.getClass())) continue;
                        kit.initializationTask.addDependency(kit2.initializationTask);
                    }
                    continue;
                }
                if (map.get(class_) == null) {
                    throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
                }
                kit.initializationTask.addDependency(map.get(class_).initializationTask);
            }
        }
    }

    InitializationCallback<?> createKitInitializationCallback(int n2) {
        return new 2(this, n2);
    }

    public ActivityLifecycleManager getActivityLifecycleManager() {
        return this.activityLifecycleManager;
    }

    public String getAppIdentifier() {
        return this.idManager.getAppIdentifier();
    }

    public String getAppInstallIdentifier() {
        return this.idManager.getAppInstallIdentifier();
    }

    public Activity getCurrentActivity() {
        if (this.activity != null) {
            return this.activity.get();
        }
        return null;
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    public Collection<Kit> getKits() {
        return this.kits.values();
    }

    Future<Map<String, KitInfo>> getKitsFinderFuture(Context context) {
        context = new FabricKitsFinder(context.getPackageCodePath());
        return this.getExecutorService().submit(context);
    }

    public Handler getMainHandler() {
        return this.mainHandler;
    }

    public String getVersion() {
        return "1.3.12.127";
    }

    /*
     * Enabled aggressive block sorting
     */
    void initializeKits(Context object) {
        Onboarding onboarding = this.getKitsFinderFuture((Context)object);
        Object object2 = this.getKits();
        onboarding = new Onboarding(onboarding, object2);
        object2 = new ArrayList<Kit>((Collection<Kit>)object2);
        Collections.sort(object2);
        onboarding.injectParameters((Context)object, this, InitializationCallback.EMPTY, this.idManager);
        Object object3 = object2.iterator();
        while (object3.hasNext()) {
            object3.next().injectParameters((Context)object, this, this.kitInitializationCallback, this.idManager);
        }
        onboarding.initialize();
        object = Fabric.getLogger().isLoggable("Fabric", 3) ? new StringBuilder("Initializing ").append(this.getIdentifier()).append(" [Version: ").append(this.getVersion()).append("], with the following kits:\n") : null;
        object2 = object2.iterator();
        while (object2.hasNext()) {
            object3 = (Kit)object2.next();
            object3.initializationTask.addDependency((Task)onboarding.initializationTask);
            this.addAnnotatedDependencies(this.kits, (Kit)object3);
            object3.initialize();
            if (object == null) continue;
            object.append(object3.getIdentifier()).append(" [Version: ").append(object3.getVersion()).append("]\n");
        }
        if (object != null) {
            Fabric.getLogger().d("Fabric", object.toString());
        }
    }

    public Fabric setCurrentActivity(Activity activity) {
        this.activity = new WeakReference<Activity>(activity);
        return this;
    }
}

