.class public abstract Ljackpal/androidterm/compat/ActionBarCompat;
.super Ljava/lang/Object;
.source "ActionBarCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final ID_HOME:I = 0x102002c

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Ljackpal/androidterm/compat/ActionBarCompat;
    .registers 3
    .param p0, "actionBar"    # Ljava/lang/Object;

    .prologue
    .line 43
    if-eqz p0, :cond_e

    .line 44
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 45
    new-instance v0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;

    invoke-direct {v0, p0}, Ljackpal/androidterm/compat/ActionBarApi11OrLater;-><init>(Ljava/lang/Object;)V

    .line 48
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public abstract getDisplayOptions()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract show()V
.end method
