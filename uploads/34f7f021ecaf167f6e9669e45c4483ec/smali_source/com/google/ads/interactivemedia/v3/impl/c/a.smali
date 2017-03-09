.class public Lcom/google/ads/interactivemedia/v3/impl/c/a;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(Landroid/webkit/WebSettings;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 18
    :cond_a
    return-void
.end method
