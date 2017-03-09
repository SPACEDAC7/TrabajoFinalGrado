/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.IntentSender
 *  android.os.Binder
 *  android.os.IBinder
 *  android.os.IInterface
 *  android.os.Parcel
 *  android.os.ParcelFileDescriptor
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.os.RemoteException
 *  android.os.ResultReceiver
 */
package jackpal.androidterm.libtermexec.v1;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;

public interface ITerminal
extends IInterface {
    public IntentSender startSession(ParcelFileDescriptor var1, ResultReceiver var2) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements ITerminal {
        private static final String DESCRIPTOR = "jackpal.androidterm.libtermexec.v1.ITerminal";
        static final int TRANSACTION_startSession = 1;

        public Stub() {
            this.attachInterface((IInterface)this, "jackpal.androidterm.libtermexec.v1.ITerminal");
        }

        public static ITerminal asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("jackpal.androidterm.libtermexec.v1.ITerminal");
            if (iInterface != null && iInterface instanceof ITerminal) {
                return (ITerminal)iInterface;
            }
            return new Proxy(iBinder);
        }

        public IBinder asBinder() {
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("jackpal.androidterm.libtermexec.v1.ITerminal");
                    return true;
                }
                case 1: 
            }
            parcel.enforceInterface("jackpal.androidterm.libtermexec.v1.ITerminal");
            ParcelFileDescriptor parcelFileDescriptor = parcel.readInt() != 0 ? (ParcelFileDescriptor)ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null;
            parcel = parcel.readInt() != 0 ? (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(parcel) : null;
            parcel = this.startSession(parcelFileDescriptor, (ResultReceiver)parcel);
            parcel2.writeNoException();
            if (parcel != null) {
                parcel2.writeInt(1);
                parcel.writeToParcel(parcel2, 1);
                return true;
            }
            parcel2.writeInt(0);
            return true;
        }

        private static class Proxy
        implements ITerminal {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return "jackpal.androidterm.libtermexec.v1.ITerminal";
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public IntentSender startSession(ParcelFileDescriptor parcelFileDescriptor, ResultReceiver resultReceiver) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("jackpal.androidterm.libtermexec.v1.ITerminal");
                    if (parcelFileDescriptor != null) {
                        parcel.writeInt(1);
                        parcelFileDescriptor.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (resultReceiver != null) {
                        parcel.writeInt(1);
                        resultReceiver.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.mRemote.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    parcelFileDescriptor = parcel2.readInt() != 0 ? (IntentSender)IntentSender.CREATOR.createFromParcel(parcel2) : null;
                    return parcelFileDescriptor;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

