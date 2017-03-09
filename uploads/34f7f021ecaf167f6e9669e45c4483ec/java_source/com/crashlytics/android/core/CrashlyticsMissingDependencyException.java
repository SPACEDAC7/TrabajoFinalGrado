/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

public class CrashlyticsMissingDependencyException
extends RuntimeException {
    private static final long serialVersionUID = -1151536370019872859L;

    CrashlyticsMissingDependencyException(String string2) {
        super(CrashlyticsMissingDependencyException.buildExceptionMessage(string2));
    }

    private static String buildExceptionMessage(String string2) {
        return "\n" + string2 + "\n";
    }
}

