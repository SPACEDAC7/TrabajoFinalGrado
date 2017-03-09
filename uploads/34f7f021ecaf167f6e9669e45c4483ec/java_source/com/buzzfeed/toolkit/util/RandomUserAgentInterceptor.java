/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import com.buzzfeed.toolkit.util.DynamicHeaderInterceptor;
import java.util.ArrayList;

public class RandomUserAgentInterceptor
extends DynamicHeaderInterceptor {
    private static String mRandomUserAgent;
    private static final ArrayList<String> userAgentList;

    static {
        userAgentList = new ArrayList<String>(){};
    }

    public RandomUserAgentInterceptor() {
        if (mRandomUserAgent == null || mRandomUserAgent.isEmpty()) {
            mRandomUserAgent = RandomUserAgentInterceptor.getRandomUserAgent();
        }
        this.addHeader("User-agent", mRandomUserAgent);
    }

    private static String getRandomUserAgent() {
        int n2 = userAgentList.size();
        return RandomUserAgentInterceptor.getUserAgent((int)(Math.random() * (double)n2));
    }

    public static String getUserAgent(int n2) {
        String string2 = null;
        int n3 = userAgentList.size();
        String string3 = string2;
        if (n2 >= 0) {
            string3 = string2;
            if (n2 < n3) {
                string3 = userAgentList.get(n2);
            }
        }
        return string3;
    }

}

