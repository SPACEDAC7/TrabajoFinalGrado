/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.share.internal;

import com.facebook.internal.Validate;
import com.facebook.share.model.GameRequestContent;
import java.util.ArrayList;

public class GameRequestValidation {
    /*
     * Enabled aggressive block sorting
     */
    public static void validate(GameRequestContent gameRequestContent) {
        int n2 = 0;
        Validate.notNull(gameRequestContent.getMessage(), "message");
        int n3 = gameRequestContent.getObjectId() != null ? 1 : 0;
        if (gameRequestContent.getActionType() == GameRequestContent.ActionType.ASKFOR || gameRequestContent.getActionType() == GameRequestContent.ActionType.SEND) {
            n2 = 1;
        }
        if (n3 ^ n2) {
            throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor");
        }
        n2 = 0;
        if (gameRequestContent.getTo() != null) {
            n2 = 0 + 1;
        }
        n3 = n2;
        if (gameRequestContent.getSuggestions() != null) {
            n3 = n2 + 1;
        }
        n2 = n3;
        if (gameRequestContent.getFilters() != null) {
            n2 = n3 + 1;
        }
        if (n2 > 1) {
            throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive");
        }
    }
}

