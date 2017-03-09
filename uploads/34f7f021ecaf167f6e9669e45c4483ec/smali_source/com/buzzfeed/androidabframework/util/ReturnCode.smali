.class public final enum Lcom/buzzfeed/androidabframework/util/ReturnCode;
.super Ljava/lang/Enum;
.source "ReturnCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/androidabframework/util/ReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum FailedToLoadCachedData:Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum FailedToLoadExperimentList:Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum FailedToLoadRemoteJson:Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum NoExperiments:Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum NoNetworkConnection:Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum NoUserId:Lcom/buzzfeed/androidabframework/util/ReturnCode;

.field public static final enum SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "SucceededNormally"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 8
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "FailedToLoadExperimentList"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadExperimentList:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 9
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "FailedToLoadCachedData"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadCachedData:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 10
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "FailedToLoadRemoteJson"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadRemoteJson:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 11
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "NoNetworkConnection"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoNetworkConnection:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 12
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "NoUserId"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoUserId:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 13
    new-instance v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    const-string v1, "NoExperiments"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/androidabframework/util/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoExperiments:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/buzzfeed/androidabframework/util/ReturnCode;

    sget-object v1, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadExperimentList:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadCachedData:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadRemoteJson:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoNetworkConnection:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoUserId:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->NoExperiments:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->$VALUES:[Lcom/buzzfeed/androidabframework/util/ReturnCode;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/buzzfeed/androidabframework/util/ReturnCode;->$VALUES:[Lcom/buzzfeed/androidabframework/util/ReturnCode;

    invoke-virtual {v0}, [Lcom/buzzfeed/androidabframework/util/ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/androidabframework/util/ReturnCode;

    return-object v0
.end method
