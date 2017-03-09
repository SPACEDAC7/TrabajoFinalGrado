.class public final Lcom/google/ads/interactivemedia/v3/b/b/a;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 38
    if-nez p0, :cond_8

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_8
    return-object p0
.end method

.method public static a(Z)V
    .registers 2

    .prologue
    .line 45
    if-nez p0, :cond_8

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_8
    return-void
.end method
