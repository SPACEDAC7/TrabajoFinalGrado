.class Ljackpal/androidterm/compat/ActivityCompat$Api11OrLater;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/compat/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api11OrLater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionBar(Landroid/app/Activity;)Ljava/lang/Object;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 28
    return-void
.end method
