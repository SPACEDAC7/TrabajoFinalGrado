/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api;

public final class ImaSdkSettings {
    public static final int DEFAULT_MAX_REDIRECTS = 4;
    private boolean autoPlayAdBreaks = true;
    private transient String language = "en";
    private int numRedirects = 4;
    private boolean onScreenDetection = true;
    private String playerType;
    private String playerVersion;
    private String ppid;
    private transient boolean restrictToCustomPlayer;

    public boolean doesRestrictToCustomPlayer() {
        return this.restrictToCustomPlayer;
    }

    public boolean getAutoPlayAdBreaks() {
        return this.autoPlayAdBreaks;
    }

    public String getLanguage() {
        return this.language;
    }

    public int getMaxRedirects() {
        return this.numRedirects;
    }

    public String getPlayerType() {
        return this.playerType;
    }

    public String getPlayerVersion() {
        return this.playerVersion;
    }

    public String getPpid() {
        return this.ppid;
    }

    public void setAutoPlayAdBreaks(boolean bl) {
        this.autoPlayAdBreaks = bl;
    }

    public void setLanguage(String string2) {
        this.language = string2;
    }

    public void setMaxRedirects(int n2) {
        this.numRedirects = n2;
    }

    public void setPlayerType(String string2) {
        this.playerType = string2;
    }

    public void setPlayerVersion(String string2) {
        this.playerVersion = string2;
    }

    public void setPpid(String string2) {
        this.ppid = string2;
    }

    public void setRestrictToCustomPlayer(boolean bl) {
        this.restrictToCustomPlayer = bl;
    }

    public String toString() {
        String string2 = this.ppid;
        int n2 = this.numRedirects;
        String string3 = this.playerType;
        String string4 = this.playerVersion;
        boolean bl = this.onScreenDetection;
        String string5 = this.language;
        boolean bl2 = this.restrictToCustomPlayer;
        boolean bl3 = this.autoPlayAdBreaks;
        return new StringBuilder(String.valueOf(string2).length() + 161 + String.valueOf(string3).length() + String.valueOf(string4).length() + String.valueOf(string5).length()).append("ImaSdkSettings [ppid=").append(string2).append(", numRedirects=").append(n2).append(", playerType=").append(string3).append(", playerVersion=").append(string4).append(", onScreenDetection=").append(bl).append(", language=").append(string5).append(", restrictToCustom=").append(bl2).append(", autoPlayAdBreaks=").append(bl3).append("]").toString();
    }
}

