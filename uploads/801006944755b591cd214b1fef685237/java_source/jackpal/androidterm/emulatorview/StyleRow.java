/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

final class StyleRow {
    private int mColumns;
    private byte[] mData;
    private int mStyle;

    StyleRow(int n, int n2) {
        this.mStyle = n;
        this.mColumns = n2;
    }

    private void allocate() {
        this.mData = new byte[this.mColumns * 3];
        for (int i = 0; i < this.mColumns; ++i) {
            this.setStyle(i, this.mStyle);
        }
    }

    private int getStyle(int n) {
        byte[] arrby = this.mData;
        return arrby[n] & 255 | (arrby[n + 1] & 255) << 8 | (arrby[(n *= 3) + 2] & 255) << 16;
    }

    private void setStyle(int n, int n2) {
        byte[] arrby = this.mData;
        arrby[n *= 3] = (byte)(n2 & 255);
        arrby[n + 1] = (byte)(n2 >> 8 & 255);
        arrby[n + 2] = (byte)(n2 >> 16 & 255);
    }

    void copy(int n, StyleRow styleRow, int n2, int n3) {
        if (this.mData == null && styleRow.mData == null && n == 0 && n2 == 0 && n3 == this.mColumns) {
            styleRow.mStyle = this.mStyle;
            return;
        }
        this.ensureData();
        styleRow.ensureData();
        System.arraycopy(this.mData, n * 3, styleRow.mData, n2 * 3, n3 * 3);
    }

    void ensureData() {
        if (this.mData == null) {
            this.allocate();
        }
    }

    int get(int n) {
        if (this.mData == null) {
            return this.mStyle;
        }
        return this.getStyle(n);
    }

    int getSolidStyle() {
        if (this.mData != null) {
            throw new IllegalArgumentException("Not a solid style");
        }
        return this.mStyle;
    }

    boolean isSolidStyle() {
        if (this.mData == null) {
            return true;
        }
        return false;
    }

    void set(int n, int n2) {
        if (n2 == this.mStyle && this.mData == null) {
            return;
        }
        this.ensureData();
        this.setStyle(n, n2);
    }
}

