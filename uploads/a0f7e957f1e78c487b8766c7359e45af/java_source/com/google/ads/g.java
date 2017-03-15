/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

public final class g {
    public static <T> T a(String string2, Class<T> class_) throws ClassNotFoundException, ClassCastException, IllegalAccessException, InstantiationException, LinkageError, ExceptionInInitializerError {
        return class_.cast(Class.forName(string2).newInstance());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String a(String string2, String string3, Boolean bl, String string4, String string5, String string6, String string7, String string8, String string9, String string10, String string11) {
        string2 = string3 = string2.replaceAll("@gw_adlocid@", string3).replaceAll("@gw_qdata@", string7).replaceAll("@gw_sdkver@", "afma-sdk-a-v6.2.1").replaceAll("@gw_sessid@", string8).replaceAll("@gw_seqnum@", string9).replaceAll("@gw_devid@", string4);
        if (string6 != null) {
            string2 = string3.replaceAll("@gw_adnetid@", string6);
        }
        string3 = string2;
        if (string5 != null) {
            string3 = string2.replaceAll("@gw_allocid@", string5);
        }
        string2 = string3;
        if (string10 != null) {
            string2 = string3.replaceAll("@gw_adt@", string10);
        }
        string3 = string2;
        if (string11 != null) {
            string3 = string2.replaceAll("@gw_aec@", string11);
        }
        if (bl == null) return string3;
        if (bl.booleanValue()) {
            string2 = "1";
            do {
                return string3.replaceAll("@gw_adnetrefresh@", string2);
                break;
            } while (true);
        }
        string2 = "0";
        return string3.replaceAll("@gw_adnetrefresh@", string2);
    }

    public static enum a {
        a,
        b,
        c,
        d,
        e,
        f;
        

        private a() {
        }
    }

}

