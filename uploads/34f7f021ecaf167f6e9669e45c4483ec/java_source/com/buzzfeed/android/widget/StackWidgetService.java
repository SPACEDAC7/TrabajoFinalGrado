/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.Intent
 *  android.widget.RemoteViewsService
 *  android.widget.RemoteViewsService$RemoteViewsFactory
 */
package com.buzzfeed.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViewsService;
import com.buzzfeed.android.widget.StackRemoteViewsFactory;

@TargetApi(value=11)
public class StackWidgetService
extends RemoteViewsService {
    static final int CONNECTION_TIMEOUT_MS = 15000;

    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new StackRemoteViewsFactory(this.getApplicationContext(), intent);
    }
}

