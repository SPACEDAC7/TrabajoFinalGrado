/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.measurement;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Label {
    public Boolean aggregate;
    public String name;
    public String value;

    public Label(String string2, String string3, Boolean bl) {
        this.name = string2;
        this.value = string3;
        this.aggregate = bl;
    }

    private String a(String string2) {
        StringBuilder stringBuilder = new StringBuilder();
        int n2 = string2.length();
        for (int i2 = 0; i2 < n2; ++i2) {
            char c2 = Character.toLowerCase(string2.charAt(i2));
            if (!(c2 >= 'a' && c2 <= 'z' || c2 >= '0' && c2 <= '9' || c2 == '_' || c2 == '-') && c2 != '.') continue;
            stringBuilder.append(c2);
        }
        return stringBuilder.toString();
    }

    public String pack() {
        String string2;
        CharSequence charSequence = new StringBuilder();
        if (this.name != null && this.value != null && (string2 = this.a(this.name)).length() > 0) {
            try {
                charSequence.append("&").append(string2).append("=").append(URLEncoder.encode(this.value, "UTF-8").replace("+", "%20"));
                charSequence = charSequence.toString();
                return charSequence;
            }
            catch (UnsupportedEncodingException var1_2) {
                // empty catch block
            }
        }
        return "";
    }
}

