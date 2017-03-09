/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.browse.MediaBrowser
 *  android.media.browse.MediaBrowser$ItemCallback
 *  android.media.browse.MediaBrowser$MediaItem
 *  android.os.Parcel
 */
package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.support.annotation.NonNull;

class MediaBrowserCompatApi23 {
    MediaBrowserCompatApi23() {
    }

    public static Object createItemCallback(ItemCallback itemCallback) {
        return new ItemCallbackProxy<ItemCallback>(itemCallback);
    }

    public static void getItem(Object object, String string2, Object object2) {
        ((MediaBrowser)object).getItem(string2, (MediaBrowser.ItemCallback)object2);
    }

    static interface ItemCallback {
        public void onError(@NonNull String var1);

        public void onItemLoaded(Parcel var1);
    }

    static class ItemCallbackProxy<T extends ItemCallback>
    extends MediaBrowser.ItemCallback {
        protected final T mItemCallback;

        public ItemCallbackProxy(T t2) {
            this.mItemCallback = t2;
        }

        public void onError(@NonNull String string2) {
            this.mItemCallback.onError(string2);
        }

        public void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
            Parcel parcel = Parcel.obtain();
            mediaItem.writeToParcel(parcel, 0);
            this.mItemCallback.onItemLoaded(parcel);
        }
    }

}

