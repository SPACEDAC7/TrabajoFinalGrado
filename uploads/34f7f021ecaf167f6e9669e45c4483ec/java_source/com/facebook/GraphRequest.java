/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$CompressFormat
 *  android.location.Location
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Parcel
 *  android.os.ParcelFileDescriptor
 *  android.os.ParcelFileDescriptor$AutoCloseInputStream
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  android.util.Log
 *  android.util.Pair
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.AccessTokenManager;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.ProgressNoopOutputStream;
import com.facebook.ProgressOutputStream;
import com.facebook.RequestOutputStream;
import com.facebook.RequestProgress;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GraphRequest {
    private static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
    private static final String ACCESS_TOKEN_PARAM = "access_token";
    private static final String ATTACHED_FILES_PARAM = "attached_files";
    private static final String ATTACHMENT_FILENAME_PREFIX = "file";
    private static final String BATCH_APP_ID_PARAM = "batch_app_id";
    private static final String BATCH_BODY_PARAM = "body";
    private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
    private static final String BATCH_ENTRY_NAME_PARAM = "name";
    private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
    private static final String BATCH_METHOD_PARAM = "method";
    private static final String BATCH_PARAM = "batch";
    private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
    private static final String CONTENT_ENCODING_HEADER = "Content-Encoding";
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String DEBUG_KEY = "__debug__";
    private static final String DEBUG_MESSAGES_KEY = "messages";
    private static final String DEBUG_MESSAGE_KEY = "message";
    private static final String DEBUG_MESSAGE_LINK_KEY = "link";
    private static final String DEBUG_MESSAGE_TYPE_KEY = "type";
    private static final String DEBUG_PARAM = "debug";
    private static final String DEBUG_SEVERITY_INFO = "info";
    private static final String DEBUG_SEVERITY_WARNING = "warning";
    private static final String FORMAT_JSON = "json";
    private static final String FORMAT_PARAM = "format";
    private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final int MAXIMUM_BATCH_SIZE = 50;
    private static final String ME = "me";
    private static final String MIME_BOUNDARY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
    private static final String MY_FRIENDS = "me/friends";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    public static final String TAG = GraphRequest.class.getSimpleName();
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static final String VIDEOS_SUFFIX = "/videos";
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private static Pattern versionPattern;
    private AccessToken accessToken;
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess = true;
    private Callback callback;
    private JSONObject graphObject;
    private String graphPath;
    private HttpMethod httpMethod;
    private String overriddenURL;
    private Bundle parameters;
    private boolean skipClientToken = false;
    private Object tag;
    private String version;

    static {
        versionPattern = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String string2) {
        this(accessToken, string2, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String string2, Bundle bundle, HttpMethod httpMethod) {
        this(accessToken, string2, bundle, httpMethod, null);
    }

    public GraphRequest(AccessToken accessToken, String string2, Bundle bundle, HttpMethod httpMethod, Callback callback) {
        this(accessToken, string2, bundle, httpMethod, callback, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public GraphRequest(AccessToken accessToken, String string2, Bundle bundle, HttpMethod httpMethod, Callback callback, String string3) {
        this.accessToken = accessToken;
        this.graphPath = string2;
        this.version = string3;
        this.setCallback(callback);
        this.setHttpMethod(httpMethod);
        this.parameters = bundle != null ? new Bundle(bundle) : new Bundle();
        if (this.version == null) {
            this.version = ServerProtocol.getAPIVersion();
        }
    }

    GraphRequest(AccessToken accessToken, URL uRL) {
        this.accessToken = accessToken;
        this.overriddenURL = uRL.toString();
        this.setHttpMethod(HttpMethod.GET);
        this.parameters = new Bundle();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addCommonParameters() {
        if (this.accessToken != null) {
            if (!this.parameters.containsKey("access_token")) {
                String string2 = this.accessToken.getToken();
                Logger.registerAccessToken(string2);
                this.parameters.putString("access_token", string2);
            }
        } else if (!this.skipClientToken && !this.parameters.containsKey("access_token")) {
            String string3 = FacebookSdk.getApplicationId();
            String string4 = FacebookSdk.getClientToken();
            if (!Utility.isNullOrEmpty(string3) && !Utility.isNullOrEmpty(string4)) {
                string3 = string3 + "|" + string4;
                this.parameters.putString("access_token", string3);
            } else {
                Log.d((String)TAG, (String)"Warning: Request without access token missing application ID or client token.");
            }
        }
        this.parameters.putString("sdk", "android");
        this.parameters.putString("format", "json");
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            this.parameters.putString("debug", "info");
            return;
        } else {
            if (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) return;
            {
                this.parameters.putString("debug", "warning");
                return;
            }
        }
    }

    private String appendParametersToBaseUrl(String object) {
        Uri.Builder builder = new Uri.Builder().encodedPath((String)object);
        for (String string2 : this.parameters.keySet()) {
            Object object2;
            object = object2 = this.parameters.get(string2);
            if (object2 == null) {
                object = "";
            }
            if (GraphRequest.isSupportedParameterType(object)) {
                builder.appendQueryParameter(string2, GraphRequest.parameterToString(object).toString());
                continue;
            }
            if (this.httpMethod != HttpMethod.GET) continue;
            throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", object.getClass().getSimpleName()));
        }
        return builder.toString();
    }

    private static HttpURLConnection createConnection(URL object) throws IOException {
        object = (HttpURLConnection)object.openConnection();
        object.setRequestProperty("User-Agent", GraphRequest.getUserAgent());
        object.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        object.setChunkedStreamingMode(0);
        return object;
    }

    public static GraphResponse executeAndWait(GraphRequest list) {
        GraphRequest[] arrgraphRequest = new GraphRequest[]{list};
        list = GraphRequest.executeBatchAndWait(arrgraphRequest);
        if (list == null || list.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return (GraphResponse)list.get(0);
    }

    public static List<GraphResponse> executeBatchAndWait(GraphRequestBatch graphRequestBatch) {
        HttpURLConnection httpURLConnection;
        Validate.notEmptyAndContainsNoNulls(graphRequestBatch, "requests");
        try {
            httpURLConnection = GraphRequest.toHttpConnection(graphRequestBatch);
        }
        catch (Exception var1_2) {
            List<GraphResponse> list = GraphResponse.constructErrorResponses(graphRequestBatch.getRequests(), null, new FacebookException(var1_2));
            GraphRequest.runCallbacks(graphRequestBatch, list);
            return list;
        }
        return GraphRequest.executeConnectionAndWait(httpURLConnection, graphRequestBatch);
    }

    public static List<GraphResponse> executeBatchAndWait(Collection<GraphRequest> collection) {
        return GraphRequest.executeBatchAndWait(new GraphRequestBatch(collection));
    }

    public static /* varargs */ List<GraphResponse> executeBatchAndWait(GraphRequest ... arrgraphRequest) {
        Validate.notNull(arrgraphRequest, "requests");
        return GraphRequest.executeBatchAndWait(Arrays.asList(arrgraphRequest));
    }

    public static GraphRequestAsyncTask executeBatchAsync(GraphRequestBatch object) {
        Validate.notEmptyAndContainsNoNulls(object, "requests");
        object = new GraphRequestAsyncTask((GraphRequestBatch)object);
        object.executeOnSettingsExecutor();
        return object;
    }

    public static GraphRequestAsyncTask executeBatchAsync(Collection<GraphRequest> collection) {
        return GraphRequest.executeBatchAsync(new GraphRequestBatch(collection));
    }

    public static /* varargs */ GraphRequestAsyncTask executeBatchAsync(GraphRequest ... arrgraphRequest) {
        Validate.notNull(arrgraphRequest, "requests");
        return GraphRequest.executeBatchAsync(Arrays.asList(arrgraphRequest));
    }

    public static List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        List<GraphResponse> list = GraphResponse.fromHttpConnection(httpURLConnection, graphRequestBatch);
        Utility.disconnectQuietly(httpURLConnection);
        int n2 = graphRequestBatch.size();
        if (n2 != list.size()) {
            throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", list.size(), n2));
        }
        GraphRequest.runCallbacks(graphRequestBatch, list);
        AccessTokenManager.getInstance().extendAccessTokenIfNeeded();
        return list;
    }

    public static List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        return GraphRequest.executeConnectionAndWait(httpURLConnection, new GraphRequestBatch(collection));
    }

    public static GraphRequestAsyncTask executeConnectionAsync(Handler handler, HttpURLConnection object, GraphRequestBatch graphRequestBatch) {
        Validate.notNull(object, "connection");
        object = new GraphRequestAsyncTask((HttpURLConnection)object, graphRequestBatch);
        graphRequestBatch.setCallbackHandler(handler);
        object.executeOnSettingsExecutor();
        return object;
    }

    public static GraphRequestAsyncTask executeConnectionAsync(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        return GraphRequest.executeConnectionAsync(null, httpURLConnection, graphRequestBatch);
    }

    private static String getBatchAppId(GraphRequestBatch object) {
        if (!Utility.isNullOrEmpty(object.getBatchApplicationId())) {
            return object.getBatchApplicationId();
        }
        object = object.iterator();
        while (object.hasNext()) {
            Object object2 = ((GraphRequest)object.next()).accessToken;
            if (object2 == null || (object2 = object2.getApplicationId()) == null) continue;
            return object2;
        }
        if (!Utility.isNullOrEmpty(defaultBatchApplicationId)) {
            return defaultBatchApplicationId;
        }
        return FacebookSdk.getApplicationId();
    }

    public static final String getDefaultBatchApplicationId() {
        return defaultBatchApplicationId;
    }

    private String getGraphPathWithVersion() {
        if (versionPattern.matcher(this.graphPath).matches()) {
            return this.graphPath;
        }
        return String.format("%s/%s", this.version, this.graphPath);
    }

    private static String getMimeContentType() {
        return String.format("multipart/form-data; boundary=%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }

    private static String getUserAgent() {
        if (userAgent == null) {
            userAgent = String.format("%s.%s", "FBAndroidSDK", "4.0.0");
        }
        return userAgent;
    }

    private static boolean hasOnProgressCallbacks(GraphRequestBatch object) {
        Iterator<GraphRequestBatch.Callback> iterator = object.getCallbacks().iterator();
        while (iterator.hasNext()) {
            if (!(iterator.next() instanceof GraphRequestBatch.OnProgressCallback)) continue;
            return true;
        }
        object = object.iterator();
        while (object.hasNext()) {
            if (!(((GraphRequest)object.next()).getCallback() instanceof OnProgressCallback)) continue;
            return true;
        }
        return false;
    }

    private static boolean isGzipCompressible(GraphRequestBatch object) {
        object = object.iterator();
        while (object.hasNext()) {
            GraphRequest graphRequest = (GraphRequest)object.next();
            for (String string2 : graphRequest.parameters.keySet()) {
                if (!GraphRequest.isSupportedAttachmentType(graphRequest.parameters.get(string2))) continue;
                return false;
            }
        }
        return true;
    }

    private static boolean isMeRequest(String string2) {
        Matcher matcher = versionPattern.matcher(string2);
        if (matcher.matches()) {
            string2 = matcher.group(1);
        }
        if (string2.startsWith("me/") || string2.startsWith("/me/")) {
            return true;
        }
        return false;
    }

    private static boolean isSupportedAttachmentType(Object object) {
        if (object instanceof Bitmap || object instanceof byte[] || object instanceof Uri || object instanceof ParcelFileDescriptor || object instanceof ParcelableResourceWithMimeType) {
            return true;
        }
        return false;
    }

    private static boolean isSupportedParameterType(Object object) {
        if (object instanceof String || object instanceof Boolean || object instanceof Number || object instanceof Date) {
            return true;
        }
        return false;
    }

    public static GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, Callback callback) {
        return GraphRequest.newCustomAudienceThirdPartyIdRequest(accessToken, context, null, callback);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, String string2, Callback callback) {
        String string3 = string2;
        if (string2 == null) {
            string3 = string2;
            if (accessToken != null) {
                string3 = accessToken.getApplicationId();
            }
        }
        string2 = string3;
        if (string3 == null) {
            string2 = Utility.getMetadataApplicationId(context);
        }
        if (string2 == null) {
            throw new FacebookException("Facebook App ID cannot be determined");
        }
        string3 = string2 + "/custom_audience_third_party_id";
        AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(context);
        Bundle bundle = new Bundle();
        if (accessToken == null) {
            string2 = attributionIdentifiers.getAttributionId() != null ? attributionIdentifiers.getAttributionId() : attributionIdentifiers.getAndroidAdvertiserId();
            if (attributionIdentifiers.getAttributionId() != null) {
                bundle.putString("udid", string2);
            }
        }
        if (FacebookSdk.getLimitEventAndDataUsage(context) || attributionIdentifiers.isTrackingLimited()) {
            bundle.putString("limit_event_usage", "1");
        }
        return new GraphRequest(accessToken, string3, bundle, HttpMethod.GET, callback);
    }

    public static GraphRequest newDeleteObjectRequest(AccessToken accessToken, String string2, Callback callback) {
        return new GraphRequest(accessToken, string2, null, HttpMethod.DELETE, callback);
    }

    public static GraphRequest newGraphPathRequest(AccessToken accessToken, String string2, Callback callback) {
        return new GraphRequest(accessToken, string2, null, null, callback);
    }

    public static GraphRequest newMeRequest(AccessToken accessToken, final GraphJSONObjectCallback graphJSONObjectCallback) {
        return new GraphRequest(accessToken, "me", null, null, new Callback(){

            @Override
            public void onCompleted(GraphResponse graphResponse) {
                if (graphJSONObjectCallback != null) {
                    graphJSONObjectCallback.onCompleted(graphResponse.getJSONObject(), graphResponse);
                }
            }
        });
    }

    public static GraphRequest newMyFriendsRequest(AccessToken accessToken, final GraphJSONArrayCallback graphJSONArrayCallback) {
        return new GraphRequest(accessToken, "me/friends", null, null, new Callback(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onCompleted(GraphResponse graphResponse) {
                if (graphJSONArrayCallback != null) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    jSONObject = jSONObject != null ? jSONObject.optJSONArray("data") : null;
                    graphJSONArrayCallback.onCompleted((JSONArray)jSONObject, graphResponse);
                }
            }
        });
    }

    public static GraphRequest newPlacesSearchRequest(AccessToken accessToken, Location object, int n2, int n3, String string2, final GraphJSONArrayCallback graphJSONArrayCallback) {
        if (object == null && Utility.isNullOrEmpty(string2)) {
            throw new FacebookException("Either location or searchText must be specified.");
        }
        Bundle bundle = new Bundle(5);
        bundle.putString("type", "place");
        bundle.putInt("limit", n3);
        if (object != null) {
            bundle.putString("center", String.format(Locale.US, "%f,%f", object.getLatitude(), object.getLongitude()));
            bundle.putInt("distance", n2);
        }
        if (!Utility.isNullOrEmpty(string2)) {
            bundle.putString("q", string2);
        }
        object = new Callback(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onCompleted(GraphResponse graphResponse) {
                if (graphJSONArrayCallback != null) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    jSONObject = jSONObject != null ? jSONObject.optJSONArray("data") : null;
                    graphJSONArrayCallback.onCompleted((JSONArray)jSONObject, graphResponse);
                }
            }
        };
        return new GraphRequest(accessToken, "search", bundle, HttpMethod.GET, (Callback)object);
    }

    public static GraphRequest newPostRequest(AccessToken object, String string2, JSONObject jSONObject, Callback callback) {
        object = new GraphRequest((AccessToken)object, string2, null, HttpMethod.POST, callback);
        object.setGraphObject(jSONObject);
        return object;
    }

    private static String parameterToString(Object object) {
        if (object instanceof String) {
            return (String)object;
        }
        if (object instanceof Boolean || object instanceof Number) {
            return object.toString();
        }
        if (object instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(object);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void processGraphObject(JSONObject jSONObject, String object, KeyValueSerializer keyValueSerializer) throws IOException {
        int n2 = 0;
        if (GraphRequest.isMeRequest((String)object)) {
            n2 = object.indexOf(":");
            int n3 = object.indexOf("?");
            n2 = n2 > 3 && (n3 == -1 || n2 < n3) ? 1 : 0;
        }
        object = jSONObject.keys();
        while (object.hasNext()) {
            String string2 = (String)object.next();
            Object object2 = jSONObject.opt(string2);
            boolean bl = n2 != 0 && string2.equalsIgnoreCase("image");
            GraphRequest.processGraphObjectProperty(string2, object2, keyValueSerializer, bl);
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void processGraphObjectProperty(String string2, Object object, KeyValueSerializer keyValueSerializer, boolean bl) throws IOException {
        Class class_ = object.getClass();
        if (JSONObject.class.isAssignableFrom(class_)) {
            object = (JSONObject)object;
            if (bl) {
                class_ = object.keys();
                while (class_.hasNext()) {
                    String string3 = (String)class_.next();
                    GraphRequest.processGraphObjectProperty(String.format("%s[%s]", string2, string3), object.opt(string3), keyValueSerializer, bl);
                }
                return;
            } else if (object.has("id")) {
                GraphRequest.processGraphObjectProperty(string2, object.optString("id"), keyValueSerializer, bl);
                return;
            } else {
                if (object.has("url")) {
                    GraphRequest.processGraphObjectProperty(string2, object.optString("url"), keyValueSerializer, bl);
                    return;
                }
                if (!object.has("fbsdk:create_object")) return;
                {
                    GraphRequest.processGraphObjectProperty(string2, object.toString(), keyValueSerializer, bl);
                    return;
                }
            }
        } else {
            if (JSONArray.class.isAssignableFrom(class_)) {
                object = (JSONArray)object;
                int n2 = object.length();
                int n3 = 0;
                while (n3 < n2) {
                    GraphRequest.processGraphObjectProperty(String.format(Locale.ROOT, "%s[%d]", string2, n3), object.opt(n3), keyValueSerializer, bl);
                    ++n3;
                }
                return;
            }
            if (String.class.isAssignableFrom(class_) || Number.class.isAssignableFrom(class_) || Boolean.class.isAssignableFrom(class_)) {
                keyValueSerializer.writeString(string2, object.toString());
                return;
            }
            if (!Date.class.isAssignableFrom(class_)) return;
            {
                object = (Date)object;
                keyValueSerializer.writeString(string2, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)object));
                return;
            }
        }
    }

    private static void processRequest(GraphRequestBatch object, Logger logger, int n2, URL object2, OutputStream object3, boolean bl) throws IOException, JSONException {
        object3 = new Serializer((OutputStream)object3, logger, bl);
        if (n2 == 1) {
            object = object.get(0);
            HashMap<String, Attachment> hashMap = new HashMap<String, Attachment>();
            for (String string2 : object.parameters.keySet()) {
                Object object4 = object.parameters.get(string2);
                if (!GraphRequest.isSupportedAttachmentType(object4)) continue;
                hashMap.put(string2, new Attachment((GraphRequest)object, object4));
            }
            if (logger != null) {
                logger.append("  Parameters:\n");
            }
            GraphRequest.serializeParameters(object.parameters, (Serializer)object3, (GraphRequest)object);
            if (logger != null) {
                logger.append("  Attachments:\n");
            }
            GraphRequest.serializeAttachments(hashMap, (Serializer)object3);
            if (object.graphObject != null) {
                GraphRequest.processGraphObject(object.graphObject, object2.getPath(), (KeyValueSerializer)object3);
            }
            return;
        }
        object2 = GraphRequest.getBatchAppId((GraphRequestBatch)object);
        if (Utility.isNullOrEmpty((String)object2)) {
            throw new FacebookException("App ID was not specified at the request or Settings.");
        }
        object3.writeString("batch_app_id", (String)object2);
        object2 = new HashMap<String, Attachment>();
        GraphRequest.serializeRequestsAsJSON((Serializer)object3, object, object2);
        if (logger != null) {
            logger.append("  Attachments:\n");
        }
        GraphRequest.serializeAttachments(object2, (Serializer)object3);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static void runCallbacks(final GraphRequestBatch graphRequestBatch, List<GraphResponse> object) {
        int n2 = graphRequestBatch.size();
        final ArrayList<Pair> arrayList = new ArrayList<Pair>();
        for (int i2 = 0; i2 < n2; ++i2) {
            GraphRequest graphRequest = graphRequestBatch.get(i2);
            if (graphRequest.callback == null) continue;
            arrayList.add(new Pair((Object)graphRequest.callback, object.get(i2)));
        }
        if (arrayList.size() <= 0) return;
        object = new Runnable(){

            @Override
            public void run() {
                for (Pair pair : arrayList) {
                    ((Callback)pair.first).onCompleted((GraphResponse)pair.second);
                }
                Iterator iterator = graphRequestBatch.getCallbacks().iterator();
                while (iterator.hasNext()) {
                    ((GraphRequestBatch.Callback)iterator.next()).onBatchCompleted(graphRequestBatch);
                }
            }
        };
        if ((graphRequestBatch = graphRequestBatch.getCallbackHandler()) == null) {
            object.run();
            return;
        }
        graphRequestBatch.post((Runnable)object);
    }

    private static void serializeAttachments(Map<String, Attachment> map, Serializer serializer) throws IOException {
        for (String string2 : map.keySet()) {
            Attachment attachment = map.get(string2);
            if (!GraphRequest.isSupportedAttachmentType(attachment.getValue())) continue;
            serializer.writeObject(string2, attachment.getValue(), attachment.getRequest());
        }
    }

    private static void serializeParameters(Bundle bundle, Serializer serializer, GraphRequest graphRequest) throws IOException {
        for (String string2 : bundle.keySet()) {
            Object object = bundle.get(string2);
            if (!GraphRequest.isSupportedParameterType(object)) continue;
            serializer.writeObject(string2, object, graphRequest);
        }
    }

    private static void serializeRequestsAsJSON(Serializer serializer, Collection<GraphRequest> collection, Map<String, Attachment> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        Iterator<GraphRequest> iterator = collection.iterator();
        while (iterator.hasNext()) {
            iterator.next().serializeToBatch(jSONArray, map);
        }
        serializer.writeRequestsAsJson("batch", jSONArray, collection);
    }

    private void serializeToBatch(JSONArray jSONArray, Map<String, Attachment> object) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        if (this.batchEntryName != null) {
            jSONObject.put("name", (Object)this.batchEntryName);
            jSONObject.put("omit_response_on_success", this.batchEntryOmitResultOnSuccess);
        }
        if (this.batchEntryDependsOn != null) {
            jSONObject.put("depends_on", (Object)this.batchEntryDependsOn);
        }
        String string2 = this.getUrlForBatchedRequest();
        jSONObject.put("relative_url", (Object)string2);
        jSONObject.put("method", (Object)this.httpMethod);
        if (this.accessToken != null) {
            Logger.registerAccessToken(this.accessToken.getToken());
        }
        ArrayList<String> arrayList = new ArrayList<String>();
        for (Object object2 : this.parameters.keySet()) {
            if (!GraphRequest.isSupportedAttachmentType(object2 = this.parameters.get((String)object2))) continue;
            String string3 = String.format(Locale.ROOT, "%s%d", "file", object.size());
            arrayList.add(string3);
            object.put(string3, new Attachment(this, object2));
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", (Object)TextUtils.join((CharSequence)",", arrayList));
        }
        if (this.graphObject != null) {
            object = new ArrayList();
            GraphRequest.processGraphObject(this.graphObject, string2, new KeyValueSerializer((ArrayList)object){
                final /* synthetic */ ArrayList val$keysAndValues;

                @Override
                public void writeString(String string2, String string3) throws IOException {
                    this.val$keysAndValues.add(String.format(Locale.US, "%s=%s", string2, URLEncoder.encode(string3, "UTF-8")));
                }
            });
            jSONObject.put("body", (Object)TextUtils.join((CharSequence)"&", (Iterable)object));
        }
        jSONArray.put((Object)jSONObject);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static final void serializeToUrlConnection(GraphRequestBatch var0, HttpURLConnection var1_4) throws IOException, JSONException {
        block7 : {
            var7_5 = new Logger(LoggingBehavior.REQUESTS, "Request");
            var3_6 = var0.size();
            var4_7 = GraphRequest.isGzipCompressible(var0);
            var5_8 = var3_6 == 1 ? var0.get((int)0).httpMethod : HttpMethod.POST;
            var1_4.setRequestMethod(var5_8.name());
            GraphRequest.setConnectionContentType((HttpURLConnection)var1_4, var4_7);
            var8_9 = var1_4.getURL();
            var7_5.append("Request:\n");
            var7_5.appendKeyValue("Id", var0.getId());
            var7_5.appendKeyValue("URL", var8_9);
            var7_5.appendKeyValue("Method", var1_4.getRequestMethod());
            var7_5.appendKeyValue("User-Agent", var1_4.getRequestProperty("User-Agent"));
            var7_5.appendKeyValue("Content-Type", var1_4.getRequestProperty("Content-Type"));
            var1_4.setConnectTimeout(var0.getTimeout());
            var1_4.setReadTimeout(var0.getTimeout());
            var2_10 = var5_8 == HttpMethod.POST ? 1 : 0;
            if (var2_10 == 0) {
                var7_5.log();
                return;
            }
            var1_4.setDoOutput(true);
            var5_8 = null;
            try {
                var1_4 = var6_11 = new BufferedOutputStream(var1_4.getOutputStream());
                if (!var4_7) ** GOTO lbl29
                var5_8 = var6_11;
            }
            catch (Throwable var0_1) {}
            try {
                var1_4 = new GZIPOutputStream(var6_11);
lbl29: // 2 sources:
                var5_8 = var1_4;
                if (GraphRequest.hasOnProgressCallbacks(var0)) {
                    var5_8 = var1_4;
                    var6_12 = new ProgressNoopOutputStream(var0.getCallbackHandler());
                    var5_8 = var1_4;
                    GraphRequest.processRequest(var0, null, var3_6, var8_9, var6_12, var4_7);
                    var5_8 = var1_4;
                    var2_10 = var6_12.getMaxProgress();
                    var5_8 = var1_4;
                    var1_4 = new ProgressOutputStream((OutputStream)var1_4, var0, var6_12.getProgressMap(), var2_10);
                }
                var5_8 = var1_4;
            }
            catch (Throwable var0_3) {}
            GraphRequest.processRequest(var0, var7_5, var3_6, var8_9, (OutputStream)var1_4, var4_7);
            if (var1_4 == null) break block7;
            var1_4.close();
        }
        var7_5.log();
        return;
        {
            if (var5_8 == null) throw var0_2;
            var5_8.close();
            throw var0_2;
        }
    }

    private static void setConnectionContentType(HttpURLConnection httpURLConnection, boolean bl) {
        if (bl) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
            return;
        }
        httpURLConnection.setRequestProperty("Content-Type", GraphRequest.getMimeContentType());
    }

    public static final void setDefaultBatchApplicationId(String string2) {
        defaultBatchApplicationId = string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static HttpURLConnection toHttpConnection(GraphRequestBatch graphRequestBatch) {
        Object object;
        try {
            object = graphRequestBatch.size() == 1 ? new URL(graphRequestBatch.get(0).getUrlForSingleRequest()) : new URL(ServerProtocol.getGraphUrlBase());
        }
        catch (MalformedURLException var0_1) {
            throw new FacebookException("could not construct URL for request", var0_1);
        }
        try {
            object = GraphRequest.createConnection((URL)object);
            GraphRequest.serializeToUrlConnection(graphRequestBatch, (HttpURLConnection)object);
            return object;
        }
        catch (IOException var0_2) {
            throw new FacebookException("could not construct request body", var0_2);
        }
        catch (JSONException var0_3) {
            throw new FacebookException("could not construct request body", (Throwable)var0_3);
        }
    }

    public static HttpURLConnection toHttpConnection(Collection<GraphRequest> collection) {
        Validate.notEmptyAndContainsNoNulls(collection, "requests");
        return GraphRequest.toHttpConnection(new GraphRequestBatch(collection));
    }

    public static /* varargs */ HttpURLConnection toHttpConnection(GraphRequest ... arrgraphRequest) {
        return GraphRequest.toHttpConnection(Arrays.asList(arrgraphRequest));
    }

    public final GraphResponse executeAndWait() {
        return GraphRequest.executeAndWait(this);
    }

    public final GraphRequestAsyncTask executeAsync() {
        return GraphRequest.executeBatchAsync(this);
    }

    public final AccessToken getAccessToken() {
        return this.accessToken;
    }

    public final String getBatchEntryDependsOn() {
        return this.batchEntryDependsOn;
    }

    public final String getBatchEntryName() {
        return this.batchEntryName;
    }

    public final boolean getBatchEntryOmitResultOnSuccess() {
        return this.batchEntryOmitResultOnSuccess;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final JSONObject getGraphObject() {
        return this.graphObject;
    }

    public final String getGraphPath() {
        return this.graphPath;
    }

    public final HttpMethod getHttpMethod() {
        return this.httpMethod;
    }

    public final Bundle getParameters() {
        return this.parameters;
    }

    public final Object getTag() {
        return this.tag;
    }

    final String getUrlForBatchedRequest() {
        if (this.overriddenURL != null) {
            throw new FacebookException("Can't override URL for a batch request");
        }
        String string2 = this.getGraphPathWithVersion();
        this.addCommonParameters();
        return this.appendParametersToBaseUrl(string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    final String getUrlForSingleRequest() {
        if (this.overriddenURL != null) {
            return this.overriddenURL.toString();
        }
        String string2 = this.getHttpMethod() == HttpMethod.POST && this.graphPath != null && this.graphPath.endsWith("/videos") ? ServerProtocol.getGraphVideoUrlBase() : ServerProtocol.getGraphUrlBase();
        string2 = String.format("%s/%s", string2, this.getGraphPathWithVersion());
        this.addCommonParameters();
        return this.appendParametersToBaseUrl(string2);
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setAccessToken(AccessToken accessToken) {
        this.accessToken = accessToken;
    }

    public final void setBatchEntryDependsOn(String string2) {
        this.batchEntryDependsOn = string2;
    }

    public final void setBatchEntryName(String string2) {
        this.batchEntryName = string2;
    }

    public final void setBatchEntryOmitResultOnSuccess(boolean bl) {
        this.batchEntryOmitResultOnSuccess = bl;
    }

    public final void setCallback(final Callback callback) {
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO) || FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.callback = new Callback(){

                /*
                 * Enabled aggressive block sorting
                 */
                @Override
                public void onCompleted(GraphResponse graphResponse) {
                    Object object = graphResponse.getJSONObject();
                    object = object != null ? object.optJSONObject("__debug__") : null;
                    JSONArray jSONArray = object != null ? object.optJSONArray("messages") : null;
                    if (jSONArray != null) {
                        for (int i2 = 0; i2 < jSONArray.length(); ++i2) {
                            Object object2 = jSONArray.optJSONObject(i2);
                            object = object2 != null ? object2.optString("message") : null;
                            Object object3 = object2 != null ? object2.optString("type") : null;
                            object2 = object2 != null ? object2.optString("link") : null;
                            if (object == null || object3 == null) continue;
                            LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
                            if (object3.equals("warning")) {
                                loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
                            }
                            object3 = object;
                            if (!Utility.isNullOrEmpty((String)object2)) {
                                object3 = (String)object + " Link: " + (String)object2;
                            }
                            Logger.log(loggingBehavior, GraphRequest.TAG, (String)object3);
                        }
                    }
                    if (callback == null) return;
                    callback.onCompleted(graphResponse);
                }
            };
            return;
        }
        this.callback = callback;
    }

    public final void setGraphObject(JSONObject jSONObject) {
        this.graphObject = jSONObject;
    }

    public final void setGraphPath(String string2) {
        this.graphPath = string2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void setHttpMethod(HttpMethod httpMethod) {
        if (this.overriddenURL != null && httpMethod != HttpMethod.GET) {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        if (httpMethod == null) {
            httpMethod = HttpMethod.GET;
        }
        this.httpMethod = httpMethod;
    }

    public final void setParameters(Bundle bundle) {
        this.parameters = bundle;
    }

    public final void setSkipClientToken(boolean bl) {
        this.skipClientToken = bl;
    }

    public final void setTag(Object object) {
        this.tag = object;
    }

    public final void setVersion(String string2) {
        this.version = string2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        Object object;
        StringBuilder stringBuilder = new StringBuilder().append("{Request: ").append(" accessToken: ");
        if (this.accessToken == null) {
            object = "null";
            do {
                return stringBuilder.append(object).append(", graphPath: ").append(this.graphPath).append(", graphObject: ").append((Object)this.graphObject).append(", httpMethod: ").append((Object)this.httpMethod).append(", parameters: ").append((Object)this.parameters).append("}").toString();
                break;
            } while (true);
        }
        object = this.accessToken;
        return stringBuilder.append(object).append(", graphPath: ").append(this.graphPath).append(", graphObject: ").append((Object)this.graphObject).append(", httpMethod: ").append((Object)this.httpMethod).append(", parameters: ").append((Object)this.parameters).append("}").toString();
    }

    private static class Attachment {
        private final GraphRequest request;
        private final Object value;

        public Attachment(GraphRequest graphRequest, Object object) {
            this.request = graphRequest;
            this.value = object;
        }

        public GraphRequest getRequest() {
            return this.request;
        }

        public Object getValue() {
            return this.value;
        }
    }

    public static interface Callback {
        public void onCompleted(GraphResponse var1);
    }

    public static interface GraphJSONArrayCallback {
        public void onCompleted(JSONArray var1, GraphResponse var2);
    }

    public static interface GraphJSONObjectCallback {
        public void onCompleted(JSONObject var1, GraphResponse var2);
    }

    private static interface KeyValueSerializer {
        public void writeString(String var1, String var2) throws IOException;
    }

    public static interface OnProgressCallback
    extends Callback {
        public void onProgress(long var1, long var3);
    }

    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable>
    implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>(){

            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel);
            }

            public ParcelableResourceWithMimeType[] newArray(int n2) {
                return new ParcelableResourceWithMimeType[n2];
            }
        };
        private final String mimeType;
        private final RESOURCE resource;

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.mimeType = parcel.readString();
            this.resource = parcel.readParcelable(FacebookSdk.getApplicationContext().getClassLoader());
        }

        public ParcelableResourceWithMimeType(RESOURCE RESOURCE, String string2) {
            this.mimeType = string2;
            this.resource = RESOURCE;
        }

        public int describeContents() {
            return 1;
        }

        public String getMimeType() {
            return this.mimeType;
        }

        public RESOURCE getResource() {
            return this.resource;
        }

        public void writeToParcel(Parcel parcel, int n2) {
            parcel.writeString(this.mimeType);
            parcel.writeParcelable(this.resource, n2);
        }

    }

    private static class Serializer
    implements KeyValueSerializer {
        private boolean firstWrite = true;
        private final Logger logger;
        private final OutputStream outputStream;
        private boolean useUrlEncode = false;

        public Serializer(OutputStream outputStream, Logger logger, boolean bl) {
            this.outputStream = outputStream;
            this.logger = logger;
            this.useUrlEncode = bl;
        }

        private RuntimeException getInvalidTypeError() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        public /* varargs */ void write(String string2, Object ... arrobject) throws IOException {
            if (!this.useUrlEncode) {
                if (this.firstWrite) {
                    this.outputStream.write("--".getBytes());
                    this.outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                    this.outputStream.write("\r\n".getBytes());
                    this.firstWrite = false;
                }
                this.outputStream.write(String.format(string2, arrobject).getBytes());
                return;
            }
            this.outputStream.write(URLEncoder.encode(String.format(Locale.US, string2, arrobject), "UTF-8").getBytes());
        }

        public void writeBitmap(String string2, Bitmap bitmap) throws IOException {
            this.writeContentDisposition(string2, string2, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.outputStream);
            this.writeLine("", new Object[0]);
            this.writeRecordBoundary();
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + string2, "<Image>");
            }
        }

        public void writeBytes(String string2, byte[] arrby) throws IOException {
            this.writeContentDisposition(string2, string2, "content/unknown");
            this.outputStream.write(arrby);
            this.writeLine("", new Object[0]);
            this.writeRecordBoundary();
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + string2, String.format(Locale.ROOT, "<Data: %d>", arrby.length));
            }
        }

        public void writeContentDisposition(String string2, String string3, String string4) throws IOException {
            if (!this.useUrlEncode) {
                this.write("Content-Disposition: form-data; name=\"%s\"", string2);
                if (string3 != null) {
                    this.write("; filename=\"%s\"", string3);
                }
                this.writeLine("", new Object[0]);
                if (string4 != null) {
                    this.writeLine("%s: %s", "Content-Type", string4);
                }
                this.writeLine("", new Object[0]);
                return;
            }
            this.outputStream.write(String.format("%s=", string2).getBytes());
        }

        public void writeContentUri(String string2, Uri uri, String string3) throws IOException {
            String string4 = string3;
            if (string3 == null) {
                string4 = "content/unknown";
            }
            this.writeContentDisposition(string2, string2, string4);
            int n2 = Utility.copyAndCloseInputStream(FacebookSdk.getApplicationContext().getContentResolver().openInputStream(uri), this.outputStream);
            this.writeLine("", new Object[0]);
            this.writeRecordBoundary();
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + string2, String.format(Locale.ROOT, "<Data: %d>", n2));
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        public void writeFile(String string2, ParcelFileDescriptor parcelFileDescriptor, String string3) throws IOException {
            String string4 = string3;
            if (string3 == null) {
                string4 = "content/unknown";
            }
            this.writeContentDisposition(string2, string2, string4);
            int n2 = 0;
            if (this.outputStream instanceof ProgressNoopOutputStream) {
                ((ProgressNoopOutputStream)this.outputStream).addProgress(parcelFileDescriptor.getStatSize());
            } else {
                n2 = 0 + Utility.copyAndCloseInputStream((InputStream)new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.outputStream);
            }
            this.writeLine("", new Object[0]);
            this.writeRecordBoundary();
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + string2, String.format(Locale.ROOT, "<Data: %d>", n2));
            }
        }

        public /* varargs */ void writeLine(String string2, Object ... arrobject) throws IOException {
            this.write(string2, arrobject);
            if (!this.useUrlEncode) {
                this.write("\r\n", new Object[0]);
            }
        }

        public void writeObject(String string2, Object object, GraphRequest object2) throws IOException {
            if (this.outputStream instanceof RequestOutputStream) {
                ((RequestOutputStream)((Object)this.outputStream)).setCurrentRequest((GraphRequest)object2);
            }
            if (GraphRequest.isSupportedParameterType(object)) {
                this.writeString(string2, GraphRequest.parameterToString(object));
                return;
            }
            if (object instanceof Bitmap) {
                this.writeBitmap(string2, (Bitmap)object);
                return;
            }
            if (object instanceof byte[]) {
                this.writeBytes(string2, (byte[])object);
                return;
            }
            if (object instanceof Uri) {
                this.writeContentUri(string2, (Uri)object, null);
                return;
            }
            if (object instanceof ParcelFileDescriptor) {
                this.writeFile(string2, (ParcelFileDescriptor)object, null);
                return;
            }
            if (object instanceof ParcelableResourceWithMimeType) {
                object2 = (ParcelableResourceWithMimeType)object;
                object = object2.getResource();
                object2 = object2.getMimeType();
                if (object instanceof ParcelFileDescriptor) {
                    this.writeFile(string2, (ParcelFileDescriptor)object, (String)object2);
                    return;
                }
                if (object instanceof Uri) {
                    this.writeContentUri(string2, (Uri)object, (String)object2);
                    return;
                }
                throw this.getInvalidTypeError();
            }
            throw this.getInvalidTypeError();
        }

        public void writeRecordBoundary() throws IOException {
            if (!this.useUrlEncode) {
                this.writeLine("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
                return;
            }
            this.outputStream.write("&".getBytes());
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public void writeRequestsAsJson(String string2, JSONArray jSONArray, Collection<GraphRequest> iterator) throws IOException, JSONException {
            if (!(this.outputStream instanceof RequestOutputStream)) {
                this.writeString(string2, jSONArray.toString());
                return;
            }
            RequestOutputStream requestOutputStream = (RequestOutputStream)((Object)this.outputStream);
            this.writeContentDisposition(string2, null, null);
            this.write("[", new Object[0]);
            int n2 = 0;
            iterator = iterator.iterator();
            do {
                if (!iterator.hasNext()) {
                    this.write("]", new Object[0]);
                    if (this.logger == null) return;
                    this.logger.appendKeyValue("    " + string2, jSONArray.toString());
                    return;
                }
                GraphRequest graphRequest = (GraphRequest)iterator.next();
                JSONObject jSONObject = jSONArray.getJSONObject(n2);
                requestOutputStream.setCurrentRequest(graphRequest);
                if (n2 > 0) {
                    this.write(",%s", jSONObject.toString());
                } else {
                    this.write("%s", jSONObject.toString());
                }
                ++n2;
            } while (true);
        }

        @Override
        public void writeString(String string2, String string3) throws IOException {
            this.writeContentDisposition(string2, null, null);
            this.writeLine("%s", string3);
            this.writeRecordBoundary();
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + string2, string3);
            }
        }
    }

}

