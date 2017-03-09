.class public final enum Lcom/buzzfeed/androidabframework/util/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/androidabframework/util/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/androidabframework/util/Environment;

.field public static final enum Production:Lcom/buzzfeed/androidabframework/util/Environment;

.field public static final enum Stage:Lcom/buzzfeed/androidabframework/util/Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/buzzfeed/androidabframework/util/Environment;

    const-string v1, "Production"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/androidabframework/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/Environment;->Production:Lcom/buzzfeed/androidabframework/util/Environment;

    .line 8
    new-instance v0, Lcom/buzzfeed/androidabframework/util/Environment;

    const-string v1, "Stage"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/androidabframework/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/androidabframework/util/Environment;->Stage:Lcom/buzzfeed/androidabframework/util/Environment;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/androidabframework/util/Environment;

    sget-object v1, Lcom/buzzfeed/androidabframework/util/Environment;->Production:Lcom/buzzfeed/androidabframework/util/Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/androidabframework/util/Environment;->Stage:Lcom/buzzfeed/androidabframework/util/Environment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/androidabframework/util/Environment;->$VALUES:[Lcom/buzzfeed/androidabframework/util/Environment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/util/Environment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/util/Environment;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/androidabframework/util/Environment;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/buzzfeed/androidabframework/util/Environment;->$VALUES:[Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {v0}, [Lcom/buzzfeed/androidabframework/util/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/androidabframework/util/Environment;

    return-object v0
.end method
