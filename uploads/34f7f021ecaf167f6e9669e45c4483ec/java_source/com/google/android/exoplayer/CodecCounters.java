/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

public final class CodecCounters {
    public int codecInitCount;
    public int codecReleaseCount;
    public int droppedOutputBufferCount;
    public int inputBufferCount;
    public int maxConsecutiveDroppedOutputBufferCount;
    public int outputBuffersChangedCount;
    public int outputFormatChangedCount;
    public int renderedOutputBufferCount;
    public int skippedOutputBufferCount;

    /*
     * Enabled aggressive block sorting
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void ensureUpdated() {
        // MONITORENTER : this
        // MONITOREXIT : this
    }

    public String getDebugString() {
        this.ensureUpdated();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("cic:").append(this.codecInitCount);
        stringBuilder.append(" crc:").append(this.codecReleaseCount);
        stringBuilder.append(" ibc:").append(this.inputBufferCount);
        stringBuilder.append(" ofc:").append(this.outputFormatChangedCount);
        stringBuilder.append(" obc:").append(this.outputBuffersChangedCount);
        stringBuilder.append(" ren:").append(this.renderedOutputBufferCount);
        stringBuilder.append(" sob:").append(this.skippedOutputBufferCount);
        stringBuilder.append(" dob:").append(this.droppedOutputBufferCount);
        stringBuilder.append(" mcdob:").append(this.maxConsecutiveDroppedOutputBufferCount);
        return stringBuilder.toString();
    }
}

