.class public Lhecticman/jsterm/emulatorview/compat/AndroidCharacterCompat;
.super Ljava/lang/Object;
.source "AndroidCharacterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/emulatorview/compat/AndroidCharacterCompat$Api8OrLater;
    }
.end annotation


# static fields
.field public static final EAST_ASIAN_WIDTH_AMBIGUOUS:I = 0x1

.field public static final EAST_ASIAN_WIDTH_FULL_WIDTH:I = 0x3

.field public static final EAST_ASIAN_WIDTH_HALF_WIDTH:I = 0x2

.field public static final EAST_ASIAN_WIDTH_NARROW:I = 0x4

.field public static final EAST_ASIAN_WIDTH_NEUTRAL:I = 0x0

.field public static final EAST_ASIAN_WIDTH_WIDE:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEastAsianWidth(C)I
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 27
    sget v0, Lhecticman/jsterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_b

    .line 28
    invoke-static {p0}, Lhecticman/jsterm/emulatorview/compat/AndroidCharacterCompat$Api8OrLater;->getEastAsianWidth(C)I

    move-result v0

    .line 30
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x4

    goto :goto_a
.end method
