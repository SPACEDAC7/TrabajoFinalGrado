/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm.emulatorview;

interface Screen {
    public void blockCopy(int var1, int var2, int var3, int var4, int var5, int var6);

    public void blockSet(int var1, int var2, int var3, int var4, int var5, int var6, int var7);

    public boolean fastResize(int var1, int var2, int[] var3);

    public int getActiveRows();

    public String getSelectedText(int var1, int var2, int var3, int var4);

    public String getSelectedText(StringBuilder var1, int var2, int var3, int var4, int var5);

    public String getTranscriptText();

    public String getTranscriptText(StringBuilder var1);

    public void resize(int var1, int var2, int var3, int var4);

    public void scroll(int var1, int var2);

    public void set(int var1, int var2, byte var3, int var4, int var5);

    public void set(int var1, int var2, int var3, int var4, int var5);

    public void setLineWrap(int var1);
}

