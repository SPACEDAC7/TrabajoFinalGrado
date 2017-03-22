.class public abstract Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat;
.super Ljava/lang/Object;
.source "KeyCharacterMapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat$KeyCharacterMapApi11OrLater;
    }
.end annotation


# static fields
.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat;
    .registers 3
    .param p0, "map"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-eqz p0, :cond_e

    .line 28
    sget v0, Lhecticman/jsterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 29
    new-instance v0, Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat$KeyCharacterMapApi11OrLater;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat$KeyCharacterMapApi11OrLater;-><init>(Ljava/lang/Object;)V

    .line 32
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public abstract getModifierBehaviour()I
.end method
