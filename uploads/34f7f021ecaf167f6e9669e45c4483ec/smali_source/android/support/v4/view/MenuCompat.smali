.class public final Landroid/support/v4/view/MenuCompat;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "actionEnum"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 35
    return-void
.end method
