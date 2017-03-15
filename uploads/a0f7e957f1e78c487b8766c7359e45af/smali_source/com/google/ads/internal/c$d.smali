.class public final enum Lcom/google/ads/internal/c$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/internal/c$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/internal/c$d;

.field public static final enum b:Lcom/google/ads/internal/c$d;

.field public static final enum c:Lcom/google/ads/internal/c$d;

.field public static final enum d:Lcom/google/ads/internal/c$d;

.field private static final synthetic f:[Lcom/google/ads/internal/c$d;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    new-instance v0, Lcom/google/ads/internal/c$d;

    const-string v1, "ONLINE_USING_BUFFERED_ADS"

    const-string v2, "online_buffered"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/internal/c$d;->a:Lcom/google/ads/internal/c$d;

    .line 219
    new-instance v0, Lcom/google/ads/internal/c$d;

    const-string v1, "ONLINE_SERVER_REQUEST"

    const-string v2, "online_request"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/internal/c$d;->b:Lcom/google/ads/internal/c$d;

    .line 224
    new-instance v0, Lcom/google/ads/internal/c$d;

    const-string v1, "OFFLINE_USING_BUFFERED_ADS"

    const-string v2, "offline_buffered"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/internal/c$d;->c:Lcom/google/ads/internal/c$d;

    .line 229
    new-instance v0, Lcom/google/ads/internal/c$d;

    const-string v1, "OFFLINE_EMPTY"

    const-string v2, "offline_empty"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/internal/c$d;->d:Lcom/google/ads/internal/c$d;

    .line 210
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/internal/c$d;

    sget-object v1, Lcom/google/ads/internal/c$d;->a:Lcom/google/ads/internal/c$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/internal/c$d;->b:Lcom/google/ads/internal/c$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/internal/c$d;->c:Lcom/google/ads/internal/c$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/internal/c$d;->d:Lcom/google/ads/internal/c$d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/ads/internal/c$d;->f:[Lcom/google/ads/internal/c$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput-object p3, p0, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/internal/c$d;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/google/ads/internal/c$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c$d;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/internal/c$d;
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lcom/google/ads/internal/c$d;->f:[Lcom/google/ads/internal/c$d;

    invoke-virtual {v0}, [Lcom/google/ads/internal/c$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/internal/c$d;

    return-object v0
.end method
