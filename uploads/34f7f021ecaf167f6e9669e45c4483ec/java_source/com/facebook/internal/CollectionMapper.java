/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.internal;

import com.facebook.FacebookException;
import com.facebook.internal.Mutable;
import java.util.Iterator;

public class CollectionMapper {
    private CollectionMapper() {
    }

    public static <T> void iterate(final Collection<T> collection, ValueMapper valueMapper, final OnMapperCompleteListener onMapperCompleteListener) {
        Object object = new Mutable<Boolean>(false);
        Mutable<Integer> mutable = new Mutable<Integer>(1);
        onMapperCompleteListener = new OnMapperCompleteListener((Mutable)object, mutable, onMapperCompleteListener){
            final /* synthetic */ Mutable val$didReturnError;
            final /* synthetic */ OnMapperCompleteListener val$onMapperCompleteListener;
            final /* synthetic */ Mutable val$pendingJobCount;

            /*
             * Enabled aggressive block sorting
             * Lifted jumps to return sites
             */
            @Override
            public void onComplete() {
                Integer n2;
                if (((Boolean)this.val$didReturnError.value).booleanValue()) {
                    return;
                }
                Mutable mutable = this.val$pendingJobCount;
                mutable.value = n2 = Integer.valueOf((Integer)this.val$pendingJobCount.value - 1);
                if (n2 != 0) return;
                this.val$onMapperCompleteListener.onComplete();
            }

            @Override
            public void onError(FacebookException facebookException) {
                if (((Boolean)this.val$didReturnError.value).booleanValue()) {
                    return;
                }
                this.val$didReturnError.value = true;
                this.val$onMapperCompleteListener.onError(facebookException);
            }
        };
        object = collection.keyIterator();
        while (object.hasNext()) {
            final Object object2 = object.next();
            Object object3 = collection.get(object2);
            object2 = new OnMapValueCompleteListener(){

                @Override
                public void onComplete(Object object) {
                    collection.set(object2, object, onMapperCompleteListener);
                    onMapperCompleteListener.onComplete();
                }

                @Override
                public void onError(FacebookException facebookException) {
                    onMapperCompleteListener.onError(facebookException);
                }
            };
            Integer n2 = (Integer)mutable.value;
            mutable.value = (Integer)mutable.value + 1;
            valueMapper.mapValue(object3, (OnMapValueCompleteListener)object2);
        }
        onMapperCompleteListener.onComplete();
    }

    public static interface Collection<T> {
        public Object get(T var1);

        public Iterator<T> keyIterator();

        public void set(T var1, Object var2, OnErrorListener var3);
    }

    public static interface OnErrorListener {
        public void onError(FacebookException var1);
    }

    public static interface OnMapValueCompleteListener
    extends OnErrorListener {
        public void onComplete(Object var1);
    }

    public static interface OnMapperCompleteListener
    extends OnErrorListener {
        public void onComplete();
    }

    public static interface ValueMapper {
        public void mapValue(Object var1, OnMapValueCompleteListener var2);
    }

}

