.class public Lhecticman/jsterm/compat/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/compat/ActivityCompat$Api11OrLater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionBar(Landroid/app/Activity;)Lhecticman/jsterm/compat/ActionBarCompat;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat$Api11OrLater;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->wrap(Ljava/lang/Object;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v0

    goto :goto_7
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 37
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat$Api11OrLater;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 39
    :cond_9
    return-void
.end method
