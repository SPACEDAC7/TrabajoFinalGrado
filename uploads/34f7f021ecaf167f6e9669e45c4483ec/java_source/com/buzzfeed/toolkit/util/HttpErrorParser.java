/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import com.buzzfeed.toolkit.util.HttpException;

public class HttpErrorParser {
    public static final int GATEWAY_TIMEOUT = 504;
    public static final int RES_NOT_FOUND = 404;
    public static final int TIMEOUT = 408;
    public static final int UNAUTHORIZED = 401;

    public static HttpException createExceptionOnHttpError(int n2) {
        if (n2 == 408) {
            return new HttpException("timeout_error");
        }
        if (n2 == 404) {
            return new HttpException("not_found_error");
        }
        if (n2 == 401) {
            return new HttpException("unauthorized_error");
        }
        if (n2 == 504) {
            return new HttpException("gateway_timeout_error");
        }
        return new HttpException("unknown_error");
    }
}

