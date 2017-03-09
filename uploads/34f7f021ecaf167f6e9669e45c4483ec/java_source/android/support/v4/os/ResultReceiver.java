/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.os.RemoteException
 */
package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;
import android.support.v4.os.IResultReceiver;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ResultReceiver
implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>(){

        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        public ResultReceiver[] newArray(int n2) {
            return new ResultReceiver[n2];
        }
    };
    final Handler mHandler;
    final boolean mLocal;
    IResultReceiver mReceiver;

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
    }

    public int describeContents() {
        return 0;
    }

    protected void onReceiveResult(int n2, Bundle bundle) {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void send(int n2, Bundle bundle) {
        if (this.mLocal) {
            if (this.mHandler == null) {
                this.onReceiveResult(n2, bundle);
                return;
            }
            this.mHandler.post((Runnable)new MyRunnable(n2, bundle));
            return;
        }
        if (this.mReceiver == null) return;
        try {
            this.mReceiver.send(n2, bundle);
            return;
        }
        catch (RemoteException var2_3) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void writeToParcel(Parcel parcel, int n2) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new MyResultReceiver();
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
            return;
        }
    }

    class MyResultReceiver
    extends IResultReceiver.Stub {
        MyResultReceiver() {
        }

        @Override
        public void send(int n2, Bundle bundle) {
            if (ResultReceiver.this.mHandler != null) {
                ResultReceiver.this.mHandler.post((Runnable)new MyRunnable(n2, bundle));
                return;
            }
            ResultReceiver.this.onReceiveResult(n2, bundle);
        }
    }

    class MyRunnable
    implements Runnable {
        final int mResultCode;
        final Bundle mResultData;

        MyRunnable(int n2, Bundle bundle) {
            this.mResultCode = n2;
            this.mResultData = bundle;
        }

        @Override
        public void run() {
            ResultReceiver.this.onReceiveResult(this.mResultCode, this.mResultData);
        }
    }

}

