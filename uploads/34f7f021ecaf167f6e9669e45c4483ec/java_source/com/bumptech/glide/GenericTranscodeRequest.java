/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.DownloadOptions;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.FixedLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.target.Target;
import java.io.File;

public class GenericTranscodeRequest<ModelType, DataType, ResourceType>
extends GenericRequestBuilder<ModelType, DataType, ResourceType, ResourceType>
implements DownloadOptions {
    private final Class<DataType> dataClass;
    private final ModelLoader<ModelType, DataType> modelLoader;
    private final RequestManager.OptionsApplier optionsApplier;
    private final Class<ResourceType> resourceClass;

    GenericTranscodeRequest(Context context, Glide glide, Class<ModelType> class_, ModelLoader<ModelType, DataType> modelLoader, Class<DataType> class_2, Class<ResourceType> class_3, RequestTracker requestTracker, Lifecycle lifecycle, RequestManager.OptionsApplier optionsApplier) {
        super(context, class_, GenericTranscodeRequest.build(glide, modelLoader, class_2, class_3, UnitTranscoder.get()), class_3, glide, requestTracker, lifecycle);
        this.modelLoader = modelLoader;
        this.dataClass = class_2;
        this.resourceClass = class_3;
        this.optionsApplier = optionsApplier;
    }

    GenericTranscodeRequest(Class<ResourceType> class_, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder, ModelLoader<ModelType, DataType> modelLoader, Class<DataType> class_2, Class<ResourceType> class_3, RequestManager.OptionsApplier optionsApplier) {
        super(GenericTranscodeRequest.build(genericRequestBuilder.glide, modelLoader, class_2, class_3, UnitTranscoder.get()), class_, genericRequestBuilder);
        this.modelLoader = modelLoader;
        this.dataClass = class_2;
        this.resourceClass = class_3;
        this.optionsApplier = optionsApplier;
    }

    private static <A, T, Z, R> LoadProvider<A, T, Z, R> build(Glide glide, ModelLoader<A, T> modelLoader, Class<T> class_, Class<Z> class_2, ResourceTranscoder<Z, R> resourceTranscoder) {
        return new FixedLoadProvider<A, T, Z, R>(modelLoader, resourceTranscoder, glide.buildDataProvider(class_, class_2));
    }

    private GenericRequestBuilder<ModelType, DataType, File, File> getDownloadOnlyRequest() {
        Object object = UnitTranscoder.get();
        DataLoadProvider dataLoadProvider = this.glide.buildDataProvider(this.dataClass, File.class);
        object = new FixedLoadProvider(this.modelLoader, object, dataLoadProvider);
        return this.optionsApplier.apply(new GenericRequestBuilder(object, File.class, this)).priority(Priority.LOW).diskCacheStrategy(DiskCacheStrategy.SOURCE).skipMemoryCache(true);
    }

    @Override
    public FutureTarget<File> downloadOnly(int n2, int n3) {
        return this.getDownloadOnlyRequest().into(n2, n3);
    }

    @Override
    public <Y extends Target<File>> Y downloadOnly(Y y2) {
        return this.getDownloadOnlyRequest().into(y2);
    }

    public <TranscodeType> GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> transcode(ResourceTranscoder<ResourceType, TranscodeType> object, Class<TranscodeType> class_) {
        object = GenericTranscodeRequest.build(this.glide, this.modelLoader, this.dataClass, this.resourceClass, object);
        return this.optionsApplier.apply(new GenericRequestBuilder(object, class_, this));
    }
}

