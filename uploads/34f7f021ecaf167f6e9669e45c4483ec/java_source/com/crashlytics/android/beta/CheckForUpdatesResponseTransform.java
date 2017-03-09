/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.crashlytics.android.beta;

import com.crashlytics.android.beta.CheckForUpdatesResponse;
import java.io.IOException;
import org.json.JSONObject;

class CheckForUpdatesResponseTransform {
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String IDENTIFIER = "identifier";
    static final String INSTANCE_IDENTIFIER = "instance_identifier";
    static final String URL = "url";
    static final String VERSION_STRING = "version_string";

    CheckForUpdatesResponseTransform() {
    }

    public CheckForUpdatesResponse fromJson(JSONObject jSONObject) throws IOException {
        if (jSONObject == null) {
            return null;
        }
        String string2 = jSONObject.optString("url", null);
        String string3 = jSONObject.optString("version_string", null);
        String string4 = jSONObject.optString("build_version", null);
        return new CheckForUpdatesResponse(string2, string3, jSONObject.optString("display_version", null), string4, jSONObject.optString("identifier", null), jSONObject.optString("instance_identifier", null));
    }
}

