.class public Ljackpal/androidterm/compat/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/compat/MenuItemCompat$Api11OrLater;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "actionEnum"    # I

    .prologue
    .line 21
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 22
    invoke-static {p0, p1}, Ljackpal/androidterm/compat/MenuItemCompat$Api11OrLater;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 24
    :cond_9
    return-void
.end method
