/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  org.json.JSONTokener
 */
package com.facebook;

import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class GraphResponse {
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
    private static final String RESPONSE_LOG_TAG = "Response";
    public static final String SUCCESS_KEY = "success";
    private final HttpURLConnection connection;
    private final FacebookRequestError error;
    private final JSONObject graphObject;
    private final JSONArray graphObjectArray;
    private final String rawResponse;
    private final GraphRequest request;

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String string2, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, string2, null, jSONArray, null);
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String string2, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, string2, jSONObject, null, null);
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String string2, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.request = graphRequest;
        this.connection = httpURLConnection;
        this.rawResponse = string2;
        this.graphObject = jSONObject;
        this.graphObjectArray = jSONArray;
        this.error = facebookRequestError;
    }

    static List<GraphResponse> constructErrorResponses(List<GraphRequest> list, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        int n2 = list.size();
        ArrayList<GraphResponse> arrayList = new ArrayList<GraphResponse>(n2);
        for (int i2 = 0; i2 < n2; ++i2) {
            arrayList.add(new GraphResponse(list.get(i2), httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
        }
        return arrayList;
    }

    private static GraphResponse createResponseFromObject(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object object, Object object2) throws JSONException {
        Object object3 = object;
        if (object instanceof JSONObject) {
            if ((object2 = FacebookRequestError.checkResponseAndCreateError((JSONObject)(object = (JSONObject)object), object2, httpURLConnection)) != null) {
                if (object2.getErrorCode() == 190 && Utility.isCurrentAccessToken(graphRequest.getAccessToken())) {
                    AccessToken.setCurrentAccessToken(null);
                }
                return new GraphResponse(graphRequest, httpURLConnection, (FacebookRequestError)object2);
            }
            if ((object = Utility.getStringPropertyAsJSON((JSONObject)object, "body", "FACEBOOK_NON_JSON_RESULT")) instanceof JSONObject) {
                return new GraphResponse(graphRequest, httpURLConnection, object.toString(), (JSONObject)object);
            }
            if (object instanceof JSONArray) {
                return new GraphResponse(graphRequest, httpURLConnection, object.toString(), (JSONArray)object);
            }
            object3 = JSONObject.NULL;
        }
        if (object3 == JSONObject.NULL) {
            return new GraphResponse(graphRequest, httpURLConnection, object3.toString(), (JSONObject)null);
        }
        throw new FacebookException("Got unexpected object type in response, class: " + object3.getClass().getSimpleName());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static List<GraphResponse> createResponsesFromObject(HttpURLConnection httpURLConnection, List<GraphRequest> list, Object object) throws FacebookException, JSONException {
        GraphRequest graphRequest;
        int n2;
        int n3 = list.size();
        ArrayList<GraphResponse> arrayList = new ArrayList<GraphResponse>(n3);
        Object object2 = object;
        if (n3 == 1) {
            graphRequest = list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("body", object);
                n2 = httpURLConnection != null ? httpURLConnection.getResponseCode() : 200;
                jSONObject.put("code", n2);
                object2 = new JSONArray();
                object2.put((Object)jSONObject);
            }
            catch (JSONException var3_6) {
                arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, (Exception)var3_6)));
                object2 = object;
            }
            catch (IOException var3_7) {
                arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, var3_7)));
                object2 = object;
            }
        }
        if (!(object2 instanceof JSONArray) || ((JSONArray)object2).length() != n3) {
            throw new FacebookException("Unexpected number of results");
        }
        object2 = (JSONArray)object2;
        n2 = 0;
        while (n2 < object2.length()) {
            graphRequest = list.get(n2);
            try {
                arrayList.add(GraphResponse.createResponseFromObject(graphRequest, httpURLConnection, object2.get(n2), object));
            }
            catch (JSONException var6_10) {
                arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, (Exception)var6_10)));
            }
            catch (FacebookException var6_11) {
                arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, var6_11)));
            }
            ++n2;
        }
        return arrayList;
    }

    static List<GraphResponse> createResponsesFromStream(InputStream object, HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) throws FacebookException, JSONException, IOException {
        object = Utility.readStreamToString((InputStream)object);
        Logger.log(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", object.length(), object);
        return GraphResponse.createResponsesFromString((String)object, httpURLConnection, graphRequestBatch);
    }

    static List<GraphResponse> createResponsesFromString(String string2, HttpURLConnection object, GraphRequestBatch graphRequestBatch) throws FacebookException, JSONException, IOException {
        object = GraphResponse.createResponsesFromObject((HttpURLConnection)object, graphRequestBatch, new JSONTokener(string2).nextValue());
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", graphRequestBatch.getId(), string2.length(), object);
        return object;
    }

    /*
     * Exception decompiling
     */
    static List<GraphResponse> fromHttpConnection(HttpURLConnection var0, GraphRequestBatch var1_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 1[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public final HttpURLConnection getConnection() {
        return this.connection;
    }

    public final FacebookRequestError getError() {
        return this.error;
    }

    public final JSONArray getJSONArray() {
        return this.graphObjectArray;
    }

    public final JSONObject getJSONObject() {
        return this.graphObject;
    }

    public String getRawResponse() {
        return this.rawResponse;
    }

    public GraphRequest getRequest() {
        return this.request;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public GraphRequest getRequestForPagedResults(PagingDirection object) {
        String string2;
        String string3 = string2 = null;
        if (this.graphObject != null) {
            JSONObject jSONObject = this.graphObject.optJSONObject("paging");
            string3 = string2;
            if (jSONObject != null) {
                string3 = object == PagingDirection.NEXT ? jSONObject.optString("next") : jSONObject.optString("previous");
            }
        }
        if (Utility.isNullOrEmpty(string3)) {
            return null;
        }
        if (string3 != null && string3.equals(this.request.getUrlForSingleRequest())) {
            return null;
        }
        try {
            return new GraphRequest(this.request.getAccessToken(), new URL(string3));
        }
        catch (MalformedURLException var1_2) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public String toString() {
        Object object;
        try {
            object = Locale.US;
            int n2 = this.connection != null ? this.connection.getResponseCode() : 200;
            object = String.format((Locale)object, "%d", n2);
            return "{Response: " + " responseCode: " + (String)object + ", graphObject: " + (Object)this.graphObject + ", error: " + this.error + "}";
        }
        catch (IOException var1_2) {
            object = "unknown";
            return "{Response: " + " responseCode: " + (String)object + ", graphObject: " + (Object)this.graphObject + ", error: " + this.error + "}";
        }
    }

    public static enum PagingDirection {
        NEXT,
        PREVIOUS;
        

        private PagingDirection() {
        }
    }

}

