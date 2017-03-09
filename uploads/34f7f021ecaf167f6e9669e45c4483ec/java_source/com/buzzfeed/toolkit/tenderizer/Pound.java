/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.tenderizer;

import com.buzzfeed.toolkit.util.Hashids;
import java.util.Random;

class Pound {
    private static Random sRandom = new Random();
    private long mIdentifier;

    public Pound(long l2) {
        this.mIdentifier = l2;
    }

    private char generateRandomCharacter() {
        return (char)(sRandom.nextInt(26) + 97);
    }

    public String generateRandomSaltId() {
        String string2 = "";
        for (int i2 = 0; i2 < 2; ++i2) {
            string2 = string2 + this.generateRandomCharacter();
        }
        return string2;
    }

    public String getHashedIdentifier() {
        String string2 = this.generateRandomSaltId();
        String string3 = new Hashids(string2).encode(this.mIdentifier);
        return "." + string2 + string3;
    }

    public long getIdentifier() {
        return this.mIdentifier;
    }
}

