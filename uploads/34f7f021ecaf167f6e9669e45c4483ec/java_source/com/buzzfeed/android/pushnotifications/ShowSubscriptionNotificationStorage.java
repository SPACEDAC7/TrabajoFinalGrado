/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.pushnotifications;

import java.util.ArrayList;
import java.util.List;

public class ShowSubscriptionNotificationStorage {
    private static final String BULLET_POINT = "\u2022";
    private List<String> mMessages;
    private int mNotificationId;

    public ShowSubscriptionNotificationStorage(int n2) {
        this.mNotificationId = n2;
        this.mMessages = new ArrayList<String>();
    }

    public void addNotification(String string2) {
        this.mMessages.add(string2);
    }

    public String getAllMessagesCombined() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String string2 : this.mMessages) {
            if (stringBuilder.length() > 0) {
                stringBuilder.append("\n");
            }
            stringBuilder.append("\u2022").append(" ").append(string2);
        }
        return stringBuilder.toString();
    }

    public int getMessagesCount() {
        return this.mMessages.size();
    }

    public int getNotificationId() {
        return this.mNotificationId;
    }
}

