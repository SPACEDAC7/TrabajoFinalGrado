/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.tenderizer;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.buzzfeed.toolkit.doorbell.Doorbell;
import com.buzzfeed.toolkit.tenderizer.InterpolatedPound;
import com.buzzfeed.toolkit.tenderizer.Pound;
import com.buzzfeed.toolkit.tenderizer.TenderizerParsingException;
import com.buzzfeed.toolkit.util.Hashids;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Tenderizer {
    private static final String TAG = Tenderizer.class.getSimpleName();
    private static final String UTM_TERM = "utm_term";
    private boolean mOptOut;
    private Pound mPound;

    public Tenderizer(Context context, boolean bl) {
        this.mPound = new Pound(new Doorbell(context.getApplicationContext()).getUserPoundIdentifier());
        this.mOptOut = bl;
    }

    private Uri addLegacyPound(Uri uri) {
        uri = Tenderizer.removeUtmTermIfPresent(uri).buildUpon();
        if (this.mOptOut) {
            return uri.encodedFragment("").build();
        }
        String string2 = this.mPound.getHashedIdentifier();
        uri.encodedFragment(string2);
        uri.appendQueryParameter("utm_term", string2);
        return uri.build();
    }

    private boolean containsPound(String string2) {
        if (!(string2 == null || TextUtils.isEmpty((CharSequence)(string2 = Uri.parse((String)string2)).getQueryParameter("utm_term")) && TextUtils.isEmpty((CharSequence)string2.getFragment()) && !InterpolatedPound.isInterpolatedPound((Uri)string2))) {
            return true;
        }
        return false;
    }

    public static long getUserIdFromHashedPoundId(String arrl) throws TenderizerParsingException {
        if (arrl.charAt(0) == '.' && arrl.length() > 3) {
            String string2 = arrl.substring(1, 3);
            arrl = arrl.substring(3, arrl.length());
            if ((arrl = new Hashids(string2).decode((String)arrl)) == null || arrl.length < 1) {
                throw new TenderizerParsingException();
            }
            return arrl[0];
        }
        throw new TenderizerParsingException();
    }

    private static String getUtmTermFromUrl(Uri uri) {
        return uri.getQueryParameter("utm_term");
    }

    private static Uri removeUtmTermIfPresent(Uri uri) {
        Uri uri2 = uri;
        if (uri != null) {
            uri2 = uri;
            if (uri.getQueryParameterNames().contains("utm_term")) {
                uri2 = new HashMap();
                for (String string2 : uri.getQueryParameterNames()) {
                    if (string2.equals("utm_term")) continue;
                    uri2.put(string2, uri.getQueryParameter(string2));
                }
                uri = uri.buildUpon();
                uri.clearQuery();
                for (Map.Entry entry : uri2.entrySet()) {
                    uri.appendQueryParameter((String)entry.getKey(), Uri.encode((String)((String)entry.getValue())));
                }
                uri2 = uri.build();
            }
        }
        return uri2;
    }

    public Uri createPoundUri(@NonNull Uri uri) {
        if (InterpolatedPound.isInterpolatedPound(uri)) {
            return InterpolatedPound.addInterpolatedPound(uri, this.mPound.getHashedIdentifier(), this.mOptOut);
        }
        return this.addLegacyPound(uri);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public long getFromClientId(@NonNull String string2) {
        Uri uri = Uri.parse((String)string2);
        if (this.mOptOut || !this.containsPound(string2)) return -1;
        {
            long l2 = -1;
            try {
                if (uri.getFragment() != null) {
                    l2 = Tenderizer.getUserIdFromHashedPoundId(uri.getFragment());
                } else if (Tenderizer.getUtmTermFromUrl(uri) != null) {
                    l2 = Tenderizer.getUserIdFromHashedPoundId(Tenderizer.getUtmTermFromUrl(uri));
                } else if (InterpolatedPound.getInterpolatedPoundId(uri) != null) {
                    l2 = Tenderizer.getUserIdFromHashedPoundId(InterpolatedPound.getInterpolatedPoundId(uri));
                }
                if (l2 < 0 || this.mPound.getIdentifier() == l2) return -1;
                return l2;
            }
            catch (TenderizerParsingException var1_2) {
                LogUtil.e(TAG, "Error parsing pound id", var1_2);
            }
        }
        return -1;
    }
}

