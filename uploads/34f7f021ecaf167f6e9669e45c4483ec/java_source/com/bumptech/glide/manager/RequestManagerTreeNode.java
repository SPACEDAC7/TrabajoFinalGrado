/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.manager;

import com.bumptech.glide.RequestManager;
import java.util.Set;

public interface RequestManagerTreeNode {
    public Set<RequestManager> getDescendants();
}

