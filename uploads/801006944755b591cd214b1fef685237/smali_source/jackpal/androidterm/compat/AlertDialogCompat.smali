.class public Ljackpal/androidterm/compat/AlertDialogCompat;
.super Landroid/app/AlertDialog;
.source "AlertDialogCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/compat/AlertDialogCompat$Api11OrLaterBuilder;,
        Ljackpal/androidterm/compat/AlertDialogCompat$Api14OrLater;,
        Ljackpal/androidterm/compat/AlertDialogCompat$Api11OrLater;
    }
.end annotation


# static fields
.field public static THEME_DEVICE_DEFAULT_DARK:I

.field public static THEME_DEVICE_DEFAULT_LIGHT:I

.field public static THEME_HOLO_DARK:I

.field public static THEME_HOLO_LIGHT:I

.field public static THEME_HOLO_TRADITIONAL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_HOLO_TRADITIONAL:I

    .line 11
    const/4 v0, 0x2

    sput v0, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_HOLO_DARK:I

    .line 12
    const/4 v0, 0x3

    sput v0, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_HOLO_LIGHT:I

    .line 14
    const/4 v0, 0x4

    sput v0, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_DEVICE_DEFAULT_DARK:I

    .line 15
    const/4 v0, 0x5

    sput v0, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_DEVICE_DEFAULT_LIGHT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 24
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Ljackpal/androidterm/compat/AlertDialogCompat;

    invoke-direct {v0, p0}, Ljackpal/androidterm/compat/AlertDialogCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;I)Landroid/app/AlertDialog;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .prologue
    .line 57
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    .line 59
    new-instance v0, Ljackpal/androidterm/compat/AlertDialogCompat$Api14OrLater;

    invoke-direct {v0, p0, p1}, Ljackpal/androidterm/compat/AlertDialogCompat$Api14OrLater;-><init>(Landroid/content/Context;I)V

    .line 65
    :goto_b
    return-object v0

    .line 61
    :cond_c
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_18

    .line 63
    new-instance v0, Ljackpal/androidterm/compat/AlertDialogCompat$Api11OrLater;

    invoke-direct {v0, p0, p1}, Ljackpal/androidterm/compat/AlertDialogCompat$Api11OrLater;-><init>(Landroid/content/Context;I)V

    goto :goto_b

    .line 65
    :cond_18
    new-instance v0, Ljackpal/androidterm/compat/AlertDialogCompat;

    invoke-direct {v0, p0}, Ljackpal/androidterm/compat/AlertDialogCompat;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method

.method public static newInstance(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Z
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 70
    new-instance v0, Ljackpal/androidterm/compat/AlertDialogCompat;

    invoke-direct {v0, p0, p1, p2}, Ljackpal/androidterm/compat/AlertDialogCompat;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public static newInstanceBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .prologue
    .line 75
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    .line 76
    new-instance v0, Ljackpal/androidterm/compat/AlertDialogCompat$Api11OrLaterBuilder;

    invoke-direct {v0, p0, p1}, Ljackpal/androidterm/compat/AlertDialogCompat$Api11OrLaterBuilder;-><init>(Landroid/content/Context;I)V

    .line 78
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method
