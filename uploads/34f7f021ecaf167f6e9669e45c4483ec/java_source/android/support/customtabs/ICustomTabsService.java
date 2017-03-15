/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Binder
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.IInterface
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.os.RemoteException
 */
package android.support.customtabs;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import java.util.ArrayList;
import java.util.List;

public interface ICustomTabsService
extends IInterface {
    public Bundle extraCommand(String var1, Bundle var2) throws RemoteException;

    public boolean mayLaunchUrl(ICustomTabsCallback var1, Uri var2, Bundle var3, List<Bundle> var4) throws RemoteException;

    public boolean newSession(ICustomTabsCallback var1) throws RemoteException;

    public boolean updateVisuals(ICustomTabsCallback var1, Bundle var2) throws RemoteException;

    public boolean warmup(long var1) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements ICustomTabsService {
        private static final String DESCRIPTOR = "android.support.customtabs.ICustomTabsService";
        static final int TRANSACTION_extraCommand = 5;
        static final int TRANSACTION_mayLaunchUrl = 4;
        static final int TRANSACTION_newSession = 3;
        static final int TRANSACTION_updateVisuals = 6;
        static final int TRANSACTION_warmup = 2;

        public Stub() {
            this.attachInterface((IInterface)this, "android.support.customtabs.ICustomTabsService");
        }

        public static ICustomTabsService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            if (iInterface != null && iInterface instanceof ICustomTabsService) {
                return (ICustomTabsService)iInterface;
            }
            return new Proxy(iBinder);
        }

        public IBinder asBinder() {
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean onTransact(int n2, Parcel parcel, Parcel parcel2, int n3) throws RemoteException {
            int n4 = 0;
            int n5 = 0;
            int n6 = 0;
            int n7 = 0;
            switch (n2) {
                default: {
                    return super.onTransact(n2, parcel, parcel2, n3);
                }
                case 1598968902: {
                    parcel2.writeString("android.support.customtabs.ICustomTabsService");
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean bl = this.warmup(parcel.readLong());
                    parcel2.writeNoException();
                    n2 = n7;
                    if (bl) {
                        n2 = 1;
                    }
                    parcel2.writeInt(n2);
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean bl = this.newSession(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    n2 = n4;
                    if (bl) {
                        n2 = 1;
                    }
                    parcel2.writeInt(n2);
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    ICustomTabsCallback iCustomTabsCallback = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                    Uri uri = parcel.readInt() != 0 ? (Uri)Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle = parcel.readInt() != 0 ? (Bundle)Bundle.CREATOR.createFromParcel(parcel) : null;
                    boolean bl = this.mayLaunchUrl(iCustomTabsCallback, uri, bundle, (List)parcel.createTypedArrayList(Bundle.CREATOR));
                    parcel2.writeNoException();
                    n2 = n5;
                    if (bl) {
                        n2 = 1;
                    }
                    parcel2.writeInt(n2);
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    String string2 = parcel.readString();
                    parcel = parcel.readInt() != 0 ? (Bundle)Bundle.CREATOR.createFromParcel(parcel) : null;
                    parcel = this.extraCommand(string2, (Bundle)parcel);
                    parcel2.writeNoException();
                    if (parcel != null) {
                        parcel2.writeInt(1);
                        parcel.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                }
                case 6: 
            }
            parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
            ICustomTabsCallback iCustomTabsCallback = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
            parcel = parcel.readInt() != 0 ? (Bundle)Bundle.CREATOR.createFromParcel(parcel) : null;
            boolean bl = this.updateVisuals(iCustomTabsCallback, (Bundle)parcel);
            parcel2.writeNoException();
            n2 = n6;
            if (bl) {
                n2 = 1;
            }
            parcel2.writeInt(n2);
            return true;
        }

        private static class Proxy
        implements ICustomTabsService {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public Bundle extraCommand(String string2, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    parcel.writeString(string2);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.mRemote.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    string2 = parcel2.readInt() != 0 ? (Bundle)Bundle.CREATOR.createFromParcel(parcel2) : null;
                    return string2;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "android.support.customtabs.ICustomTabsService";
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel parcel;
                boolean bl;
                Parcel parcel2;
                block9 : {
                    block8 : {
                        bl = true;
                        parcel = Parcel.obtain();
                        parcel2 = Parcel.obtain();
                        try {
                            parcel.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                            iCustomTabsCallback = iCustomTabsCallback != null ? iCustomTabsCallback.asBinder() : null;
                            parcel.writeStrongBinder((IBinder)iCustomTabsCallback);
                            if (uri != null) {
                                parcel.writeInt(1);
                                uri.writeToParcel(parcel, 0);
                            } else {
                                parcel.writeInt(0);
                            }
                            if (bundle != null) {
                                parcel.writeInt(1);
                                bundle.writeToParcel(parcel, 0);
                            } else {
                                parcel.writeInt(0);
                            }
                            parcel.writeTypedList(list);
                            this.mRemote.transact(4, parcel, parcel2, 0);
                            parcel2.readException();
                            int n2 = parcel2.readInt();
                            if (n2 == 0) break block8;
                            break block9;
                        }
                        catch (Throwable var1_2) {
                            parcel2.recycle();
                            parcel.recycle();
                            throw var1_2;
                        }
                    }
                    bl = false;
                }
                parcel2.recycle();
                parcel.recycle();
                return bl;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public boolean newSession(ICustomTabsCallback iCustomTabsCallback) throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    iCustomTabsCallback = iCustomTabsCallback != null ? iCustomTabsCallback.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)iCustomTabsCallback);
                    this.mRemote.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    int n2 = parcel2.readInt();
                    if (n2 != 0) {
                        bl = true;
                    }
                    return bl;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) throws RemoteException {
                boolean bl;
                Parcel parcel;
                Parcel parcel2;
                block6 : {
                    block5 : {
                        bl = true;
                        parcel = Parcel.obtain();
                        parcel2 = Parcel.obtain();
                        try {
                            parcel.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                            iCustomTabsCallback = iCustomTabsCallback != null ? iCustomTabsCallback.asBinder() : null;
                            parcel.writeStrongBinder((IBinder)iCustomTabsCallback);
                            if (bundle != null) {
                                parcel.writeInt(1);
                                bundle.writeToParcel(parcel, 0);
                            } else {
                                parcel.writeInt(0);
                            }
                            this.mRemote.transact(6, parcel, parcel2, 0);
                            parcel2.readException();
                            int n2 = parcel2.readInt();
                            if (n2 == 0) break block5;
                            break block6;
                        }
                        catch (Throwable var1_2) {
                            parcel2.recycle();
                            parcel.recycle();
                            throw var1_2;
                        }
                    }
                    bl = false;
                }
                parcel2.recycle();
                parcel.recycle();
                return bl;
            }

            @Override
            public boolean warmup(long l2) throws RemoteException {
                Parcel parcel;
                boolean bl;
                Parcel parcel2;
                block2 : {
                    bl = false;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    try {
                        parcel2.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                        parcel2.writeLong(l2);
                        this.mRemote.transact(2, parcel2, parcel, 0);
                        parcel.readException();
                        int n2 = parcel.readInt();
                        if (n2 == 0) break block2;
                        bl = true;
                    }
                    catch (Throwable var5_6) {
                        parcel.recycle();
                        parcel2.recycle();
                        throw var5_6;
                    }
                }
                parcel.recycle();
                parcel2.recycle();
                return bl;
            }
        }

    }

}

