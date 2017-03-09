.class public final enum Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;
.super Ljava/lang/Enum;
.source "WeaverConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

.field public static final enum PROD:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

.field public static final enum STAGE:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->PROD:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    new-instance v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    const-string v1, "STAGE"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->STAGE:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    sget-object v1, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->PROD:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->STAGE:Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->$VALUES:[Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->$VALUES:[Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig$Environment;

    return-object v0
.end method
