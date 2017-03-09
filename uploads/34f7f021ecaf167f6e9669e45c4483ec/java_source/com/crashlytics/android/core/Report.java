/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import java.io.File;
import java.util.Map;

interface Report {
    public Map<String, String> getCustomHeaders();

    public File getFile();

    public String getFileName();

    public String getIdentifier();

    public boolean remove();
}

