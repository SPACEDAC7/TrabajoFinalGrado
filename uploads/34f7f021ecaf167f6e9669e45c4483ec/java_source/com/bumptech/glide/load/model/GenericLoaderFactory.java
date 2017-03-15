/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.load.model;

import android.content.Context;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class GenericLoaderFactory {
    private static final ModelLoader NULL_MODEL_LOADER = new ModelLoader(){

        public DataFetcher getResourceFetcher(Object object, int n2, int n3) {
            throw new NoSuchMethodError("This should never be called!");
        }

        public String toString() {
            return "NULL_MODEL_LOADER";
        }
    };
    private final Map<Class, Map<Class, ModelLoader>> cachedModelLoaders = new HashMap<Class, Map<Class, ModelLoader>>();
    private final Context context;
    private final Map<Class, Map<Class, ModelLoaderFactory>> modelClassToResourceFactories = new HashMap<Class, Map<Class, ModelLoaderFactory>>();

    public GenericLoaderFactory(Context context) {
        this.context = context.getApplicationContext();
    }

    private <T, Y> void cacheModelLoader(Class<T> class_, Class<Y> class_2, ModelLoader<T, Y> modelLoader) {
        Map<Class, ModelLoader> map;
        Map<Class, ModelLoader> map2 = map = this.cachedModelLoaders.get(class_);
        if (map == null) {
            map2 = new HashMap<Class, ModelLoader>();
            this.cachedModelLoaders.put(class_, map2);
        }
        map2.put(class_2, modelLoader);
    }

    private <T, Y> void cacheNullLoader(Class<T> class_, Class<Y> class_2) {
        this.cacheModelLoader(class_, class_2, NULL_MODEL_LOADER);
    }

    private <T, Y> ModelLoader<T, Y> getCachedLoader(Class<T> object, Class<Y> class_) {
        Map<Class, ModelLoader> map = this.cachedModelLoaders.get(object);
        object = null;
        if (map != null) {
            object = map.get(class_);
        }
        return object;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private <T, Y> ModelLoaderFactory<T, Y> getFactory(Class<T> var1_1, Class<Y> var2_2) {
        var4_3 = this.modelClassToResourceFactories.get(var1_1);
        var3_4 = null;
        if (var4_3 != null) {
            var3_4 = var4_3.get(var2_2);
        }
        var4_3 = var3_4;
        if (var3_4 != null) return var4_3;
        var5_5 = this.modelClassToResourceFactories.keySet().iterator();
        do lbl-1000: // 3 sources:
        {
            var4_3 = var3_4;
            if (var5_5.hasNext() == false) return var4_3;
            var4_3 = var5_5.next();
            if (!var4_3.isAssignableFrom(var1_1) || (var4_3 = this.modelClassToResourceFactories.get(var4_3)) == null) ** GOTO lbl-1000
            var3_4 = var4_3 = var4_3.get(var2_2);
        } while (var4_3 == null);
        return var4_3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public <T, Y> ModelLoader<T, Y> buildModelLoader(Class<T> modelLoader, Class<Y> class_) {
        synchronized (this) {
            ModelLoader<T, Y> modelLoader2;
            block8 : {
                block7 : {
                    modelLoader2 = this.getCachedLoader((Class<T>)((Object)modelLoader), class_);
                    if (modelLoader2 == null) break block7;
                    boolean bl = NULL_MODEL_LOADER.equals(modelLoader2);
                    if (!bl) return modelLoader2;
                    return null;
                }
                ModelLoaderFactory<T, Y> modelLoaderFactory = this.getFactory((Class<T>)((Object)modelLoader), class_);
                if (modelLoaderFactory == null) break block8;
                modelLoader2 = modelLoaderFactory.build(this.context, this);
                this.cacheModelLoader((Class<T>)((Object)modelLoader), class_, modelLoader2);
                return modelLoader2;
            }
            this.cacheNullLoader((Class<T>)((Object)modelLoader), class_);
            return modelLoader2;
        }
    }

    @Deprecated
    public <T, Y> ModelLoader<T, Y> buildModelLoader(Class<T> object, Class<Y> class_, Context context) {
        synchronized (this) {
            object = this.buildModelLoader((Class<T>)object, class_);
            return object;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <T, Y> ModelLoaderFactory<T, Y> register(Class<T> object, Class<Y> object2, ModelLoaderFactory<T, Y> iterator) {
        synchronized (this) {
            Map<Class, ModelLoaderFactory> map;
            boolean bl;
            Iterator<Map<Class, ModelLoaderFactory>> iterator2;
            ModelLoaderFactory modelLoaderFactory;
            this.cachedModelLoaders.clear();
            Map<Class, ModelLoaderFactory> map2 = map = this.modelClassToResourceFactories.get(object);
            if (map == null) {
                map2 = new HashMap<Class, ModelLoaderFactory>();
                this.modelClassToResourceFactories.put((Class)object, map2);
            }
            object = modelLoaderFactory = (ModelLoaderFactory)map2.put((Class)((void)modelLoaderFactory), (ModelLoaderFactory)((void)iterator2));
            if (modelLoaderFactory == null) return object;
            iterator2 = this.modelClassToResourceFactories.values().iterator();
            do {
                object = modelLoaderFactory;
                if (!iterator2.hasNext()) return object;
            } while (!(bl = iterator2.next().containsValue(modelLoaderFactory)));
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public <T, Y> ModelLoaderFactory<T, Y> unregister(Class<T> object, Class<Y> class_) {
        synchronized (this) {
            this.cachedModelLoaders.clear();
            Object var3_4 = null;
            Map<Class, ModelLoaderFactory> map = this.modelClassToResourceFactories.get(object);
            object = var3_4;
            if (map == null) return object;
            return map.remove(class_);
        }
    }

}

