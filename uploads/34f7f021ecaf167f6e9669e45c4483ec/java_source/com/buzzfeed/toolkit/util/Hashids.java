/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Hashids {
    private static final String DEFAULT_ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    private String alphabet = "";
    private String guards;
    private int minHashLength = 0;
    private String salt = "";
    private String seps = "cfhistuCFHISTU";

    public Hashids() {
        this("");
    }

    public Hashids(String string2) {
        this(string2, 0);
    }

    public Hashids(String string2, int n2) {
        this(string2, n2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890");
    }

    /*
     * Enabled aggressive block sorting
     */
    public Hashids(String string2, int n2, String string3) {
        int n3;
        this.salt = string2;
        this.minHashLength = n2 < 0 ? 0 : n2;
        this.alphabet = string3;
        string2 = "";
        for (n2 = 0; n2 < this.alphabet.length(); ++n2) {
            string3 = string2;
            if (!string2.contains("" + this.alphabet.charAt(n2))) {
                string3 = string2 + "" + this.alphabet.charAt(n2);
            }
            string2 = string3;
        }
        this.alphabet = string2;
        if (this.alphabet.length() < 16) {
            throw new IllegalArgumentException("alphabet must contain at least " + 16 + " unique characters");
        }
        if (this.alphabet.contains(" ")) {
            throw new IllegalArgumentException("alphabet cannot contains spaces");
        }
        for (n2 = 0; n2 < this.seps.length(); ++n2) {
            n3 = this.alphabet.indexOf(this.seps.charAt(n2));
            if (n3 == -1) {
                this.seps = this.seps.substring(0, n2) + " " + this.seps.substring(n2 + 1);
                continue;
            }
            this.alphabet = this.alphabet.substring(0, n3) + " " + this.alphabet.substring(n3 + 1);
        }
        this.alphabet = this.alphabet.replaceAll("\\s+", "");
        this.seps = this.seps.replaceAll("\\s+", "");
        this.seps = this.consistentShuffle(this.seps, this.salt);
        if (this.seps.equals("") || (double)(this.alphabet.length() / this.seps.length()) > 3.5) {
            n2 = n3 = (int)Math.ceil((double)this.alphabet.length() / 3.5);
            if (n3 == 1) {
                n2 = n3 + 1;
            }
            if (n2 > this.seps.length()) {
                this.seps = this.seps + this.alphabet.substring(0, n2 -= this.seps.length());
                this.alphabet = this.alphabet.substring(n2);
            } else {
                this.seps = this.seps.substring(0, n2);
            }
        }
        this.alphabet = this.consistentShuffle(this.alphabet, this.salt);
        n2 = (int)Math.ceil((double)this.alphabet.length() / (double)12);
        if (this.alphabet.length() < 3) {
            this.guards = this.seps.substring(0, n2);
            this.seps = this.seps.substring(n2);
            return;
        }
        this.guards = this.alphabet.substring(0, n2);
        this.alphabet = this.alphabet.substring(n2);
    }

    private long[] _decode(String string2, String object) {
        ArrayList<Long> arrayList = new ArrayList<Long>();
        int n2 = 0;
        String[] arrstring = string2.replaceAll("[" + this.guards + "]", " ").split(" ");
        if (arrstring.length == 3 || arrstring.length == 2) {
            n2 = 1;
        }
        arrstring = arrstring[n2];
        char c2 = arrstring.toCharArray()[0];
        for (String string3 : arrstring.substring(1).replaceAll("[" + this.seps + "]", " ").split(" ")) {
            object = this.consistentShuffle((String)object, ("" + c2 + this.salt + (String)object).substring(0, object.length()));
            arrayList.add(this.unhash(string3, (String)object));
        }
        arrstring = new long[arrayList.size()];
        for (n2 = 0; n2 < arrstring.length; ++n2) {
            arrstring[n2] = (String)((Object)((Long)arrayList.get(n2)));
        }
        object = arrstring;
        if (!this._encode((long[])arrstring).equals(string2)) {
            object = new long[]{};
        }
        return object;
    }

    private /* varargs */ String _encode(long ... object) {
        int n2;
        int n3;
        String string2;
        int n4 = 0;
        for (n2 = 0; n2 < object.length; ++n2) {
            n4 = (int)((long)n4 + object[n2] % (long)(n2 + 100));
        }
        String string3 = this.alphabet;
        char c2 = string3.toCharArray()[n4 % string3.length()];
        String string4 = "" + c2 + "";
        for (n2 = 0; n2 < object.length; ++n2) {
            long l2 = object[n2];
            string3 = this.consistentShuffle(string3, ("" + c2 + this.salt + string3).substring(0, string3.length()));
            String string5 = this.hash(l2, string3);
            string4 = string2 = string4 + string5;
            if (n2 + 1 >= object.length) continue;
            n3 = (int)(l2 % (long)(string5.toCharArray()[0] + n2) % (long)this.seps.length());
            string4 = string2 + this.seps.toCharArray()[n3];
        }
        object = string4;
        if (string4.length() < this.minHashLength) {
            n2 = string4.toCharArray()[0];
            n3 = this.guards.length();
            c2 = this.guards.toCharArray()[(n2 + n4) % n3];
            object = string4 = "" + c2 + string4;
            if (string4.length() < this.minHashLength) {
                n2 = string4.toCharArray()[2];
                n3 = this.guards.length();
                c2 = this.guards.toCharArray()[(n2 + n4) % n3];
                object = string4 + c2;
            }
        }
        n4 = string3.length() / 2;
        while (object.length() < this.minHashLength) {
            string4 = this.consistentShuffle(string3, string3);
            string2 = string4.substring(n4) + (String)object + string4.substring(0, n4);
            n2 = string2.length() - this.minHashLength;
            string3 = string4;
            object = string2;
            if (n2 <= 0) continue;
            object = string2.substring(n2, this.minHashLength + (n2 /= 2));
            string3 = string4;
        }
        return object;
    }

    public static int checkedCast(long l2) {
        int n2 = (int)l2;
        if ((long)n2 != l2) {
            throw new IllegalArgumentException("Out of range: " + l2);
        }
        return n2;
    }

    private String consistentShuffle(String string2, String string3) {
        if (string3.length() <= 0) {
            return string2;
        }
        char[] arrc = string3.toCharArray();
        int n2 = string2.length() - 1;
        int n3 = 0;
        int n4 = 0;
        while (n2 > 0) {
            int n5 = arrc[n3 %= string3.length()];
            n5 = (n5 + n3 + (n4 += n5)) % n2;
            char c2 = string2.charAt(n5);
            string2 = string2.substring(0, n5) + string2.charAt(n2) + string2.substring(n5 + 1);
            string2 = string2.substring(0, n2) + c2 + string2.substring(n2 + 1);
            --n2;
            ++n3;
        }
        return string2;
    }

    private String hash(long l2, String string2) {
        long l3;
        String string3 = "";
        int n2 = string2.length();
        char[] arrc = string2.toCharArray();
        string2 = string3;
        do {
            string3 = "" + arrc[(int)(l2 % (long)n2)] + string2;
            l3 = l2 / (long)n2;
            string2 = string3;
            l2 = l3;
        } while (l3 > 0);
        return string3;
    }

    private Long unhash(String string2, String string3) {
        long l2 = 0;
        char[] arrc = string2.toCharArray();
        for (int i2 = 0; i2 < string2.length(); ++i2) {
            long l3 = string3.indexOf(arrc[i2]);
            l2 = (long)((double)l2 + (double)l3 * Math.pow(string3.length(), string2.length() - i2 - 1));
        }
        return l2;
    }

    public long[] decode(String string2) {
        if (string2.equals("")) {
            return new long[0];
        }
        return this._decode(string2, this.alphabet);
    }

    public String decodeHex(String string2) {
        String string3 = "";
        long[] arrl = this.decode(string2);
        int n2 = arrl.length;
        string2 = string3;
        for (int i2 = 0; i2 < n2; ++i2) {
            long l2 = arrl[i2];
            string2 = string2 + Long.toHexString(l2).substring(1);
        }
        return string2;
    }

    @Deprecated
    public long[] decrypt(String string2) {
        return this.decode(string2);
    }

    @Deprecated
    public String decryptHex(String string2) {
        return this.decodeHex(string2);
    }

    public /* varargs */ String encode(long ... arrl) {
        int n2 = arrl.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            if (arrl[i2] <= 0x20000000000000L) continue;
            throw new IllegalArgumentException("number can not be greater than 9007199254740992L");
        }
        if (arrl.length == 0) {
            return "";
        }
        return this._encode(arrl);
    }

    public String encodeHex(String arrl) {
        if (!arrl.matches("^[0-9a-fA-F]+$")) {
            return "";
        }
        ArrayList<Long> arrayList = new ArrayList<Long>();
        arrl = Pattern.compile("[\\w\\W]{1,12}").matcher((CharSequence)arrl);
        while (arrl.find()) {
            arrayList.add(Long.parseLong("1" + arrl.group(), 16));
        }
        arrl = new long[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); ++i2) {
            arrl[i2] = (Long)arrayList.get(i2);
        }
        return this._encode(arrl);
    }

    @Deprecated
    public /* varargs */ String encrypt(long ... arrl) {
        return this.encode(arrl);
    }

    @Deprecated
    public String encryptHex(String string2) {
        return this.encodeHex(string2);
    }

    public String getVersion() {
        return "1.0.0";
    }
}

