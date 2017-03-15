/*
 * Decompiled with CFR 0_115.
 */
package com.ngb.wpsconnect;

public class Network {
    private final String bssid;
    private final String essid;
    private final int iSignal;
    private final int lock;
    private final String signal;
    private final String wifi_info;

    public Network(String string2, String string3, String string4, String string5, int n2, int n3) {
        this.bssid = string2;
        this.essid = string3;
        this.wifi_info = string4;
        this.signal = string5;
        this.iSignal = n2;
        this.lock = n3;
    }

    public String getBSSID() {
        return this.bssid;
    }

    public String getESSID() {
        return this.essid;
    }

    public String getINFO() {
        return this.wifi_info;
    }

    public int getLOCK() {
        return this.lock;
    }

    public String getSIGNAL() {
        return this.signal;
    }

    public int getWiFiSignalIMG() {
        return this.iSignal;
    }
}

