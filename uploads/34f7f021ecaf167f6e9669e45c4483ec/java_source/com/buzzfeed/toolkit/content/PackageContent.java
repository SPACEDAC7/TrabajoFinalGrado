/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.WeaverItem;
import java.util.List;

public interface PackageContent
extends Content {
    public String getName();

    public List<WeaverItem> getPackageItems();
}

