.class Lcom/buzzfeed/toolkit/networking/NetworkConfig$NetworkLogger;
.super Ljava/lang/Object;
.source "NetworkConfig.java"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/networking/NetworkConfig;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/toolkit/networking/NetworkConfig;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$NetworkLogger;->this$0:Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/toolkit/networking/NetworkConfig;Lcom/buzzfeed/toolkit/networking/NetworkConfig$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/toolkit/networking/NetworkConfig;
    .param p2, "x1"    # Lcom/buzzfeed/toolkit/networking/NetworkConfig$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$NetworkLogger;-><init>(Lcom/buzzfeed/toolkit/networking/NetworkConfig;)V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "NetworkLogger.log"

    invoke-static {v0, p1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
