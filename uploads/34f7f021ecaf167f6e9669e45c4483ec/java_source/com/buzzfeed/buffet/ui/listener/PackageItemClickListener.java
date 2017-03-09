/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.ImageView
 */
package com.buzzfeed.buffet.ui.listener;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import java.util.Stack;

public interface PackageItemClickListener {
    public void onPackageItemClicked(@NonNull PackageContent var1, @NonNull PostContent var2, int var3, int var4, @Nullable ImageView var5, @NonNull Stack<String> var6, boolean var7);
}

