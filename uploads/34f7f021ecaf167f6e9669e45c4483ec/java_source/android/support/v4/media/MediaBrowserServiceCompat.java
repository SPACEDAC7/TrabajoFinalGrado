/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Service
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.os.Binder
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.Looper
 *  android.os.Message
 *  android.os.Messenger
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.RemoteException
 *  android.text.TextUtils
 *  android.util.Log
 */
package android.support.v4.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaBrowserCompatUtils;
import android.support.v4.media.MediaBrowserServiceCompatApi21;
import android.support.v4.media.MediaBrowserServiceCompatApi23;
import android.support.v4.media.MediaBrowserServiceCompatApi24;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class MediaBrowserServiceCompat
extends Service {
    static final boolean DEBUG = Log.isLoggable((String)"MBServiceCompat", (int)3);
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static final String KEY_MEDIA_ITEM = "media_item";
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    static final String TAG = "MBServiceCompat";
    final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap();
    ConnectionRecord mCurConnection;
    final ServiceHandler mHandler;
    private MediaBrowserServiceImpl mImpl;
    MediaSessionCompat.Token mSession;

    public MediaBrowserServiceCompat() {
        this.mHandler = new ServiceHandler();
    }

    void addSubscription(String string2, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        Object object;
        Object object2 = object = connectionRecord.subscriptions.get(string2);
        if (object == null) {
            object2 = new ArrayList<Pair<IBinder, Bundle>>();
        }
        object = object2.iterator();
        while (object.hasNext()) {
            Pair pair = (Pair)object.next();
            if (iBinder != pair.first || !MediaBrowserCompatUtils.areSameOptions(bundle, (Bundle)pair.second)) continue;
            return;
        }
        object2.add(new Pair<IBinder, Bundle>(iBinder, bundle));
        connectionRecord.subscriptions.put(string2, (List<Pair<IBinder, Bundle>>)object2);
        this.performLoadChildren(string2, connectionRecord, bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    List<MediaBrowserCompat.MediaItem> applyOptions(List<MediaBrowserCompat.MediaItem> list, Bundle list2) {
        if (list == null) {
            return null;
        }
        int n2 = list2.getInt("android.media.browse.extra.PAGE", -1);
        int n3 = list2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (n2 == -1) {
            list2 = list;
            if (n3 == -1) return list2;
        }
        int n4 = n3 * n2;
        int n5 = n4 + n3;
        if (n2 < 0) return Collections.EMPTY_LIST;
        if (n3 < 1) return Collections.EMPTY_LIST;
        if (n4 >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        n2 = n5;
        if (n5 <= list.size()) return list.subList(n4, n2);
        n2 = list.size();
        return list.subList(n4, n2);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
    }

    public final Bundle getBrowserRootHints() {
        return this.mImpl.getBrowserRootHints();
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.mSession;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    boolean isValidPackage(String string2, int n2) {
        if (string2 == null) {
            return false;
        }
        String[] arrstring = this.getPackageManager().getPackagesForUid(n2);
        int n3 = arrstring.length;
        n2 = 0;
        while (n2 < n3) {
            if (arrstring[n2].equals(string2)) {
                return true;
            }
            ++n2;
        }
        return false;
    }

    public void notifyChildrenChanged(@NonNull String string2) {
        if (string2 == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(string2, null);
    }

    public void notifyChildrenChanged(@NonNull String string2, @NonNull Bundle bundle) {
        if (string2 == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(string2, bundle);
    }

    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onCreate() {
        super.onCreate();
        this.mImpl = Build.VERSION.SDK_INT >= 24 || BuildCompat.isAtLeastN() ? new MediaBrowserServiceImplApi24() : (Build.VERSION.SDK_INT >= 23 ? new MediaBrowserServiceImplApi23() : (Build.VERSION.SDK_INT >= 21 ? new MediaBrowserServiceImplApi21() : new MediaBrowserServiceImplBase()));
        this.mImpl.onCreate();
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String var1, int var2, @Nullable Bundle var3);

    public abstract void onLoadChildren(@NonNull String var1, @NonNull Result<List<MediaBrowserCompat.MediaItem>> var2);

    public void onLoadChildren(@NonNull String string2, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle bundle) {
        result.setFlags(1);
        this.onLoadChildren(string2, result);
    }

    public void onLoadItem(String string2, Result<MediaBrowserCompat.MediaItem> result) {
        result.setFlags(2);
        result.sendResult(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    void performLoadChildren(final String string2, final ConnectionRecord connectionRecord, final Bundle bundle) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>((Object)string2){

            @Override
            void onResultSent(List<MediaBrowserCompat.MediaItem> list, int n2) {
                if (MediaBrowserServiceCompat.this.mConnections.get((Object)connectionRecord.callbacks.asBinder()) != connectionRecord) {
                    if (MediaBrowserServiceCompat.DEBUG) {
                        Log.d((String)"MBServiceCompat", (String)("Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connectionRecord.pkg + " id=" + string2));
                    }
                    return;
                }
                if ((n2 & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.applyOptions(list, bundle);
                }
                try {
                    connectionRecord.callbacks.onLoadChildren(string2, list, bundle);
                    return;
                }
                catch (RemoteException var1_2) {
                    Log.w((String)"MBServiceCompat", (String)("Calling onLoadChildren() failed for id=" + string2 + " package=" + connectionRecord.pkg));
                    return;
                }
            }
        };
        this.mCurConnection = connectionRecord;
        if (bundle == null) {
            this.onLoadChildren(string2, result);
        } else {
            this.onLoadChildren(string2, result, bundle);
        }
        this.mCurConnection = null;
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.pkg + " id=" + string2);
        }
    }

    void performLoadItem(String string2, ConnectionRecord connectionRecord, ResultReceiver object) {
        object = new Result<MediaBrowserCompat.MediaItem>((Object)string2, (ResultReceiver)object){
            final /* synthetic */ ResultReceiver val$receiver;

            @Override
            void onResultSent(MediaBrowserCompat.MediaItem mediaItem, int n2) {
                if ((n2 & 2) != 0) {
                    this.val$receiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("media_item", (Parcelable)mediaItem);
                this.val$receiver.send(0, bundle);
            }
        };
        this.mCurConnection = connectionRecord;
        this.onLoadItem(string2, (Result<MediaBrowserCompat.MediaItem>)object);
        this.mCurConnection = null;
        if (!object.isDone()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + string2);
        }
    }

    boolean removeSubscription(String string2, ConnectionRecord connectionRecord, IBinder iBinder) {
        if (iBinder == null) {
            if (connectionRecord.subscriptions.remove(string2) != null) {
                return true;
            }
            return false;
        }
        boolean bl = false;
        boolean bl2 = false;
        List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(string2);
        if (list != null) {
            Iterator<Pair<IBinder, Bundle>> iterator = list.iterator();
            while (iterator.hasNext()) {
                if (iBinder != iterator.next().first) continue;
                bl2 = true;
                iterator.remove();
            }
            bl = bl2;
            if (list.size() == 0) {
                connectionRecord.subscriptions.remove(string2);
                bl = bl2;
            }
        }
        return bl;
    }

    public void setSessionToken(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        }
        if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        }
        this.mSession = token;
        this.mImpl.setSessionToken(token);
    }

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(@NonNull String string2, @Nullable Bundle bundle) {
            if (string2 == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = string2;
            this.mExtras = bundle;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public String getRootId() {
            return this.mRootId;
        }
    }

    private class ConnectionRecord {
        ServiceCallbacks callbacks;
        String pkg;
        BrowserRoot root;
        Bundle rootHints;
        HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions;

        ConnectionRecord() {
            this.subscriptions = new HashMap();
        }
    }

    static interface MediaBrowserServiceImpl {
        public Bundle getBrowserRootHints();

        public void notifyChildrenChanged(String var1, Bundle var2);

        public IBinder onBind(Intent var1);

        public void onCreate();

        public void setSessionToken(MediaSessionCompat.Token var1);
    }

    class MediaBrowserServiceImplApi21
    implements MediaBrowserServiceImpl,
    MediaBrowserServiceCompatApi21.ServiceCompatProxy {
        Messenger mMessenger;
        Object mServiceObj;

        MediaBrowserServiceImplApi21() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public Bundle getBrowserRootHints() {
            if (this.mMessenger == null) {
                return null;
            }
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
            }
            if (MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) return null;
            return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
        }

        @Override
        public void notifyChildrenChanged(final String string2, final Bundle bundle) {
            if (this.mMessenger == null) {
                MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, string2);
                return;
            }
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    Iterator<IBinder> iterator = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                    while (iterator.hasNext()) {
                        Object object = iterator.next();
                        object = MediaBrowserServiceCompat.this.mConnections.get(object);
                        List<Pair<IBinder, Bundle>> list = object.subscriptions.get(string2);
                        if (list == null) continue;
                        for (Pair pair : list) {
                            if (!MediaBrowserCompatUtils.hasDuplicatedItems(bundle, (Bundle)pair.second)) continue;
                            MediaBrowserServiceCompat.this.performLoadChildren(string2, (ConnectionRecord)object, (Bundle)pair.second);
                        }
                    }
                }
            });
        }

        @Override
        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, intent);
        }

        @Override
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi21.createService((Context)MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public MediaBrowserServiceCompatApi21.BrowserRoot onGetRoot(String string2, int n2, Bundle object) {
            Bundle bundle;
            Bundle bundle2 = bundle = null;
            if (object != null) {
                bundle2 = bundle;
                if (object.getInt("extra_client_version", 0) != 0) {
                    object.remove("extra_client_version");
                    this.mMessenger = new Messenger((Handler)MediaBrowserServiceCompat.this.mHandler);
                    bundle2 = new Bundle();
                    bundle2.putInt("extra_service_version", 1);
                    BundleCompat.putBinder(bundle2, "extra_messenger", this.mMessenger.getBinder());
                }
            }
            if ((object = MediaBrowserServiceCompat.this.onGetRoot(string2, n2, (Bundle)object)) == null) {
                return null;
            }
            if (bundle2 == null) {
                string2 = object.getExtras();
                return new MediaBrowserServiceCompatApi21.BrowserRoot(object.getRootId(), (Bundle)string2);
            }
            string2 = bundle2;
            if (object.getExtras() == null) return new MediaBrowserServiceCompatApi21.BrowserRoot(object.getRootId(), (Bundle)string2);
            bundle2.putAll(object.getExtras());
            string2 = bundle2;
            return new MediaBrowserServiceCompatApi21.BrowserRoot(object.getRootId(), (Bundle)string2);
        }

        @Override
        public void onLoadChildren(String string2, final MediaBrowserServiceCompatApi21.ResultWrapper<List<Parcel>> object) {
            object = new Result<List<MediaBrowserCompat.MediaItem>>((Object)string2){

                @Override
                public void detach() {
                    object.detach();
                }

                @Override
                void onResultSent(List<MediaBrowserCompat.MediaItem> object3, int n2) {
                    Object object2 = null;
                    if (object3 != null) {
                        ArrayList<Parcel> arrayList = new ArrayList<Parcel>();
                        object3 = object3.iterator();
                        do {
                            object2 = arrayList;
                            if (!object3.hasNext()) break;
                            object2 = (MediaBrowserCompat.MediaItem)object3.next();
                            Parcel parcel = Parcel.obtain();
                            object2.writeToParcel(parcel, 0);
                            arrayList.add(parcel);
                        } while (true);
                    }
                    object.sendResult(object2);
                }
            };
            MediaBrowserServiceCompat.this.onLoadChildren(string2, (Result<List<MediaBrowserCompat.MediaItem>>)object);
        }

        @Override
        public void setSessionToken(MediaSessionCompat.Token token) {
            MediaBrowserServiceCompatApi21.setSessionToken(this.mServiceObj, token.getToken());
        }

    }

    class MediaBrowserServiceImplApi23
    extends MediaBrowserServiceImplApi21
    implements MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        MediaBrowserServiceImplApi23() {
        }

        @Override
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi23.createService((Context)MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        @Override
        public void onLoadItem(String string2, final MediaBrowserServiceCompatApi21.ResultWrapper<Parcel> object) {
            object = new Result<MediaBrowserCompat.MediaItem>((Object)string2){

                @Override
                public void detach() {
                    object.detach();
                }

                @Override
                void onResultSent(MediaBrowserCompat.MediaItem mediaItem, int n2) {
                    if (mediaItem == null) {
                        object.sendResult(null);
                        return;
                    }
                    Parcel parcel = Parcel.obtain();
                    mediaItem.writeToParcel(parcel, 0);
                    object.sendResult(parcel);
                }
            };
            MediaBrowserServiceCompat.this.onLoadItem(string2, (Result<MediaBrowserCompat.MediaItem>)object);
        }

    }

    class MediaBrowserServiceImplApi24
    extends MediaBrowserServiceImplApi23
    implements MediaBrowserServiceCompatApi24.ServiceCompatProxy {
        MediaBrowserServiceImplApi24() {
        }

        @Override
        public Bundle getBrowserRootHints() {
            return MediaBrowserServiceCompatApi24.getBrowserRootHints(this.mServiceObj);
        }

        @Override
        public void notifyChildrenChanged(String string2, Bundle bundle) {
            if (bundle == null) {
                MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, string2);
                return;
            }
            MediaBrowserServiceCompatApi24.notifyChildrenChanged(this.mServiceObj, string2, bundle);
        }

        @Override
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi24.createService((Context)MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        @Override
        public void onLoadChildren(String string2, MediaBrowserServiceCompatApi24.ResultWrapper object, Bundle bundle) {
            object = new Result<List<MediaBrowserCompat.MediaItem>>((Object)string2, (MediaBrowserServiceCompatApi24.ResultWrapper)object){
                final /* synthetic */ MediaBrowserServiceCompatApi24.ResultWrapper val$resultWrapper;

                @Override
                public void detach() {
                    this.val$resultWrapper.detach();
                }

                @Override
                void onResultSent(List<MediaBrowserCompat.MediaItem> object, int n2) {
                    Object object2 = null;
                    if (object != null) {
                        ArrayList<Parcel> arrayList = new ArrayList<Parcel>();
                        object = object.iterator();
                        do {
                            object2 = arrayList;
                            if (!object.hasNext()) break;
                            object2 = (MediaBrowserCompat.MediaItem)object.next();
                            Parcel parcel = Parcel.obtain();
                            object2.writeToParcel(parcel, 0);
                            arrayList.add(parcel);
                        } while (true);
                    }
                    this.val$resultWrapper.sendResult((List<Parcel>)object2, n2);
                }
            };
            MediaBrowserServiceCompat.this.onLoadChildren(string2, (Result<List<MediaBrowserCompat.MediaItem>>)object, bundle);
        }

    }

    class MediaBrowserServiceImplBase
    implements MediaBrowserServiceImpl {
        private Messenger mMessenger;

        MediaBrowserServiceImplBase() {
        }

        @Override
        public Bundle getBrowserRootHints() {
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
            }
            if (MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) {
                return null;
            }
            return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
        }

        @Override
        public void notifyChildrenChanged(final @NonNull String string2, final Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    Iterator<IBinder> iterator = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                    while (iterator.hasNext()) {
                        Object object = iterator.next();
                        object = MediaBrowserServiceCompat.this.mConnections.get(object);
                        List<Pair<IBinder, Bundle>> list = object.subscriptions.get(string2);
                        if (list == null) continue;
                        for (Pair pair : list) {
                            if (!MediaBrowserCompatUtils.hasDuplicatedItems(bundle, (Bundle)pair.second)) continue;
                            MediaBrowserServiceCompat.this.performLoadChildren(string2, (ConnectionRecord)object, (Bundle)pair.second);
                        }
                    }
                }
            });
        }

        @Override
        public IBinder onBind(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.mMessenger.getBinder();
            }
            return null;
        }

        @Override
        public void onCreate() {
            this.mMessenger = new Messenger((Handler)MediaBrowserServiceCompat.this.mHandler);
        }

        @Override
        public void setSessionToken(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    Iterator<ConnectionRecord> iterator = MediaBrowserServiceCompat.this.mConnections.values().iterator();
                    while (iterator.hasNext()) {
                        ConnectionRecord connectionRecord = iterator.next();
                        try {
                            connectionRecord.callbacks.onConnect(connectionRecord.root.getRootId(), token, connectionRecord.root.getExtras());
                        }
                        catch (RemoteException var3_3) {
                            Log.w((String)"MBServiceCompat", (String)("Connection for " + connectionRecord.pkg + " is no longer valid."));
                            iterator.remove();
                        }
                    }
                }
            });
        }

    }

    public static class Result<T> {
        private Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendResultCalled;

        Result(Object object) {
            this.mDebug = object;
        }

        public void detach() {
            if (this.mDetachCalled) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
            }
            if (this.mSendResultCalled) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
            }
            this.mDetachCalled = true;
        }

        boolean isDone() {
            if (this.mDetachCalled || this.mSendResultCalled) {
                return true;
            }
            return false;
        }

        void onResultSent(T t2, int n2) {
        }

        public void sendResult(T t2) {
            if (this.mSendResultCalled) {
                throw new IllegalStateException("sendResult() called twice for: " + this.mDebug);
            }
            this.mSendResultCalled = true;
            this.onResultSent(t2, this.mFlags);
        }

        void setFlags(int n2) {
            this.mFlags = n2;
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void addSubscription(final String string2, final IBinder iBinder, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                @Override
                public void run() {
                    Object object = serviceCallbacks.asBinder();
                    if ((object = MediaBrowserServiceCompat.this.mConnections.get(object)) == null) {
                        Log.w((String)"MBServiceCompat", (String)("addSubscription for callback that isn't registered id=" + string2));
                        return;
                    }
                    MediaBrowserServiceCompat.this.addSubscription(string2, (ConnectionRecord)object, iBinder, bundle);
                }
            });
        }

        public void connect(final String string2, final int n2, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            if (!MediaBrowserServiceCompat.this.isValidPackage(string2, n2)) {
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + n2 + " package=" + string2);
            }
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 * Enabled aggressive exception aggregation
                 */
                @Override
                public void run() {
                    IBinder iBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove((Object)iBinder);
                    ConnectionRecord connectionRecord = new ConnectionRecord();
                    connectionRecord.pkg = string2;
                    connectionRecord.rootHints = bundle;
                    connectionRecord.callbacks = serviceCallbacks;
                    connectionRecord.root = MediaBrowserServiceCompat.this.onGetRoot(string2, n2, bundle);
                    if (connectionRecord.root == null) {
                        Log.i((String)"MBServiceCompat", (String)("No root for client " + string2 + " from service " + this.getClass().getName()));
                        try {
                            serviceCallbacks.onConnectFailed();
                            return;
                        }
                        catch (RemoteException var1_2) {
                            Log.w((String)"MBServiceCompat", (String)("Calling onConnectFailed() failed. Ignoring. pkg=" + string2));
                            return;
                        }
                    }
                    try {
                        MediaBrowserServiceCompat.this.mConnections.put(iBinder, connectionRecord);
                        if (MediaBrowserServiceCompat.this.mSession == null) return;
                        serviceCallbacks.onConnect(connectionRecord.root.getRootId(), MediaBrowserServiceCompat.this.mSession, connectionRecord.root.getExtras());
                        return;
                    }
                    catch (RemoteException var2_4) {
                        Log.w((String)"MBServiceCompat", (String)("Calling onConnect() failed. Dropping client. pkg=" + string2));
                        MediaBrowserServiceCompat.this.mConnections.remove((Object)iBinder);
                        return;
                    }
                }
            });
        }

        public void disconnect(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                @Override
                public void run() {
                    IBinder iBinder = serviceCallbacks.asBinder();
                    if (MediaBrowserServiceCompat.this.mConnections.remove((Object)iBinder) != null) {
                        // empty if block
                    }
                }
            });
        }

        public void getMediaItem(final String string2, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (TextUtils.isEmpty((CharSequence)string2) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                @Override
                public void run() {
                    Object object = serviceCallbacks.asBinder();
                    if ((object = MediaBrowserServiceCompat.this.mConnections.get(object)) == null) {
                        Log.w((String)"MBServiceCompat", (String)("getMediaItem for callback that isn't registered id=" + string2));
                        return;
                    }
                    MediaBrowserServiceCompat.this.performLoadItem(string2, (ConnectionRecord)object, resultReceiver);
                }
            });
        }

        public void registerCallbacks(final ServiceCallbacks serviceCallbacks, final Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                @Override
                public void run() {
                    IBinder iBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove((Object)iBinder);
                    ConnectionRecord connectionRecord = new ConnectionRecord();
                    connectionRecord.callbacks = serviceCallbacks;
                    connectionRecord.rootHints = bundle;
                    MediaBrowserServiceCompat.this.mConnections.put(iBinder, connectionRecord);
                }
            });
        }

        public void removeSubscription(final String string2, final IBinder iBinder, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                /*
                 * Enabled aggressive block sorting
                 */
                @Override
                public void run() {
                    Object object = serviceCallbacks.asBinder();
                    if ((object = MediaBrowserServiceCompat.this.mConnections.get(object)) == null) {
                        Log.w((String)"MBServiceCompat", (String)("removeSubscription for callback that isn't registered id=" + string2));
                        return;
                    } else {
                        if (MediaBrowserServiceCompat.this.removeSubscription(string2, (ConnectionRecord)object, iBinder)) return;
                        {
                            Log.w((String)"MBServiceCompat", (String)("removeSubscription called for " + string2 + " which is not subscribed"));
                            return;
                        }
                    }
                }
            });
        }

        public void unregisterCallbacks(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable(){

                @Override
                public void run() {
                    IBinder iBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove((Object)iBinder);
                }
            });
        }

    }

    private static interface ServiceCallbacks {
        public IBinder asBinder();

        public void onConnect(String var1, MediaSessionCompat.Token var2, Bundle var3) throws RemoteException;

        public void onConnectFailed() throws RemoteException;

        public void onLoadChildren(String var1, List<MediaBrowserCompat.MediaItem> var2, Bundle var3) throws RemoteException;
    }

    private class ServiceCallbacksCompat
    implements ServiceCallbacks {
        final Messenger mCallbacks;

        ServiceCallbacksCompat(Messenger messenger) {
            this.mCallbacks = messenger;
        }

        private void sendRequest(int n2, Bundle bundle) throws RemoteException {
            Message message = Message.obtain();
            message.what = n2;
            message.arg1 = 1;
            message.setData(bundle);
            this.mCallbacks.send(message);
        }

        @Override
        public IBinder asBinder() {
            return this.mCallbacks.getBinder();
        }

        @Override
        public void onConnect(String string2, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putInt("extra_service_version", 1);
            bundle = new Bundle();
            bundle.putString("data_media_item_id", string2);
            bundle.putParcelable("data_media_session_token", (Parcelable)token);
            bundle.putBundle("data_root_hints", bundle2);
            this.sendRequest(1, bundle);
        }

        @Override
        public void onConnectFailed() throws RemoteException {
            this.sendRequest(2, null);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onLoadChildren(String arrayList, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", arrayList);
            bundle2.putBundle("data_options", bundle);
            if (list != null) {
                arrayList = list instanceof ArrayList ? (ArrayList<MediaBrowserCompat.MediaItem>)list : new ArrayList<MediaBrowserCompat.MediaItem>(list);
                bundle2.putParcelableArrayList("data_media_item_list", arrayList);
            }
            this.sendRequest(3, bundle2);
        }
    }

    private final class ServiceHandler
    extends Handler {
        private final ServiceBinderImpl mServiceBinderImpl;

        ServiceHandler() {
            this.mServiceBinderImpl = new ServiceBinderImpl();
        }

        public void handleMessage(Message message) {
            Bundle bundle = message.getData();
            switch (message.what) {
                default: {
                    Log.w((String)"MBServiceCompat", (String)("Unhandled message: " + (Object)message + "\n  Service version: " + 1 + "\n  Client version: " + message.arg1));
                    return;
                }
                case 1: {
                    this.mServiceBinderImpl.connect(bundle.getString("data_package_name"), bundle.getInt("data_calling_uid"), bundle.getBundle("data_root_hints"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                }
                case 2: {
                    this.mServiceBinderImpl.disconnect(new ServiceCallbacksCompat(message.replyTo));
                    return;
                }
                case 3: {
                    this.mServiceBinderImpl.addSubscription(bundle.getString("data_media_item_id"), BundleCompat.getBinder(bundle, "data_callback_token"), bundle.getBundle("data_options"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                }
                case 4: {
                    this.mServiceBinderImpl.removeSubscription(bundle.getString("data_media_item_id"), BundleCompat.getBinder(bundle, "data_callback_token"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                }
                case 5: {
                    this.mServiceBinderImpl.getMediaItem(bundle.getString("data_media_item_id"), (ResultReceiver)bundle.getParcelable("data_result_receiver"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                }
                case 6: {
                    this.mServiceBinderImpl.registerCallbacks(new ServiceCallbacksCompat(message.replyTo), bundle.getBundle("data_root_hints"));
                    return;
                }
                case 7: 
            }
            this.mServiceBinderImpl.unregisterCallbacks(new ServiceCallbacksCompat(message.replyTo));
        }

        public void postOrRun(Runnable runnable) {
            if (Thread.currentThread() == this.getLooper().getThread()) {
                runnable.run();
                return;
            }
            this.post(runnable);
        }

        public boolean sendMessageAtTime(Message message, long l2) {
            Bundle bundle = message.getData();
            bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            bundle.putInt("data_calling_uid", Binder.getCallingUid());
            return super.sendMessageAtTime(message, l2);
        }
    }

}

