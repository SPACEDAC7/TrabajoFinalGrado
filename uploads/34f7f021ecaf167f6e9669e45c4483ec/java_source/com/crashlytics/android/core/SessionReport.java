/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;
import com.crashlytics.android.core.ReportUploader;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class SessionReport
implements Report {
    private final Map<String, String> customHeaders;
    private final File file;

    public SessionReport(File file) {
        this(file, Collections.emptyMap());
    }

    public SessionReport(File file, Map<String, String> map) {
        this.file = file;
        this.customHeaders = new HashMap<String, String>(map);
        if (this.file.length() == 0) {
            this.customHeaders.putAll(ReportUploader.HEADER_INVALID_CLS_FILE);
        }
    }

    @Override
    public Map<String, String> getCustomHeaders() {
        return Collections.unmodifiableMap(this.customHeaders);
    }

    @Override
    public File getFile() {
        return this.file;
    }

    @Override
    public String getFileName() {
        return this.getFile().getName();
    }

    @Override
    public String getIdentifier() {
        String string2 = this.getFileName();
        return string2.substring(0, string2.lastIndexOf(46));
    }

    @Override
    public boolean remove() {
        Fabric.getLogger().d("CrashlyticsCore", "Removing report at " + this.file.getPath());
        return this.file.delete();
    }
}

