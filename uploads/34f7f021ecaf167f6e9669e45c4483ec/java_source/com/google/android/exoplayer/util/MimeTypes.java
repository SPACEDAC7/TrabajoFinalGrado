/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.util;

public final class MimeTypes {
    public static final String APPLICATION_EIA608 = "application/eia-608";
    public static final String APPLICATION_ID3 = "application/id3";
    public static final String APPLICATION_M3U8 = "application/x-mpegURL";
    public static final String APPLICATION_MP4 = "application/mp4";
    public static final String APPLICATION_MP4VTT = "application/x-mp4vtt";
    public static final String APPLICATION_PGS = "application/pgs";
    public static final String APPLICATION_SUBRIP = "application/x-subrip";
    public static final String APPLICATION_TTML = "application/ttml+xml";
    public static final String APPLICATION_TX3G = "application/x-quicktime-tx3g";
    public static final String APPLICATION_VOBSUB = "application/vobsub";
    public static final String APPLICATION_WEBM = "application/webm";
    public static final String AUDIO_AAC = "audio/mp4a-latm";
    public static final String AUDIO_AC3 = "audio/ac3";
    public static final String AUDIO_AMR_NB = "audio/3gpp";
    public static final String AUDIO_AMR_WB = "audio/amr-wb";
    public static final String AUDIO_DTS = "audio/vnd.dts";
    public static final String AUDIO_DTS_EXPRESS = "audio/vnd.dts.hd;profile=lbr";
    public static final String AUDIO_DTS_HD = "audio/vnd.dts.hd";
    public static final String AUDIO_E_AC3 = "audio/eac3";
    public static final String AUDIO_FLAC = "audio/x-flac";
    public static final String AUDIO_MP4 = "audio/mp4";
    public static final String AUDIO_MPEG = "audio/mpeg";
    public static final String AUDIO_MPEG_L1 = "audio/mpeg-L1";
    public static final String AUDIO_MPEG_L2 = "audio/mpeg-L2";
    public static final String AUDIO_OPUS = "audio/opus";
    public static final String AUDIO_RAW = "audio/raw";
    public static final String AUDIO_TRUEHD = "audio/true-hd";
    public static final String AUDIO_UNKNOWN = "audio/x-unknown";
    public static final String AUDIO_VORBIS = "audio/vorbis";
    public static final String AUDIO_WEBM = "audio/webm";
    public static final String BASE_TYPE_APPLICATION = "application";
    public static final String BASE_TYPE_AUDIO = "audio";
    public static final String BASE_TYPE_TEXT = "text";
    public static final String BASE_TYPE_VIDEO = "video";
    public static final String TEXT_UNKNOWN = "text/x-unknown";
    public static final String TEXT_VTT = "text/vtt";
    public static final String VIDEO_H263 = "video/3gpp";
    public static final String VIDEO_H264 = "video/avc";
    public static final String VIDEO_H265 = "video/hevc";
    public static final String VIDEO_MP4 = "video/mp4";
    public static final String VIDEO_MP4V = "video/mp4v-es";
    public static final String VIDEO_MPEG2 = "video/mpeg2";
    public static final String VIDEO_UNKNOWN = "video/x-unknown";
    public static final String VIDEO_VC1 = "video/wvc1";
    public static final String VIDEO_VP8 = "video/x-vnd.on2.vp8";
    public static final String VIDEO_VP9 = "video/x-vnd.on2.vp9";
    public static final String VIDEO_WEBM = "video/webm";

    private MimeTypes() {
    }

    public static String getAudioMediaMimeType(String arrstring) {
        if (arrstring == null) {
            return "audio/x-unknown";
        }
        arrstring = arrstring.split(",");
        int n2 = arrstring.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            String string2 = arrstring[i2].trim();
            if (string2.startsWith("mp4a")) {
                return "audio/mp4a-latm";
            }
            if (string2.startsWith("ac-3") || string2.startsWith("dac3")) {
                return "audio/ac3";
            }
            if (string2.startsWith("ec-3") || string2.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (string2.startsWith("dtsc")) {
                return "audio/vnd.dts";
            }
            if (string2.startsWith("dtsh") || string2.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (string2.startsWith("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (string2.startsWith("opus")) {
                return "audio/opus";
            }
            if (!string2.startsWith("vorbis")) continue;
            return "audio/vorbis";
        }
        return "audio/x-unknown";
    }

    private static String getTopLevelType(String string2) {
        int n2 = string2.indexOf(47);
        if (n2 == -1) {
            throw new IllegalArgumentException("Invalid mime type: " + string2);
        }
        return string2.substring(0, n2);
    }

    public static String getVideoMediaMimeType(String arrstring) {
        if (arrstring == null) {
            return "video/x-unknown";
        }
        arrstring = arrstring.split(",");
        int n2 = arrstring.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            String string2 = arrstring[i2].trim();
            if (string2.startsWith("avc1") || string2.startsWith("avc3")) {
                return "video/avc";
            }
            if (string2.startsWith("hev1") || string2.startsWith("hvc1")) {
                return "video/hevc";
            }
            if (string2.startsWith("vp9")) {
                return "video/x-vnd.on2.vp9";
            }
            if (!string2.startsWith("vp8")) continue;
            return "video/x-vnd.on2.vp8";
        }
        return "video/x-unknown";
    }

    public static boolean isApplication(String string2) {
        return MimeTypes.getTopLevelType(string2).equals("application");
    }

    public static boolean isAudio(String string2) {
        return MimeTypes.getTopLevelType(string2).equals("audio");
    }

    public static boolean isText(String string2) {
        return MimeTypes.getTopLevelType(string2).equals("text");
    }

    public static boolean isVideo(String string2) {
        return MimeTypes.getTopLevelType(string2).equals("video");
    }
}

