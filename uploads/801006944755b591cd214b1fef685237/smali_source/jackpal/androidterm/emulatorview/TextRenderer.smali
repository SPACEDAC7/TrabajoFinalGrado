.class interface abstract Ljackpal/androidterm/emulatorview/TextRenderer;
.super Ljava/lang/Object;
.source "TextRenderer.java"


# static fields
.field public static final MODE_ALT_SHIFT:I = 0x2

.field public static final MODE_CTRL_SHIFT:I = 0x4

.field public static final MODE_FN_SHIFT:I = 0x6

.field public static final MODE_LOCKED:I = 0x2

.field public static final MODE_MASK:I = 0x3

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_ON:I = 0x1

.field public static final MODE_SHIFT_SHIFT:I


# virtual methods
.method public abstract drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V
.end method

.method public abstract getCharacterHeight()I
.end method

.method public abstract getCharacterWidth()F
.end method

.method public abstract getTopMargin()I
.end method

.method public abstract setReverseVideo(Z)V
.end method
