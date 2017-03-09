/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.toolkit.doorbell;

import android.content.Context;
import com.buzzfeed.toolkit.doorbell.PoundStorage;
import com.buzzfeed.toolkit.doorbell.PreferenceStorage;
import java.util.ArrayList;
import java.util.List;

public class StorageProvider {
    private String mIdentifier;
    private List<PoundStorage> mStorageProviders = new ArrayList<PoundStorage>();

    public StorageProvider(Context context, String string2) {
        this.mStorageProviders.add(new PreferenceStorage(context, string2));
    }

    private String getText() {
        for (int i2 = 0; i2 < this.mStorageProviders.size(); ++i2) {
            if (!this.mStorageProviders.get(i2).isAvailable()) continue;
            return this.mStorageProviders.get(i2).getText();
        }
        return null;
    }

    public String getIdentifier() {
        if (this.mIdentifier == null) {
            this.mIdentifier = this.getText();
        }
        return this.mIdentifier;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void saveText(String string2) {
        int n2 = 0;
        while (n2 < this.mStorageProviders.size()) {
            if (this.mStorageProviders.get(n2).isAvailable()) {
                this.mStorageProviders.get(n2).saveText(string2);
                return;
            }
            ++n2;
        }
    }
}

