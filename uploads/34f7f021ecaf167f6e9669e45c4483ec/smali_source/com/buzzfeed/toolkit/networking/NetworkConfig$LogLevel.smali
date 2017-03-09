.class public final enum Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
.super Ljava/lang/Enum;
.source "NetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

.field public static final enum BASIC:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

.field public static final enum BODY:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

.field public static final enum HEADERS:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

.field public static final enum NONE:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;


# instance fields
.field LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    const-string v1, "NONE"

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-direct {v0, v1, v3, v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;-><init>(Ljava/lang/String;ILokhttp3/logging/HttpLoggingInterceptor$Level;)V

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->NONE:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    .line 48
    new-instance v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    const-string v1, "BASIC"

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-direct {v0, v1, v4, v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;-><init>(Ljava/lang/String;ILokhttp3/logging/HttpLoggingInterceptor$Level;)V

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->BASIC:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    .line 49
    new-instance v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    const-string v1, "HEADERS"

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-direct {v0, v1, v5, v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;-><init>(Ljava/lang/String;ILokhttp3/logging/HttpLoggingInterceptor$Level;)V

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->HEADERS:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    .line 50
    new-instance v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    const-string v1, "BODY"

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-direct {v0, v1, v6, v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;-><init>(Ljava/lang/String;ILokhttp3/logging/HttpLoggingInterceptor$Level;)V

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->BODY:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->NONE:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->BASIC:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->HEADERS:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->BODY:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->$VALUES:[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILokhttp3/logging/HttpLoggingInterceptor$Level;)V
    .registers 4
    .param p3, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 56
    return-void
.end method

.method public static getLogLevelWithName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->values()[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    move-result-object v1

    .line 72
    .local v1, "levels":[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_18

    aget-object v0, v1, v2

    .line 73
    .local v0, "level":Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 77
    .end local v0    # "level":Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    :goto_14
    return-object v0

    .line 72
    .restart local v0    # "level":Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 77
    .end local v0    # "level":Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static getLogLevelWithOrdinal(I)Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    .registers 2
    .param p0, "position"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->values()[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static nameValues()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 84
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->values()[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    move-result-object v1

    .line 85
    .local v1, "levels":[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 86
    .local v2, "stringValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_16

    .line 87
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 89
    :cond_16
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->$VALUES:[Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    return-object v0
.end method
