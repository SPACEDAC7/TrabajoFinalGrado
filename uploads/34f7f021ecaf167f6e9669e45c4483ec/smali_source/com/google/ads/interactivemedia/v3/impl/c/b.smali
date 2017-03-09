.class public Lcom/google/ads/interactivemedia/v3/impl/c/b;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 24
    if-eqz p0, :cond_c

    invoke-static {}, Lcom/google/c/a/a;->c()Lcom/google/c/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/c/a/a;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
