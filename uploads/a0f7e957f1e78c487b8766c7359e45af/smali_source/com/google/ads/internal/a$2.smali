.class final Lcom/google/ads/internal/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/util/f",
        "<",
        "Lcom/google/ads/internal/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/internal/a;
    .registers 2

    .prologue
    .line 73
    invoke-static {}, Lcom/google/ads/internal/a;->a()Lcom/google/ads/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/ads/internal/a$2;->a()Lcom/google/ads/internal/a;

    move-result-object v0

    return-object v0
.end method
