/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.share.internal;

import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class OpenGraphJSONUtility {
    private OpenGraphJSONUtility() {
    }

    private static JSONArray toJSONArray(List object, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        object = object.iterator();
        while (object.hasNext()) {
            jSONArray.put(OpenGraphJSONUtility.toJSONValue(object.next(), photoJSONProcessor));
        }
        return jSONArray;
    }

    public static JSONObject toJSONObject(ShareOpenGraphAction shareOpenGraphAction, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String string2 : shareOpenGraphAction.keySet()) {
            jSONObject.put(string2, OpenGraphJSONUtility.toJSONValue(shareOpenGraphAction.get(string2), photoJSONProcessor));
        }
        return jSONObject;
    }

    private static JSONObject toJSONObject(ShareOpenGraphObject shareOpenGraphObject, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String string2 : shareOpenGraphObject.keySet()) {
            jSONObject.put(string2, OpenGraphJSONUtility.toJSONValue(shareOpenGraphObject.get(string2), photoJSONProcessor));
        }
        return jSONObject;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Object toJSONValue(@Nullable Object object, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        if (object == null) {
            return JSONObject.NULL;
        }
        Object object2 = object;
        if (object instanceof String) return object2;
        object2 = object;
        if (object instanceof Boolean) return object2;
        object2 = object;
        if (object instanceof Double) return object2;
        object2 = object;
        if (object instanceof Float) return object2;
        object2 = object;
        if (object instanceof Integer) return object2;
        object2 = object;
        if (object instanceof Long) return object2;
        if (object instanceof SharePhoto) {
            if (photoJSONProcessor == null) return null;
            return photoJSONProcessor.toJSONObject((SharePhoto)object);
        }
        if (object instanceof ShareOpenGraphObject) {
            return OpenGraphJSONUtility.toJSONObject((ShareOpenGraphObject)object, photoJSONProcessor);
        }
        if (!(object instanceof List)) throw new IllegalArgumentException("Invalid object found for JSON serialization: " + object.toString());
        return OpenGraphJSONUtility.toJSONArray((List)object, photoJSONProcessor);
    }

    public static interface PhotoJSONProcessor {
        public JSONObject toJSONObject(SharePhoto var1);
    }

}

