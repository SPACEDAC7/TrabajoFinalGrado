.class Lhecticman/jsterm/emulatorview/compat/AndroidCharacterCompat$Api8OrLater;
.super Ljava/lang/Object;
.source "AndroidCharacterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/emulatorview/compat/AndroidCharacterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api8OrLater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEastAsianWidth(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .registers 0

    .prologue
    .line 19
    return-void
.end method
