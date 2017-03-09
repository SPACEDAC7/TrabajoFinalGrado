/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.UserMetaData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_EMAIL = "userEmail";
    private static final String KEY_USER_ID = "userId";
    private static final String KEY_USER_NAME = "userName";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    private File getKeysFileForSession(String string2) {
        return new File(this.filesDir, string2 + "keys" + ".meta");
    }

    private File getUserDataFileForSession(String string2) {
        return new File(this.filesDir, string2 + "user" + ".meta");
    }

    private static Map<String, String> jsonToKeysData(String string2) throws JSONException {
        string2 = new JSONObject(string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        Iterator iterator = string2.keys();
        while (iterator.hasNext()) {
            String string3 = (String)iterator.next();
            hashMap.put(string3, MetaDataStore.valueOrNull((JSONObject)string2, string3));
        }
        return hashMap;
    }

    private static UserMetaData jsonToUserData(String string2) throws JSONException {
        string2 = new JSONObject(string2);
        return new UserMetaData(MetaDataStore.valueOrNull((JSONObject)string2, "userId"), MetaDataStore.valueOrNull((JSONObject)string2, "userName"), MetaDataStore.valueOrNull((JSONObject)string2, "userEmail"));
    }

    private static String keysDataToJson(Map<String, String> map) throws JSONException {
        return new JSONObject(map).toString();
    }

    private static String userDataToJson(final UserMetaData userMetaData) throws JSONException {
        return new JSONObject(){}.toString();
    }

    private static String valueOrNull(JSONObject jSONObject, String string2) {
        String string3 = null;
        if (!jSONObject.isNull(string2)) {
            string3 = jSONObject.optString(string2, null);
        }
        return string3;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public Map<String, String> readKeyData(String var1_1) {
        var2_3 = this.getKeysFileForSession((String)var1_1);
        if (!var2_3.exists()) {
            return Collections.emptyMap();
        }
        var1_1 = null;
        var3_5 = null;
        var2_3 = new FileInputStream((File)var2_3);
        var1_1 = MetaDataStore.jsonToKeysData(CommonUtils.streamToString((InputStream)var2_3));
        CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close user metadata file.");
        return var1_1;
        catch (Exception var1_2) {
            var2_3 = var3_5;
            var3_5 = var1_2;
            ** GOTO lbl21
            catch (Throwable var3_6) {
                var1_1 = var2_3;
                var2_3 = var3_6;
                ** GOTO lbl-1000
            }
            catch (Exception var3_7) {}
lbl21: // 2 sources:
            var1_1 = var2_3;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Error deserializing user metadata.", (Throwable)var3_5);
            }
            catch (Throwable var2_4) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var1_1, "Failed to close user metadata file.");
                throw var2_3;
            }
            CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close user metadata file.");
            return Collections.emptyMap();
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public UserMetaData readUserData(String var1_1) {
        var2_3 = this.getUserDataFileForSession((String)var1_1);
        if (!var2_3.exists()) {
            return UserMetaData.EMPTY;
        }
        var1_1 = null;
        var3_5 = null;
        var2_3 = new FileInputStream((File)var2_3);
        var1_1 = MetaDataStore.jsonToUserData(CommonUtils.streamToString((InputStream)var2_3));
        CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close user metadata file.");
        return var1_1;
        catch (Exception var1_2) {
            var2_3 = var3_5;
            var3_5 = var1_2;
            ** GOTO lbl21
            catch (Throwable var3_6) {
                var1_1 = var2_3;
                var2_3 = var3_6;
                ** GOTO lbl-1000
            }
            catch (Exception var3_7) {}
lbl21: // 2 sources:
            var1_1 = var2_3;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Error deserializing user metadata.", (Throwable)var3_5);
            }
            catch (Throwable var2_4) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var1_1, "Failed to close user metadata file.");
                throw var2_3;
            }
            CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close user metadata file.");
            return UserMetaData.EMPTY;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public void writeKeyData(String var1_1, Map<String, String> var2_3) {
        var5_5 = this.getKeysFileForSession((String)var1_1);
        var4_6 = null;
        var3_7 = null;
        var1_1 = var4_6;
        var6_10 = MetaDataStore.keysDataToJson(var2_3);
        var1_1 = var4_6;
        var2_3 = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(var5_5), MetaDataStore.UTF_8));
        var2_3.write(var6_10);
        var2_3.flush();
        CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close key/value metadata file.");
        return;
        catch (Exception var1_2) {
            var2_3 = var3_7;
            var3_7 = var1_2;
            ** GOTO lbl23
            catch (Throwable var3_8) {
                var1_1 = var2_3;
                var2_3 = var3_8;
                ** GOTO lbl-1000
            }
            catch (Exception var3_9) {}
lbl23: // 2 sources:
            var1_1 = var2_3;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Error serializing key/value metadata.", (Throwable)var3_7);
            }
            catch (Throwable var2_4) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var1_1, "Failed to close key/value metadata file.");
                throw var2_3;
            }
            CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close key/value metadata file.");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public void writeUserData(String var1_1, UserMetaData var2_3) {
        var5_5 = this.getUserDataFileForSession((String)var1_1);
        var4_6 = null;
        var3_7 = null;
        var1_1 = var4_6;
        var6_10 = MetaDataStore.userDataToJson((UserMetaData)var2_3);
        var1_1 = var4_6;
        var2_3 = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(var5_5), MetaDataStore.UTF_8));
        var2_3.write(var6_10);
        var2_3.flush();
        CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close user metadata file.");
        return;
        catch (Exception var1_2) {
            var2_3 = var3_7;
            var3_7 = var1_2;
            ** GOTO lbl23
            catch (Throwable var3_8) {
                var1_1 = var2_3;
                var2_3 = var3_8;
                ** GOTO lbl-1000
            }
            catch (Exception var3_9) {}
lbl23: // 2 sources:
            var1_1 = var2_3;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Error serializing user metadata.", (Throwable)var3_7);
            }
            catch (Throwable var2_4) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var1_1, "Failed to close user metadata file.");
                throw var2_3;
            }
            CommonUtils.closeOrLog((Closeable)var2_3, "Failed to close user metadata file.");
            return;
        }
    }

}

