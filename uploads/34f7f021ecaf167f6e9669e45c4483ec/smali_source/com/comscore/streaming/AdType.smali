.class public final enum Lcom/comscore/streaming/AdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LinearLive:Lcom/comscore/streaming/AdType;

.field public static final enum LinearOnDemandMidRoll:Lcom/comscore/streaming/AdType;

.field public static final enum LinearOnDemandPostRoll:Lcom/comscore/streaming/AdType;

.field public static final enum LinearOnDemandPreRoll:Lcom/comscore/streaming/AdType;

.field public static final enum Other:Lcom/comscore/streaming/AdType;

.field private static final synthetic b:[Lcom/comscore/streaming/AdType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/comscore/streaming/AdType;

    const-string v1, "LinearOnDemandPreRoll"

    const-string v2, "a11"

    invoke-direct {v0, v1, v3, v2}, Lcom/comscore/streaming/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/AdType;->LinearOnDemandPreRoll:Lcom/comscore/streaming/AdType;

    new-instance v0, Lcom/comscore/streaming/AdType;

    const-string v1, "LinearOnDemandMidRoll"

    const-string v2, "a12"

    invoke-direct {v0, v1, v4, v2}, Lcom/comscore/streaming/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/AdType;->LinearOnDemandMidRoll:Lcom/comscore/streaming/AdType;

    new-instance v0, Lcom/comscore/streaming/AdType;

    const-string v1, "LinearOnDemandPostRoll"

    const-string v2, "a13"

    invoke-direct {v0, v1, v5, v2}, Lcom/comscore/streaming/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/AdType;->LinearOnDemandPostRoll:Lcom/comscore/streaming/AdType;

    new-instance v0, Lcom/comscore/streaming/AdType;

    const-string v1, "LinearLive"

    const-string v2, "a21"

    invoke-direct {v0, v1, v6, v2}, Lcom/comscore/streaming/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/AdType;->LinearLive:Lcom/comscore/streaming/AdType;

    new-instance v0, Lcom/comscore/streaming/AdType;

    const-string v1, "Other"

    const-string v2, "a00"

    invoke-direct {v0, v1, v7, v2}, Lcom/comscore/streaming/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/comscore/streaming/AdType;->Other:Lcom/comscore/streaming/AdType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/comscore/streaming/AdType;

    sget-object v1, Lcom/comscore/streaming/AdType;->LinearOnDemandPreRoll:Lcom/comscore/streaming/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/streaming/AdType;->LinearOnDemandMidRoll:Lcom/comscore/streaming/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/comscore/streaming/AdType;->LinearOnDemandPostRoll:Lcom/comscore/streaming/AdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/comscore/streaming/AdType;->LinearLive:Lcom/comscore/streaming/AdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/comscore/streaming/AdType;->Other:Lcom/comscore/streaming/AdType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/comscore/streaming/AdType;->b:[Lcom/comscore/streaming/AdType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/comscore/streaming/AdType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/AdType;
    .registers 2

    const-class v0, Lcom/comscore/streaming/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/AdType;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/AdType;
    .registers 1

    sget-object v0, Lcom/comscore/streaming/AdType;->b:[Lcom/comscore/streaming/AdType;

    invoke-virtual {v0}, [Lcom/comscore/streaming/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/AdType;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/AdType;->a:Ljava/lang/String;

    return-object v0
.end method
