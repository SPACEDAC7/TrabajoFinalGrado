/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

public class HttpException
extends Exception {
    public static final String GATEWAY_TIMEOUT_ERROR = "gateway_timeout_error";
    public static final String NOT_FOUND_ERROR = "not_found_error";
    public static final String TIMEOUT_ERROR = "timeout_error";
    public static final String UNAUTHORIZED_ERROR = "unauthorized_error";
    public static final String UNKNOWN_ERROR = "unknown_error";

    public HttpException(String string2) {
        super(string2);
    }
}

