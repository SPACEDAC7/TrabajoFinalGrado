/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.manager;

import com.bumptech.glide.RequestManager;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import java.util.Collections;
import java.util.Set;

final class EmptyRequestManagerTreeNode
implements RequestManagerTreeNode {
    EmptyRequestManagerTreeNode() {
    }

    @Override
    public Set<RequestManager> getDescendants() {
        return Collections.emptySet();
    }
}

