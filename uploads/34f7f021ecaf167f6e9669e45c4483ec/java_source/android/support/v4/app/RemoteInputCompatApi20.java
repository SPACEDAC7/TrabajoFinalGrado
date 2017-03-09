/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.RemoteInput
 *  android.app.RemoteInput$Builder
 *  android.content.Intent
 *  android.os.Bundle
 */
package android.support.v4.app;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

class RemoteInputCompatApi20 {
    RemoteInputCompatApi20() {
    }

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] arrremoteInput, Intent intent, Bundle bundle) {
        RemoteInput.addResultsToIntent((RemoteInput[])RemoteInputCompatApi20.fromCompat(arrremoteInput), (Intent)intent, (Bundle)bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static RemoteInput[] fromCompat(RemoteInputCompatBase.RemoteInput[] arrremoteInput) {
        if (arrremoteInput == null) {
            return null;
        }
        RemoteInput[] arrremoteInput2 = new RemoteInput[arrremoteInput.length];
        int n2 = 0;
        do {
            Object object = arrremoteInput2;
            if (n2 >= arrremoteInput.length) return object;
            object = arrremoteInput[n2];
            arrremoteInput2[n2] = new RemoteInput.Builder(object.getResultKey()).setLabel(object.getLabel()).setChoices(object.getChoices()).setAllowFreeFormInput(object.getAllowFreeFormInput()).addExtras(object.getExtras()).build();
            ++n2;
        } while (true);
    }

    static Bundle getResultsFromIntent(Intent intent) {
        return RemoteInput.getResultsFromIntent((Intent)intent);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static RemoteInputCompatBase.RemoteInput[] toCompat(RemoteInput[] arrremoteInput, RemoteInputCompatBase.RemoteInput.Factory factory) {
        if (arrremoteInput == null) {
            return null;
        }
        RemoteInput remoteInput = factory.newArray(arrremoteInput.length);
        int n2 = 0;
        do {
            RemoteInput remoteInput2 = remoteInput;
            if (n2 >= arrremoteInput.length) return remoteInput2;
            remoteInput2 = arrremoteInput[n2];
            remoteInput[n2] = factory.build(remoteInput2.getResultKey(), remoteInput2.getLabel(), remoteInput2.getChoices(), remoteInput2.getAllowFreeFormInput(), remoteInput2.getExtras());
            ++n2;
        } while (true);
    }
}

