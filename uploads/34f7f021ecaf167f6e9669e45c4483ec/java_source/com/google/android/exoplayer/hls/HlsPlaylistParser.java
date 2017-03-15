/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.ParserException
 *  com.google.android.exoplayer.hls.HlsMediaPlaylist
 *  com.google.android.exoplayer.hls.HlsMediaPlaylist$Segment
 *  com.google.android.exoplayer.hls.HlsParserUtil
 *  com.google.android.exoplayer.hls.HlsPlaylistParser$LineIterator
 */
package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import com.google.android.exoplayer.hls.HlsParserUtil;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylistParser;
import com.google.android.exoplayer.hls.Variant;
import com.google.android.exoplayer.upstream.UriLoadable;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.regex.Pattern;

public final class HlsPlaylistParser
implements UriLoadable.Parser<HlsPlaylist> {
    private static final String AUDIO_TYPE = "AUDIO";
    private static final String BANDWIDTH_ATTR = "BANDWIDTH";
    private static final Pattern BANDWIDTH_ATTR_REGEX = Pattern.compile("BANDWIDTH=(\\d+)\\b");
    private static final Pattern BYTERANGE_REGEX;
    private static final String BYTERANGE_TAG = "#EXT-X-BYTERANGE";
    private static final String CLOSED_CAPTIONS_TYPE = "CLOSED-CAPTIONS";
    private static final String CODECS_ATTR = "CODECS";
    private static final Pattern CODECS_ATTR_REGEX;
    private static final String DISCONTINUITY_SEQUENCE_TAG = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String DISCONTINUITY_TAG = "#EXT-X-DISCONTINUITY";
    private static final String ENDLIST_TAG = "#EXT-X-ENDLIST";
    private static final String INSTREAM_ID_ATTR = "INSTREAM-ID";
    private static final Pattern INSTREAM_ID_ATTR_REGEX;
    private static final String IV_ATTR = "IV";
    private static final Pattern IV_ATTR_REGEX;
    private static final String KEY_TAG = "#EXT-X-KEY";
    private static final String LANGUAGE_ATTR = "LANGUAGE";
    private static final Pattern LANGUAGE_ATTR_REGEX;
    private static final Pattern MEDIA_DURATION_REGEX;
    private static final String MEDIA_DURATION_TAG = "#EXTINF";
    private static final Pattern MEDIA_SEQUENCE_REGEX;
    private static final String MEDIA_SEQUENCE_TAG = "#EXT-X-MEDIA-SEQUENCE";
    private static final String MEDIA_TAG = "#EXT-X-MEDIA";
    private static final String METHOD_AES128 = "AES-128";
    private static final String METHOD_ATTR = "METHOD";
    private static final Pattern METHOD_ATTR_REGEX;
    private static final String METHOD_NONE = "NONE";
    private static final String NAME_ATTR = "NAME";
    private static final Pattern NAME_ATTR_REGEX;
    private static final String RESOLUTION_ATTR = "RESOLUTION";
    private static final Pattern RESOLUTION_ATTR_REGEX;
    private static final String STREAM_INF_TAG = "#EXT-X-STREAM-INF";
    private static final String SUBTITLES_TYPE = "SUBTITLES";
    private static final Pattern TARGET_DURATION_REGEX;
    private static final String TARGET_DURATION_TAG = "#EXT-X-TARGETDURATION";
    private static final String TYPE_ATTR = "TYPE";
    private static final Pattern TYPE_ATTR_REGEX;
    private static final String URI_ATTR = "URI";
    private static final Pattern URI_ATTR_REGEX;
    private static final Pattern VERSION_REGEX;
    private static final String VERSION_TAG = "#EXT-X-VERSION";
    private static final String VIDEO_TYPE = "VIDEO";

    static {
        CODECS_ATTR_REGEX = Pattern.compile("CODECS=\"(.+?)\"");
        RESOLUTION_ATTR_REGEX = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
        MEDIA_DURATION_REGEX = Pattern.compile("#EXTINF:([\\d.]+)\\b");
        MEDIA_SEQUENCE_REGEX = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
        TARGET_DURATION_REGEX = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
        VERSION_REGEX = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
        BYTERANGE_REGEX = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
        METHOD_ATTR_REGEX = Pattern.compile("METHOD=(NONE|AES-128)");
        URI_ATTR_REGEX = Pattern.compile("URI=\"(.+?)\"");
        IV_ATTR_REGEX = Pattern.compile("IV=([^,.*]+)");
        TYPE_ATTR_REGEX = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
        LANGUAGE_ATTR_REGEX = Pattern.compile("LANGUAGE=\"(.+?)\"");
        NAME_ATTR_REGEX = Pattern.compile("NAME=\"(.+?)\"");
        INSTREAM_ID_ATTR_REGEX = Pattern.compile("INSTREAM-ID=\"(.+?)\"");
    }

    /*
     * Enabled aggressive block sorting
     */
    private static HlsMasterPlaylist parseMasterPlaylist(LineIterator lineIterator, String string2) throws IOException {
        ArrayList<Variant> arrayList = new ArrayList<Variant>();
        ArrayList<Variant> arrayList2 = new ArrayList<Variant>();
        ArrayList<Variant> arrayList3 = new ArrayList<Variant>();
        int n2 = 0;
        String string3 = null;
        int n3 = -1;
        int n4 = -1;
        String[] arrstring = null;
        String string4 = null;
        int n5 = 0;
        String string5 = null;
        while (lineIterator.hasNext()) {
            Object object;
            String string6 = lineIterator.next();
            if (string6.startsWith("#EXT-X-MEDIA")) {
                object = HlsParserUtil.parseStringAttr((String)string6, (Pattern)TYPE_ATTR_REGEX, (String)"TYPE");
                if ("CLOSED-CAPTIONS".equals(object)) {
                    if (!"CC1".equals(HlsParserUtil.parseStringAttr((String)string6, (Pattern)INSTREAM_ID_ATTR_REGEX, (String)"INSTREAM-ID"))) continue;
                    string4 = HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)LANGUAGE_ATTR_REGEX);
                    continue;
                }
                if ("SUBTITLES".equals(object)) {
                    object = HlsParserUtil.parseStringAttr((String)string6, (Pattern)NAME_ATTR_REGEX, (String)"NAME");
                    arrayList3.add(new Variant(HlsParserUtil.parseStringAttr((String)string6, (Pattern)URI_ATTR_REGEX, (String)"URI"), new Format((String)object, "application/x-mpegURL", -1, -1, -1.0f, -1, -1, -1, HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)LANGUAGE_ATTR_REGEX), string3)));
                    continue;
                }
                if (!"AUDIO".equals(object)) continue;
                object = HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)LANGUAGE_ATTR_REGEX);
                String string7 = HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)URI_ATTR_REGEX);
                if (string7 != null) {
                    arrayList2.add(new Variant(string7, new Format(HlsParserUtil.parseStringAttr((String)string6, (Pattern)NAME_ATTR_REGEX, (String)"NAME"), "application/x-mpegURL", -1, -1, -1.0f, -1, -1, -1, (String)object, string3)));
                    continue;
                }
                arrstring = object;
                continue;
            }
            if (string6.startsWith("#EXT-X-STREAM-INF")) {
                int n6;
                n5 = HlsParserUtil.parseIntAttr((String)string6, (Pattern)BANDWIDTH_ATTR_REGEX, (String)"BANDWIDTH");
                string3 = HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)CODECS_ATTR_REGEX);
                string5 = HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)NAME_ATTR_REGEX);
                object = HlsParserUtil.parseOptionalStringAttr((String)string6, (Pattern)RESOLUTION_ATTR_REGEX);
                if (object != null) {
                    object = object.split("x");
                    n2 = n4 = Integer.parseInt(object[0]);
                    if (n4 <= 0) {
                        n2 = -1;
                    }
                    n4 = n6 = Integer.parseInt(object[1]);
                    n3 = n2;
                    if (n6 <= 0) {
                        n4 = -1;
                        n3 = n2;
                    }
                } else {
                    n3 = -1;
                    n4 = -1;
                }
                n6 = 1;
                n2 = n5;
                n5 = n6;
                continue;
            }
            if (string6.startsWith("#") || n5 == 0) continue;
            if (string5 == null) {
                string5 = Integer.toString(arrayList.size());
            }
            arrayList.add(new Variant(string6, new Format(string5, "application/x-mpegURL", n3, n4, -1.0f, -1, -1, n2, null, string3)));
            n2 = 0;
            string3 = null;
            n3 = -1;
            n4 = -1;
            n5 = 0;
            string5 = null;
        }
        return new HlsMasterPlaylist(string2, arrayList, arrayList2, arrayList3, (String)arrstring, string4);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static HlsMediaPlaylist parseMediaPlaylist(LineIterator lineIterator, String string2) throws IOException {
        int n2 = 0;
        int n3 = 0;
        int n4 = 1;
        boolean bl = true;
        ArrayList<HlsMediaPlaylist.Segment> arrayList = new ArrayList<HlsMediaPlaylist.Segment>();
        double d2 = 0.0;
        int n5 = 0;
        long l2 = 0;
        long l3 = 0;
        long l4 = -1;
        int n6 = 0;
        boolean bl2 = false;
        String string3 = null;
        String string4 = null;
        while (lineIterator.hasNext()) {
            long l5;
            Object object;
            String string5 = lineIterator.next();
            if (string5.startsWith("#EXT-X-TARGETDURATION")) {
                n3 = HlsParserUtil.parseIntAttr((String)string5, (Pattern)TARGET_DURATION_REGEX, (String)"#EXT-X-TARGETDURATION");
                continue;
            }
            if (string5.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                n6 = n2 = HlsParserUtil.parseIntAttr((String)string5, (Pattern)MEDIA_SEQUENCE_REGEX, (String)"#EXT-X-MEDIA-SEQUENCE");
                continue;
            }
            if (string5.startsWith("#EXT-X-VERSION")) {
                n4 = HlsParserUtil.parseIntAttr((String)string5, (Pattern)VERSION_REGEX, (String)"#EXT-X-VERSION");
                continue;
            }
            if (string5.startsWith("#EXTINF")) {
                d2 = HlsParserUtil.parseDoubleAttr((String)string5, (Pattern)MEDIA_DURATION_REGEX, (String)"#EXTINF");
                continue;
            }
            if (string5.startsWith("#EXT-X-KEY")) {
                bl2 = "AES-128".equals(HlsParserUtil.parseStringAttr((String)string5, (Pattern)METHOD_ATTR_REGEX, (String)"METHOD"));
                if (bl2) {
                    string3 = HlsParserUtil.parseStringAttr((String)string5, (Pattern)URI_ATTR_REGEX, (String)"URI");
                    string4 = HlsParserUtil.parseOptionalStringAttr((String)string5, (Pattern)IV_ATTR_REGEX);
                    continue;
                }
                string3 = null;
                string4 = null;
                continue;
            }
            if (string5.startsWith("#EXT-X-BYTERANGE")) {
                object = HlsParserUtil.parseStringAttr((String)string5, (Pattern)BYTERANGE_REGEX, (String)"#EXT-X-BYTERANGE").split("@");
                l4 = l5 = Long.parseLong(object[0]);
                if (object.length <= 1) continue;
                l3 = Long.parseLong((String)object[1]);
                l4 = l5;
                continue;
            }
            if (string5.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                n5 = Integer.parseInt(string5.substring(string5.indexOf(58) + 1));
                continue;
            }
            if (string5.equals("#EXT-X-DISCONTINUITY")) {
                ++n5;
                continue;
            }
            if (!string5.startsWith("#")) {
                object = !bl2 ? null : (string4 != null ? string4 : Integer.toHexString(n6));
                ++n6;
                l5 = l3;
                if (l4 == -1) {
                    l5 = 0;
                }
                arrayList.add(new HlsMediaPlaylist.Segment(string5, d2, n5, l2, bl2, string3, (String)object, l5, l4));
                l2 += (long)(1000000.0 * d2);
                d2 = 0.0;
                l3 = l5;
                if (l4 != -1) {
                    l3 = l5 + l4;
                }
                l4 = -1;
                continue;
            }
            if (!string5.equals("#EXT-X-ENDLIST")) continue;
            bl = false;
        }
        return new HlsMediaPlaylist(string2, n2, n3, n4, bl, Collections.unmodifiableList(arrayList));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public HlsPlaylist parse(String object, InputStream closeable) throws IOException, ParserException {
        closeable = new BufferedReader(new InputStreamReader((InputStream)closeable));
        LinkedList<String> linkedList = new LinkedList<String>();
        try {
            String string2;
            while ((string2 = closeable.readLine()) != null) {
                if ((string2 = string2.trim()).isEmpty()) continue;
                if (string2.startsWith("#EXT-X-STREAM-INF")) {
                    linkedList.add(string2);
                    object = HlsPlaylistParser.parseMasterPlaylist(new LineIterator(linkedList, (BufferedReader)closeable), (String)object);
                    return object;
                }
                if (string2.startsWith("#EXT-X-TARGETDURATION") || string2.startsWith("#EXT-X-MEDIA-SEQUENCE") || string2.startsWith("#EXTINF") || string2.startsWith("#EXT-X-KEY") || string2.startsWith("#EXT-X-BYTERANGE") || string2.equals("#EXT-X-DISCONTINUITY") || string2.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || string2.equals("#EXT-X-ENDLIST")) {
                    linkedList.add(string2);
                    object = HlsPlaylistParser.parseMediaPlaylist(new LineIterator(linkedList, (BufferedReader)closeable), (String)object);
                    return object;
                }
                linkedList.add(string2);
            }
            throw new ParserException("Failed to parse the playlist, could not identify any tags.");
        }
        finally {
            closeable.close();
        }
    }
}

