.class public final enum Lcom/google/ads/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/g$a;

.field public static final enum b:Lcom/google/ads/g$a;

.field public static final enum c:Lcom/google/ads/g$a;

.field public static final enum d:Lcom/google/ads/g$a;

.field public static final enum e:Lcom/google/ads/g$a;

.field public static final enum f:Lcom/google/ads/g$a;

.field private static final synthetic g:[Lcom/google/ads/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/google/ads/g$a;

    const-string v1, "AD"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    .line 22
    new-instance v0, Lcom/google/ads/g$a;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/g$a;->b:Lcom/google/ads/g$a;

    .line 25
    new-instance v0, Lcom/google/ads/g$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/g$a;->c:Lcom/google/ads/g$a;

    .line 28
    new-instance v0, Lcom/google/ads/g$a;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/google/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/g$a;->d:Lcom/google/ads/g$a;

    .line 31
    new-instance v0, Lcom/google/ads/g$a;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/google/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/g$a;->e:Lcom/google/ads/g$a;

    .line 34
    new-instance v0, Lcom/google/ads/g$a;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/g$a;->f:Lcom/google/ads/g$a;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/ads/g$a;

    sget-object v1, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/g$a;->b:Lcom/google/ads/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/g$a;->c:Lcom/google/ads/g$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/g$a;->d:Lcom/google/ads/g$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/g$a;->e:Lcom/google/ads/g$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/g$a;->f:Lcom/google/ads/g$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/g$a;->g:[Lcom/google/ads/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/g$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/google/ads/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/g$a;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/g$a;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/ads/g$a;->g:[Lcom/google/ads/g$a;

    invoke-virtual {v0}, [Lcom/google/ads/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/g$a;

    return-object v0
.end method
