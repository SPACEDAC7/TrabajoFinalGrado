/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.analytics.model;

public class UnitImpression {
    public static final String TAG = UnitImpression.class.getSimpleName();
    public final String contentId;
    public final String contentType;
    public final String dataSource;
    public final String packageId;
    public final String packageName;
    public final String packageSize;
    public final String position;
    public final String postCategory;
    public final String subPosition;
    public final String unit = "feed";
    public final String unitClientId;
    public final String variationId;

    private UnitImpression(Builder builder) {
        this.contentId = builder.contentId;
        this.contentType = builder.contentType;
        this.position = builder.position;
        this.unitClientId = builder.unitClientId;
        this.postCategory = builder.postCategory;
        this.variationId = builder.variationId;
        this.packageName = builder.packageName;
        this.packageSize = builder.packageSize;
        this.subPosition = builder.subPosition;
        this.packageId = builder.packageId;
        this.dataSource = builder.dataSource;
    }

    public static class Builder {
        private String contentId;
        private String contentType;
        private String dataSource;
        private String packageId;
        private String packageName;
        private String packageSize;
        private String position;
        private String postCategory;
        private String subPosition;
        private String unitClientId;
        private String variationId;

        public UnitImpression build() {
            return new UnitImpression(this);
        }

        public Builder setContentId(String string2) {
            this.contentId = string2;
            return this;
        }

        public Builder setContentType(String string2) {
            this.contentType = string2;
            return this;
        }

        public Builder setDataSource(String string2) {
            this.dataSource = string2;
            return this;
        }

        public Builder setPackageId(String string2) {
            this.packageId = string2;
            return this;
        }

        public Builder setPackageName(String string2) {
            this.packageName = string2;
            return this;
        }

        public Builder setPackageSize(Integer n2) {
            if (n2 != null) {
                this.packageSize = String.valueOf(n2);
            }
            return this;
        }

        public Builder setPosition(int n2) {
            this.position = String.valueOf(n2);
            return this;
        }

        public Builder setPostCategory(String string2) {
            this.postCategory = string2;
            return this;
        }

        public Builder setSubPosition(Integer n2) {
            if (n2 != null) {
                this.subPosition = String.valueOf(n2);
            }
            return this;
        }

        public Builder setUnitClientId(String string2) {
            this.unitClientId = string2;
            return this;
        }

        public Builder setVariationId(String string2) {
            this.variationId = string2;
            return this;
        }
    }

}

