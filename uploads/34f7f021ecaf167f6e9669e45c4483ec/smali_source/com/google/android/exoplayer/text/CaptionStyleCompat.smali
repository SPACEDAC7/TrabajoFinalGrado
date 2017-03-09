.class public final Lcom/google/android/exoplayer/text/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final USE_TRACK_COLOR_SETTINGS:I = 0x1


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    const/high16 v2, -0x1000000

    const/4 v6, 0x0

    move v4, v3

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .registers 7
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "windowColor"    # I
    .param p4, "edgeType"    # I
    .param p5, "edgeColor"    # I
    .param p6, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    .line 132
    iput p2, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    .line 133
    iput p3, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    .line 134
    iput p4, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    .line 135
    iput p5, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    .line 136
    iput-object p6, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    .line 137
    return-void
.end method

.method public static createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .registers 3
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 112
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 113
    invoke-static {p0}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v0

    .line 117
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v0

    goto :goto_a
.end method

.method private static createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .registers 8
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 144
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 142
    return-object v0
.end method

.method private static createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .registers 8
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    .line 151
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 152
    :goto_a
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 153
    :goto_12
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 154
    :goto_1a
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_41

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 155
    :goto_22
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v5

    if-eqz v5, :cond_46

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 156
    :goto_2a
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 150
    return-object v0

    .line 151
    :cond_32
    sget-object v1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v1, v1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    goto :goto_a

    .line 152
    :cond_37
    sget-object v2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v2, v2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    goto :goto_12

    .line 153
    :cond_3c
    sget-object v3, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v3, v3, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    goto :goto_1a

    .line 154
    :cond_41
    sget-object v4, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v4, v4, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    goto :goto_22

    .line 155
    :cond_46
    sget-object v5, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v5, v5, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    goto :goto_2a
.end method
