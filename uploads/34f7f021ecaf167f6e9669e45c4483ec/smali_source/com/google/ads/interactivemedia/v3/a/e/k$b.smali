.class public final Lcom/google/ads/interactivemedia/v3/a/e/k$b;
.super Lcom/google/ads/interactivemedia/v3/a/e/k$a;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/e/f;)V
    .registers 6

    .prologue
    .line 95
    const-string v1, "Invalid content type: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/a/e/k$a;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V

    .line 96
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$b;->c:Ljava/lang/String;

    .line 97
    return-void

    .line 95
    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method
