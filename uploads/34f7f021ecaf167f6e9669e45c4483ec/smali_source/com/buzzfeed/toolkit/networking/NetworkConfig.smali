.class public Lcom/buzzfeed/toolkit/networking/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;,
        Lcom/buzzfeed/toolkit/networking/NetworkConfig$NetworkLogger;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/buzzfeed/toolkit/networking/NetworkConfig;


# instance fields
.field private mHttpLoggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lcom/buzzfeed/toolkit/networking/NetworkConfig$NetworkLogger;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$NetworkLogger;-><init>(Lcom/buzzfeed/toolkit/networking/NetworkConfig;Lcom/buzzfeed/toolkit/networking/NetworkConfig$1;)V

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->mHttpLoggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/buzzfeed/toolkit/networking/NetworkConfig;
    .registers 2

    .prologue
    .line 15
    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->sInstance:Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    if-nez v0, :cond_13

    .line 16
    const-class v1, Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    monitor-enter v1

    .line 17
    :try_start_7
    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->sInstance:Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    if-nez v0, :cond_12

    .line 18
    new-instance v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->sInstance:Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    .line 20
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 22
    :cond_13
    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->sInstance:Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    return-object v0

    .line 20
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getHttpLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->mHttpLoggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method

.method public setLogLevel(Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;)V
    .registers 4
    .param p1, "logLevel"    # Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->mHttpLoggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    iget-object v1, p1, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 35
    return-void
.end method
