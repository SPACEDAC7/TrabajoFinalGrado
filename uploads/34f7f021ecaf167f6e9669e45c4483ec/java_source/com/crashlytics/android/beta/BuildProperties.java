/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.beta;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

class BuildProperties {
    private static final String BUILD_ID = "build_id";
    private static final String PACKAGE_NAME = "package_name";
    private static final String VERSION_CODE = "version_code";
    private static final String VERSION_NAME = "version_name";
    public final String buildId;
    public final String packageName;
    public final String versionCode;
    public final String versionName;

    BuildProperties(String string2, String string3, String string4, String string5) {
        this.versionCode = string2;
        this.versionName = string3;
        this.buildId = string4;
        this.packageName = string5;
    }

    public static BuildProperties fromProperties(Properties properties) {
        return new BuildProperties(properties.getProperty("version_code"), properties.getProperty("version_name"), properties.getProperty("build_id"), properties.getProperty("package_name"));
    }

    public static BuildProperties fromPropertiesStream(InputStream inputStream) throws IOException {
        Properties properties = new Properties();
        properties.load(inputStream);
        return BuildProperties.fromProperties(properties);
    }
}

