/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Utility;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

public final class FacebookRequestError {
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final String ERROR_CODE_FIELD_KEY = "code";
    private static final String ERROR_CODE_KEY = "error_code";
    private static final String ERROR_IS_TRANSIENT_KEY = "is_transient";
    private static final String ERROR_KEY = "error";
    private static final String ERROR_MESSAGE_FIELD_KEY = "message";
    private static final String ERROR_MSG_KEY = "error_msg";
    private static final String ERROR_REASON_KEY = "error_reason";
    private static final String ERROR_SUB_CODE_KEY = "error_subcode";
    private static final String ERROR_TYPE_FIELD_KEY = "type";
    private static final String ERROR_USER_MSG_KEY = "error_user_msg";
    private static final String ERROR_USER_TITLE_KEY = "error_user_title";
    static final Range HTTP_RANGE_SUCCESS = new Range(200, 299);
    public static final int INVALID_ERROR_CODE = -1;
    public static final int INVALID_HTTP_STATUS_CODE = -1;
    private final Object batchRequestResult;
    private final Category category;
    private final HttpURLConnection connection;
    private final int errorCode;
    private final String errorMessage;
    private final String errorRecoveryMessage;
    private final String errorType;
    private final String errorUserMessage;
    private final String errorUserTitle;
    private final FacebookException exception;
    private final JSONObject requestResult;
    private final JSONObject requestResultBody;
    private final int requestStatusCode;
    private final int subErrorCode;

    /*
     * Enabled aggressive block sorting
     */
    private FacebookRequestError(int n2, int n3, int n4, String object, String object2, String string2, String string3, boolean bl, JSONObject jSONObject, JSONObject jSONObject2, Object object3, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        this.requestStatusCode = n2;
        this.errorCode = n3;
        this.subErrorCode = n4;
        this.errorType = object;
        this.errorMessage = object2;
        this.requestResultBody = jSONObject;
        this.requestResult = jSONObject2;
        this.batchRequestResult = object3;
        this.connection = httpURLConnection;
        this.errorUserTitle = string2;
        this.errorUserMessage = string3;
        n2 = 0;
        if (facebookException != null) {
            this.exception = facebookException;
            n2 = 1;
        } else {
            this.exception = new FacebookServiceException(this, (String)object2);
        }
        object2 = FacebookRequestError.getErrorClassification();
        object = n2 != 0 ? Category.OTHER : object2.classify(n3, n4, bl);
        this.category = object;
        this.errorRecoveryMessage = object2.getRecoveryMessage(this.category);
    }

    public FacebookRequestError(int n2, String string2, String string3) {
        this(-1, n2, -1, string2, string3, null, null, false, null, null, null, null, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    FacebookRequestError(HttpURLConnection httpURLConnection, Exception exception) {
        exception = exception instanceof FacebookException ? (FacebookException)exception : new FacebookException(exception);
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, (FacebookException)exception);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static FacebookRequestError checkResponseAndCreateError(JSONObject var0, Object var1_2, HttpURLConnection var2_3) {
        try {
            if (var0.has("code") == false) return null;
            var13_4 = var0.getInt("code");
            var3_5 = Utility.getStringPropertyAsJSON((JSONObject)var0, "body", "FACEBOOK_NON_JSON_RESULT");
            if (var3_5 == null || !(var3_5 instanceof JSONObject)) ** GOTO lbl40
            var9_6 = (JSONObject)var3_5;
            var3_5 = null;
            var4_7 = null;
            var7_8 = null;
            var8_9 = null;
            var15_10 = false;
            var10_11 = -1;
            var11_12 = -1;
            var12_13 = false;
            if (var9_6.has("error")) {
                var7_8 = (JSONObject)Utility.getStringPropertyAsJSON(var9_6, "error", null);
                var3_5 = var7_8.optString("type", null);
                var4_7 = var7_8.optString("message", null);
                var10_11 = var7_8.optInt("code", -1);
                var11_12 = var7_8.optInt("error_subcode", -1);
                var5_14 = var7_8.optString("error_user_msg", null);
                var6_15 = var7_8.optString("error_user_title", null);
                var14_16 = var7_8.optBoolean("is_transient", false);
                return new FacebookRequestError(var13_4, var10_11, var11_12, (String)var3_5, var4_7, var6_15, (String)var5_14, var14_16, var9_6, (JSONObject)var0, var1_2, var2_3, null);
            }
            if (var9_6.has("error_code") || var9_6.has("error_msg")) ** GOTO lbl-1000
            var6_15 = var8_9;
            var5_14 = var7_8;
            var14_16 = var15_10;
            if (var9_6.has("error_reason")) lbl-1000: // 2 sources:
            {
                var3_5 = var9_6.optString("error_reason", null);
                var4_7 = var9_6.optString("error_msg", null);
                var10_11 = var9_6.optInt("error_code", -1);
                var11_12 = var9_6.optInt("error_subcode", -1);
                var12_13 = true;
                var6_15 = var8_9;
                var5_14 = var7_8;
                var14_16 = var15_10;
            }
            if (var12_13) {
                return new FacebookRequestError(var13_4, var10_11, var11_12, (String)var3_5, var4_7, var6_15, (String)var5_14, var14_16, var9_6, (JSONObject)var0, var1_2, var2_3, null);
            }
lbl40: // 3 sources:
            if (FacebookRequestError.HTTP_RANGE_SUCCESS.contains(var13_4) != false) return null;
            var3_5 = var0.has("body") != false ? (JSONObject)Utility.getStringPropertyAsJSON((JSONObject)var0, "body", "FACEBOOK_NON_JSON_RESULT") : null;
            return new FacebookRequestError(var13_4, -1, -1, null, null, null, null, false, (JSONObject)var3_5, (JSONObject)var0, var1_2, var2_3, null);
        }
        catch (JSONException var0_1) {
            // empty catch block
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static FacebookRequestErrorClassification getErrorClassification() {
        synchronized (FacebookRequestError.class) {
            Object object = Utility.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
            if (object == null) {
                object = FacebookRequestErrorClassification.getDefaultErrorClassification();
                do {
                    return object;
                    break;
                } while (true);
            }
            object = object.getErrorClassification();
            return object;
        }
    }

    public Object getBatchRequestResult() {
        return this.batchRequestResult;
    }

    public Category getCategory() {
        return this.category;
    }

    public HttpURLConnection getConnection() {
        return this.connection;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        if (this.errorMessage != null) {
            return this.errorMessage;
        }
        return this.exception.getLocalizedMessage();
    }

    public String getErrorRecoveryMessage() {
        return this.errorRecoveryMessage;
    }

    public String getErrorType() {
        return this.errorType;
    }

    public String getErrorUserMessage() {
        return this.errorUserMessage;
    }

    public String getErrorUserTitle() {
        return this.errorUserTitle;
    }

    public FacebookException getException() {
        return this.exception;
    }

    public JSONObject getRequestResult() {
        return this.requestResult;
    }

    public JSONObject getRequestResultBody() {
        return this.requestResultBody;
    }

    public int getRequestStatusCode() {
        return this.requestStatusCode;
    }

    public int getSubErrorCode() {
        return this.subErrorCode;
    }

    public String toString() {
        return "{HttpStatus: " + this.requestStatusCode + ", errorCode: " + this.errorCode + ", errorType: " + this.errorType + ", errorMessage: " + this.getErrorMessage() + "}";
    }

    public static enum Category {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT;
        

        private Category() {
        }
    }

    private static class Range {
        private final int end;
        private final int start;

        private Range(int n2, int n3) {
            this.start = n2;
            this.end = n3;
        }

        boolean contains(int n2) {
            if (this.start <= n2 && n2 <= this.end) {
                return true;
            }
            return false;
        }
    }

}

