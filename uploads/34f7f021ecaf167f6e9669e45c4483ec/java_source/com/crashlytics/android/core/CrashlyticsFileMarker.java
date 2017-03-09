/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.persistence.FileStore
 */
package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.persistence.FileStore;
import java.io.File;
import java.io.IOException;

class CrashlyticsFileMarker {
    private final FileStore fileStore;
    private final String markerName;

    public CrashlyticsFileMarker(String string2, FileStore fileStore) {
        this.markerName = string2;
        this.fileStore = fileStore;
    }

    private File getMarkerFile() {
        return new File(this.fileStore.getFilesDir(), this.markerName);
    }

    public boolean create() {
        try {
            boolean bl = this.getMarkerFile().createNewFile();
            return bl;
        }
        catch (IOException var2_2) {
            Fabric.getLogger().e("CrashlyticsCore", "Error creating marker: " + this.markerName, (Throwable)var2_2);
            return false;
        }
    }

    public boolean isPresent() {
        return this.getMarkerFile().exists();
    }

    public boolean remove() {
        return this.getMarkerFile().delete();
    }
}

