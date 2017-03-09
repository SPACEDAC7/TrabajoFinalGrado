/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.MediaType
 *  okhttp3.MultipartBody
 *  okhttp3.MultipartBody$Part
 *  okhttp3.RequestBody
 */
package com.buzzfeed.toolkit.util;

import android.support.annotation.NonNull;
import java.io.File;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

public class MultipartRequestHelper {
    private static final String MULTIPART_FORM_DATA = "multipart/form-data";

    @NonNull
    public static RequestBody createPartFromString(String string2) {
        return RequestBody.create((MediaType)MediaType.parse((String)"multipart/form-data"), (String)string2);
    }

    @NonNull
    public static MultipartBody.Part prepareFilePart(String string2, File file) {
        RequestBody requestBody = RequestBody.create((MediaType)MediaType.parse((String)"multipart/form-data"), (File)file);
        return MultipartBody.Part.createFormData((String)string2, (String)file.getName(), (RequestBody)requestBody);
    }
}

