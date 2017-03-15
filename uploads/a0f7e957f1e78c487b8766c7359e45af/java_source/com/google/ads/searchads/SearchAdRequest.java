/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Color
 */
package com.google.ads.searchads;

import android.content.Context;
import android.graphics.Color;
import com.google.ads.AdRequest;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobAdapterExtras;
import java.util.Locale;
import java.util.Map;

public class SearchAdRequest
extends AdRequest {
    private String a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private String h;
    private int i;
    private int j;
    private BorderType k;
    private int l;
    private String m;

    private String a(int n2) {
        return String.format(Locale.US, "#%06x", 16777215 & n2);
    }

    @Override
    public Map<String, Object> getRequestMap(Context context) {
        AdMobAdapterExtras adMobAdapterExtras;
        AdMobAdapterExtras adMobAdapterExtras2 = adMobAdapterExtras = (AdMobAdapterExtras)this.getNetworkExtras(AdMobAdapterExtras.class);
        if (adMobAdapterExtras == null) {
            adMobAdapterExtras2 = new AdMobAdapterExtras();
            this.setNetworkExtras(adMobAdapterExtras2);
        }
        if (this.a != null) {
            adMobAdapterExtras2.getExtras().put("q", this.a);
        }
        if (Color.alpha((int)this.b) != 0) {
            adMobAdapterExtras2.getExtras().put("bgcolor", this.a(this.b));
        }
        if (Color.alpha((int)this.c) == 255 && Color.alpha((int)this.d) == 255) {
            adMobAdapterExtras2.getExtras().put("gradientfrom", this.a(this.c));
            adMobAdapterExtras2.getExtras().put("gradientto", this.a(this.d));
        }
        if (Color.alpha((int)this.e) != 0) {
            adMobAdapterExtras2.getExtras().put("hcolor", this.a(this.e));
        }
        if (Color.alpha((int)this.f) != 0) {
            adMobAdapterExtras2.getExtras().put("dcolor", this.a(this.f));
        }
        if (Color.alpha((int)this.g) != 0) {
            adMobAdapterExtras2.getExtras().put("acolor", this.a(this.g));
        }
        if (this.h != null) {
            adMobAdapterExtras2.getExtras().put("font", this.h);
        }
        adMobAdapterExtras2.getExtras().put("headersize", Integer.toString(this.i));
        if (Color.alpha((int)this.j) != 0) {
            adMobAdapterExtras2.getExtras().put("bcolor", this.a(this.j));
        }
        if (this.k != null) {
            adMobAdapterExtras2.getExtras().put("btype", this.k.toString());
        }
        adMobAdapterExtras2.getExtras().put("bthick", Integer.toString(this.l));
        if (this.m != null) {
            adMobAdapterExtras2.getExtras().put("channel", this.m);
        }
        return super.getRequestMap(context);
    }

    public void setAnchorTextColor(int n2) {
        this.g = n2;
    }

    public void setBackgroundColor(int n2) {
        if (Color.alpha((int)n2) == 255) {
            this.b = n2;
            this.c = 0;
            this.d = 0;
        }
    }

    public void setBackgroundGradient(int n2, int n3) {
        if (Color.alpha((int)n2) == 255 && Color.alpha((int)n3) == 255) {
            this.b = Color.argb((int)0, (int)0, (int)0, (int)0);
            this.c = n2;
            this.d = n3;
        }
    }

    public void setBorderColor(int n2) {
        this.j = n2;
    }

    public void setBorderThickness(int n2) {
        this.l = n2;
    }

    public void setBorderType(BorderType borderType) {
        this.k = borderType;
    }

    public void setCustomChannels(String string2) {
        this.m = string2;
    }

    public void setDescriptionTextColor(int n2) {
        this.f = n2;
    }

    public void setFontFace(String string2) {
        this.h = string2;
    }

    public void setHeaderTextColor(int n2) {
        this.e = n2;
    }

    public void setHeaderTextSize(int n2) {
        this.i = n2;
    }

    public void setQuery(String string2) {
        this.a = string2;
    }

    public static enum BorderType {
        NONE("none"),
        DASHED("dashed"),
        DOTTED("dotted"),
        SOLID("solid");
        
        private String a;

        private BorderType(String string3) {
            this.a = string3;
        }

        public String toString() {
            return this.a;
        }
    }

}

