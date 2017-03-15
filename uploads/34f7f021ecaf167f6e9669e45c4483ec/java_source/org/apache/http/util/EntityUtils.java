/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.Header
 *  org.apache.http.HeaderElement
 *  org.apache.http.HttpResponse
 *  org.apache.http.NameValuePair
 *  org.apache.http.ParseException
 *  org.apache.http.entity.ContentType
 *  org.apache.http.protocol.HTTP
 *  org.apache.http.util.Args
 *  org.apache.http.util.ByteArrayBuffer
 *  org.apache.http.util.CharArrayBuffer
 */
package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.entity.ContentType;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

public final class EntityUtils {
    private EntityUtils() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void consume(HttpEntity object) throws IOException {
        if (object == null || !object.isStreaming() || (object = object.getContent()) == null) {
            return;
        }
        object.close();
    }

    public static void consumeQuietly(HttpEntity httpEntity) {
        try {
            EntityUtils.consume(httpEntity);
            return;
        }
        catch (IOException var0_1) {
            return;
        }
    }

    @Deprecated
    public static String getContentCharSet(HttpEntity nameValuePair) throws ParseException {
        String string2;
        Args.notNull((Object)nameValuePair, (String)"Entity");
        String string3 = string2 = null;
        if (nameValuePair.getContentType() != null) {
            nameValuePair = nameValuePair.getContentType().getElements();
            string3 = string2;
            if (nameValuePair.length > 0) {
                nameValuePair = nameValuePair[0].getParameterByName("charset");
                string3 = string2;
                if (nameValuePair != null) {
                    string3 = nameValuePair.getValue();
                }
            }
        }
        return string3;
    }

    @Deprecated
    public static String getContentMimeType(HttpEntity arrheaderElement) throws ParseException {
        String string2;
        Args.notNull((Object)arrheaderElement, (String)"Entity");
        String string3 = string2 = null;
        if (arrheaderElement.getContentType() != null) {
            arrheaderElement = arrheaderElement.getContentType().getElements();
            string3 = string2;
            if (arrheaderElement.length > 0) {
                string3 = arrheaderElement[0].getName();
            }
        }
        return string3;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static byte[] toByteArray(HttpEntity arrby) throws IOException {
        int n2;
        boolean bl = false;
        Args.notNull((Object)arrby, (String)"Entity");
        InputStream inputStream = arrby.getContent();
        if (inputStream == null) {
            return null;
        }
        if (arrby.getContentLength() <= Integer.MAX_VALUE) {
            bl = true;
        }
        Args.check((boolean)bl, (String)"HTTP entity too large to be buffered in memory");
        int n3 = n2 = (int)arrby.getContentLength();
        if (n2 < 0) {
            n3 = 4096;
        }
        arrby = new ByteArrayBuffer(n3);
        byte[] arrby2 = new byte[4096];
        while ((n3 = inputStream.read(arrby2)) != -1) {
            arrby.append(arrby2, 0, n3);
        }
        return arrby.toByteArray();
    }

    public static String toString(HttpEntity httpEntity) throws IOException, ParseException {
        return EntityUtils.toString(httpEntity, (Charset)null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String toString(HttpEntity httpEntity, String object) throws IOException, ParseException {
        if (object != null) {
            object = Charset.forName((String)object);
            do {
                return EntityUtils.toString(httpEntity, (Charset)object);
                break;
            } while (true);
        }
        object = null;
        return EntityUtils.toString(httpEntity, (Charset)object);
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String toString(HttpEntity object, Charset charset) throws IOException, ParseException {
        int n2;
        InputStream inputStream;
        char[] arrc;
        block14 : {
            int n3;
            boolean bl = false;
            Args.notNull((Object)object, (String)"Entity");
            inputStream = object.getContent();
            if (inputStream == null) {
                return null;
            }
            if (object.getContentLength() <= Integer.MAX_VALUE) {
                bl = true;
            }
            Args.check((boolean)bl, (String)"HTTP entity too large to be buffered in memory");
            long l2 = object.getContentLength();
            n2 = n3 = (int)l2;
            if (n3 < 0) {
                n2 = 4096;
            }
            arrc = null;
            ContentType contentType = ContentType.get((HttpEntity)object);
            object = arrc;
            if (contentType != null) {
                object = contentType.getCharset();
            }
            break block14;
            catch (UnsupportedCharsetException unsupportedCharsetException) {
                object = arrc;
                if (charset != null) break block14;
                throw new UnsupportedEncodingException(unsupportedCharsetException.getMessage());
            }
        }
        arrc = object;
        if (object == null) {
            arrc = charset;
        }
        object = arrc;
        if (arrc == null) {
            object = HTTP.DEF_CONTENT_CHARSET;
        }
        object = new InputStreamReader(inputStream, (Charset)object);
        charset = new CharArrayBuffer(n2);
        arrc = new char[1024];
        while ((n2 = object.read(arrc)) != -1) {
            charset.append(arrc, 0, n2);
        }
        return charset.toString();
        finally {
            inputStream.close();
        }
    }

    public static void updateEntity(HttpResponse httpResponse, HttpEntity httpEntity) throws IOException {
        Args.notNull((Object)httpResponse, (String)"Response");
        EntityUtils.consume(httpResponse.getEntity());
        httpResponse.setEntity(httpEntity);
    }
}

