/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.share;

public interface Sharer {
    public boolean getShouldFailOnDataError();

    public void setShouldFailOnDataError(boolean var1);

    public static class Result {
        final String postId;

        public Result(String string2) {
            this.postId = string2;
        }

        public String getPostId() {
            return this.postId;
        }
    }

}

