.class final enum Lcom/comscore/streaming/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AudioContent:Lcom/comscore/streaming/p;

.field public static final enum None:Lcom/comscore/streaming/p;

.field public static final enum VideoContent:Lcom/comscore/streaming/p;

.field private static final synthetic a:[Lcom/comscore/streaming/p;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/comscore/streaming/p;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/comscore/streaming/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/p;->None:Lcom/comscore/streaming/p;

    new-instance v0, Lcom/comscore/streaming/p;

    const-string v1, "AudioContent"

    invoke-direct {v0, v1, v3}, Lcom/comscore/streaming/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/p;->AudioContent:Lcom/comscore/streaming/p;

    new-instance v0, Lcom/comscore/streaming/p;

    const-string v1, "VideoContent"

    invoke-direct {v0, v1, v4}, Lcom/comscore/streaming/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/p;->VideoContent:Lcom/comscore/streaming/p;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/comscore/streaming/p;

    sget-object v1, Lcom/comscore/streaming/p;->None:Lcom/comscore/streaming/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/comscore/streaming/p;->AudioContent:Lcom/comscore/streaming/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/streaming/p;->VideoContent:Lcom/comscore/streaming/p;

    aput-object v1, v0, v4

    sput-object v0, Lcom/comscore/streaming/p;->a:[Lcom/comscore/streaming/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/p;
    .registers 2

    const-class v0, Lcom/comscore/streaming/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/p;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/p;
    .registers 1

    sget-object v0, Lcom/comscore/streaming/p;->a:[Lcom/comscore/streaming/p;

    invoke-virtual {v0}, [Lcom/comscore/streaming/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/p;

    return-object v0
.end method
