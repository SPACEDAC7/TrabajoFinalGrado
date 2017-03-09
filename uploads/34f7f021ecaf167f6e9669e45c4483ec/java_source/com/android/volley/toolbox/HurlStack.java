/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.Header
 *  org.apache.http.HttpResponse
 *  org.apache.http.ProtocolVersion
 *  org.apache.http.StatusLine
 *  org.apache.http.entity.BasicHttpEntity
 *  org.apache.http.message.BasicHeader
 *  org.apache.http.message.BasicHttpResponse
 *  org.apache.http.message.BasicStatusLine
 */
package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.toolbox.HttpStack;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class HurlStack
implements HttpStack {
    private static final String HEADER_CONTENT_TYPE = "Content-Type";
    private final SSLSocketFactory mSslSocketFactory;
    private final UrlRewriter mUrlRewriter;

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.mUrlRewriter = urlRewriter;
        this.mSslSocketFactory = sSLSocketFactory;
    }

    private static void addBodyIfExists(HttpURLConnection object, Request<?> request) throws IOException, AuthFailureError {
        byte[] arrby = request.getBody();
        if (arrby != null) {
            object.setDoOutput(true);
            object.addRequestProperty("Content-Type", request.getBodyContentType());
            object = new DataOutputStream(object.getOutputStream());
            object.write(arrby);
            object.close();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static HttpEntity entityFromConnection(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            inputStream = httpURLConnection.getInputStream();
        }
        catch (IOException var1_3) {
            inputStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(inputStream);
        basicHttpEntity.setContentLength((long)httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    private static boolean hasResponseBody(int n2, int n3) {
        if (n2 != 4 && (100 > n3 || n3 >= 200) && n3 != 204 && n3 != 304) {
            return true;
        }
        return false;
    }

    private HttpURLConnection openConnection(URL uRL, Request<?> request) throws IOException {
        HttpURLConnection httpURLConnection = this.createConnection(uRL);
        int n2 = request.getTimeoutMs();
        httpURLConnection.setConnectTimeout(n2);
        httpURLConnection.setReadTimeout(n2);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(uRL.getProtocol()) && this.mSslSocketFactory != null) {
            ((HttpsURLConnection)httpURLConnection).setSSLSocketFactory(this.mSslSocketFactory);
        }
        return httpURLConnection;
    }

    static void setConnectionParametersForRequest(HttpURLConnection object, Request<?> request) throws IOException, AuthFailureError {
        switch (request.getMethod()) {
            default: {
                throw new IllegalStateException("Unknown method type.");
            }
            case -1: {
                byte[] arrby = request.getPostBody();
                if (arrby != null) {
                    object.setDoOutput(true);
                    object.setRequestMethod("POST");
                    object.addRequestProperty("Content-Type", request.getPostBodyContentType());
                    object = new DataOutputStream(object.getOutputStream());
                    object.write(arrby);
                    object.close();
                }
                return;
            }
            case 0: {
                object.setRequestMethod("GET");
                return;
            }
            case 3: {
                object.setRequestMethod("DELETE");
                return;
            }
            case 1: {
                object.setRequestMethod("POST");
                HurlStack.addBodyIfExists((HttpURLConnection)object, request);
                return;
            }
            case 2: {
                object.setRequestMethod("PUT");
                HurlStack.addBodyIfExists((HttpURLConnection)object, request);
                return;
            }
            case 4: {
                object.setRequestMethod("HEAD");
                return;
            }
            case 5: {
                object.setRequestMethod("OPTIONS");
                return;
            }
            case 6: {
                object.setRequestMethod("TRACE");
                return;
            }
            case 7: 
        }
        object.setRequestMethod("PATCH");
        HurlStack.addBodyIfExists((HttpURLConnection)object, request);
    }

    protected HttpURLConnection createConnection(URL object) throws IOException {
        object = (HttpURLConnection)object.openConnection();
        object.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public HttpResponse performRequest(Request<?> object, Map<String, String> entry2) throws IOException, AuthFailureError {
        Object object2 = object.getUrl();
        BasicStatusLine basicStatusLine = new BasicStatusLine();
        basicStatusLine.putAll(object.getHeaders());
        basicStatusLine.putAll(entry2);
        entry2 = object2;
        if (this.mUrlRewriter != null && (entry2 = this.mUrlRewriter.rewriteUrl((String)object2)) == null) {
            object = String.valueOf(object2);
            if (object.length() != 0) {
                object = "URL blocked by rewriter: ".concat((String)object);
                do {
                    throw new IOException((String)object);
                    break;
                } while (true);
            }
            object = new String("URL blocked by rewriter: ");
            throw new IOException((String)object);
        }
        entry2 = this.openConnection(new URL((String)((Object)entry2)), object);
        for (String string2 : basicStatusLine.keySet()) {
            entry2.addRequestProperty(string2, (String)basicStatusLine.get(string2));
        }
        HurlStack.setConnectionParametersForRequest((HttpURLConnection)((Object)entry2), object);
        object2 = new ProtocolVersion("HTTP", 1, 1);
        if (entry2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        basicStatusLine = new BasicStatusLine((ProtocolVersion)object2, entry2.getResponseCode(), entry2.getResponseMessage());
        object2 = new BasicHttpResponse((StatusLine)basicStatusLine);
        if (HurlStack.hasResponseBody(object.getMethod(), basicStatusLine.getStatusCode())) {
            object2.setEntity(HurlStack.entityFromConnection((HttpURLConnection)((Object)entry2)));
        }
        for (Map.Entry<String, List<String>> entry2 : entry2.getHeaderFields().entrySet()) {
            if (entry2.getKey() == null) continue;
            object2.addHeader((Header)new BasicHeader(entry2.getKey(), entry2.getValue().get(0)));
        }
        return object2;
    }

    public static interface UrlRewriter {
        public String rewriteUrl(String var1);
    }

}

