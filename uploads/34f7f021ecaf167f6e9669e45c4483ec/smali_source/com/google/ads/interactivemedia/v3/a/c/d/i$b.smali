.class public final Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;->a:Ljava/lang/String;

    .line 431
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;->b:[Ljava/lang/String;

    .line 432
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;->c:I

    .line 433
    return-void
.end method
