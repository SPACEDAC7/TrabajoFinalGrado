.class public final enum Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;
.super Ljava/lang/Enum;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/util/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

.field public static final enum Mobile:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

.field public static final enum None:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

.field public static final enum WiFi:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->None:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    new-instance v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    const-string v1, "WiFi"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->WiFi:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    new-instance v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    const-string v1, "Mobile"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->Mobile:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    sget-object v1, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->None:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->WiFi:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->Mobile:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->$VALUES:[Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->$VALUES:[Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    return-object v0
.end method
