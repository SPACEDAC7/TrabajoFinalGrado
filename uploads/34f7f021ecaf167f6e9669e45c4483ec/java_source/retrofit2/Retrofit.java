/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.Call
 *  okhttp3.Call$Factory
 *  okhttp3.HttpUrl
 *  okhttp3.RequestBody
 *  okhttp3.ResponseBody
 *  retrofit2.BuiltInConverters
 *  retrofit2.BuiltInConverters$ToStringConverter
 *  retrofit2.CallAdapter
 *  retrofit2.CallAdapter$Factory
 *  retrofit2.Converter
 *  retrofit2.Converter$Factory
 *  retrofit2.Platform
 *  retrofit2.Retrofit$1
 *  retrofit2.ServiceMethod
 *  retrofit2.ServiceMethod$Builder
 *  retrofit2.Utils
 */
package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.BuiltInConverters;
import retrofit2.CallAdapter;
import retrofit2.Converter;
import retrofit2.Platform;
import retrofit2.Retrofit;
import retrofit2.ServiceMethod;
import retrofit2.Utils;

public final class Retrofit {
    private final List<CallAdapter.Factory> adapterFactories;
    private final HttpUrl baseUrl;
    private final Call.Factory callFactory;
    private final Executor callbackExecutor;
    private final List<Converter.Factory> converterFactories;
    private final Map<Method, ServiceMethod> serviceMethodCache = new LinkedHashMap<Method, ServiceMethod>();
    private final boolean validateEagerly;

    Retrofit(Call.Factory factory, HttpUrl httpUrl, List<Converter.Factory> list, List<CallAdapter.Factory> list2, Executor executor, boolean bl) {
        this.callFactory = factory;
        this.baseUrl = httpUrl;
        this.converterFactories = Collections.unmodifiableList(list);
        this.adapterFactories = Collections.unmodifiableList(list2);
        this.callbackExecutor = executor;
        this.validateEagerly = bl;
    }

    private void eagerlyValidateMethods(Class<?> arrmethod) {
        Platform platform = Platform.get();
        for (Method method : arrmethod.getDeclaredMethods()) {
            if (platform.isDefaultMethod(method)) continue;
            this.loadServiceMethod(method);
        }
    }

    public HttpUrl baseUrl() {
        return this.baseUrl;
    }

    public CallAdapter<?> callAdapter(Type type, Annotation[] arrannotation) {
        return this.nextCallAdapter(null, type, arrannotation);
    }

    public List<CallAdapter.Factory> callAdapterFactories() {
        return this.adapterFactories;
    }

    public Call.Factory callFactory() {
        return this.callFactory;
    }

    public Executor callbackExecutor() {
        return this.callbackExecutor;
    }

    public List<Converter.Factory> converterFactories() {
        return this.converterFactories;
    }

    public <T> T create(Class<T> class_) {
        Utils.validateServiceInterface(class_);
        if (this.validateEagerly) {
            this.eagerlyValidateMethods(class_);
        }
        ClassLoader classLoader = class_.getClassLoader();
        1 var3_3 = new 1(this, class_);
        return (T)Proxy.newProxyInstance(classLoader, new Class[]{class_}, (InvocationHandler)var3_3);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    ServiceMethod loadServiceMethod(Method method) {
        Map<Method, ServiceMethod> map = this.serviceMethodCache;
        synchronized (map) {
            ServiceMethod serviceMethod;
            ServiceMethod serviceMethod2 = serviceMethod = this.serviceMethodCache.get(method);
            if (serviceMethod == null) {
                serviceMethod2 = new ServiceMethod.Builder(this, method).build();
                this.serviceMethodCache.put(method, serviceMethod2);
            }
            return serviceMethod2;
        }
    }

    public CallAdapter<?> nextCallAdapter(CallAdapter.Factory factory, Type object, Annotation[] arrannotation) {
        int n2;
        int n3;
        Utils.checkNotNull((Object)object, (String)"returnType == null");
        Utils.checkNotNull((Object)arrannotation, (String)"annotations == null");
        int n4 = this.adapterFactories.size();
        for (n2 = n3 = this.adapterFactories.indexOf((Object)factory) + 1; n2 < n4; ++n2) {
            CallAdapter callAdapter = this.adapterFactories.get(n2).get((Type)object, arrannotation, this);
            if (callAdapter == null) continue;
            return callAdapter;
        }
        object = new StringBuilder("Could not locate call adapter for ").append(object).append(".\n");
        if (factory != null) {
            object.append("  Skipped:");
            for (n2 = 0; n2 < n3; ++n2) {
                object.append("\n   * ").append(this.adapterFactories.get(n2).getClass().getName());
            }
            object.append('\n');
        }
        object.append("  Tried:");
        n2 = this.adapterFactories.size();
        while (n3 < n2) {
            object.append("\n   * ").append(this.adapterFactories.get(n3).getClass().getName());
            ++n3;
        }
        throw new IllegalArgumentException(object.toString());
    }

    public <T> Converter<T, RequestBody> nextRequestBodyConverter(Converter.Factory factory, Type object, Annotation[] arrannotation, Annotation[] arrannotation2) {
        int n2;
        int n3;
        Utils.checkNotNull((Object)object, (String)"type == null");
        Utils.checkNotNull((Object)arrannotation, (String)"parameterAnnotations == null");
        Utils.checkNotNull((Object)arrannotation2, (String)"methodAnnotations == null");
        int n4 = this.converterFactories.size();
        for (n2 = n3 = this.converterFactories.indexOf((Object)factory) + 1; n2 < n4; ++n2) {
            Converter converter = this.converterFactories.get(n2).requestBodyConverter((Type)object, arrannotation, arrannotation2, this);
            if (converter == null) continue;
            return converter;
        }
        object = new StringBuilder("Could not locate RequestBody converter for ").append(object).append(".\n");
        if (factory != null) {
            object.append("  Skipped:");
            for (n2 = 0; n2 < n3; ++n2) {
                object.append("\n   * ").append(this.converterFactories.get(n2).getClass().getName());
            }
            object.append('\n');
        }
        object.append("  Tried:");
        n2 = this.converterFactories.size();
        while (n3 < n2) {
            object.append("\n   * ").append(this.converterFactories.get(n3).getClass().getName());
            ++n3;
        }
        throw new IllegalArgumentException(object.toString());
    }

    public <T> Converter<ResponseBody, T> nextResponseBodyConverter(Converter.Factory factory, Type object, Annotation[] arrannotation) {
        int n2;
        int n3;
        Utils.checkNotNull((Object)object, (String)"type == null");
        Utils.checkNotNull((Object)arrannotation, (String)"annotations == null");
        int n4 = this.converterFactories.size();
        for (n2 = n3 = this.converterFactories.indexOf((Object)factory) + 1; n2 < n4; ++n2) {
            Converter converter = this.converterFactories.get(n2).responseBodyConverter((Type)object, arrannotation, this);
            if (converter == null) continue;
            return converter;
        }
        object = new StringBuilder("Could not locate ResponseBody converter for ").append(object).append(".\n");
        if (factory != null) {
            object.append("  Skipped:");
            for (n2 = 0; n2 < n3; ++n2) {
                object.append("\n   * ").append(this.converterFactories.get(n2).getClass().getName());
            }
            object.append('\n');
        }
        object.append("  Tried:");
        n2 = this.converterFactories.size();
        while (n3 < n2) {
            object.append("\n   * ").append(this.converterFactories.get(n3).getClass().getName());
            ++n3;
        }
        throw new IllegalArgumentException(object.toString());
    }

    public <T> Converter<T, RequestBody> requestBodyConverter(Type type, Annotation[] arrannotation, Annotation[] arrannotation2) {
        return this.nextRequestBodyConverter(null, type, arrannotation, arrannotation2);
    }

    public <T> Converter<ResponseBody, T> responseBodyConverter(Type type, Annotation[] arrannotation) {
        return this.nextResponseBodyConverter(null, type, arrannotation);
    }

    public <T> Converter<T, String> stringConverter(Type type, Annotation[] arrannotation) {
        Utils.checkNotNull((Object)type, (String)"type == null");
        Utils.checkNotNull((Object)arrannotation, (String)"annotations == null");
        int n2 = this.converterFactories.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            Converter converter = this.converterFactories.get(i2).stringConverter(type, arrannotation, this);
            if (converter == null) continue;
            return converter;
        }
        return BuiltInConverters.ToStringConverter.INSTANCE;
    }
}

