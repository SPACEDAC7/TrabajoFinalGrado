.class public Lhecticman/jsterm/emulatorview/ColorScheme;
.super Ljava/lang/Object;
.source "ColorScheme.java"


# instance fields
.field private backColor:I

.field private backColorIndex:I

.field private foreColor:I

.field private foreColorIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "foreColorIndex"    # I
    .param p2, "foreColor"    # I
    .param p3, "backColorIndex"    # I
    .param p4, "backColor"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->foreColorIndex:I

    .line 62
    iput p2, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->foreColor:I

    .line 63
    iput p3, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->backColorIndex:I

    .line 64
    iput p4, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->backColor:I

    .line 65
    return-void
.end method

.method public constructor <init>([I)V
    .registers 4
    .param p1, "scheme"    # [I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_d
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->foreColorIndex:I

    .line 79
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->foreColor:I

    .line 80
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->backColorIndex:I

    .line 81
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->backColor:I

    .line 82
    return-void
.end method


# virtual methods
.method public getBackColor()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->backColor:I

    return v0
.end method

.method public getBackColorIndex()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->backColorIndex:I

    return v0
.end method

.method public getForeColor()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->foreColor:I

    return v0
.end method

.method public getForeColorIndex()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lhecticman/jsterm/emulatorview/ColorScheme;->foreColorIndex:I

    return v0
.end method
