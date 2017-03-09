.class public final enum Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;
.super Ljava/lang/Enum;
.source "ABCacheTimeoutPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeOut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

.field public static final enum ONE_HOUR:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

.field public static final enum ONE_MINUTE:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;


# instance fields
.field private mMilliSecs:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    const-string v1, "ONE_HOUR"

    const-wide/32 v2, 0x36ee80

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->ONE_HOUR:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    .line 15
    new-instance v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    const-string v1, "ONE_MINUTE"

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->ONE_MINUTE:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    sget-object v1, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->ONE_HOUR:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->ONE_MINUTE:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    aput-object v1, v0, v5

    sput-object v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->$VALUES:[Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 6
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-wide p3, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->mMilliSecs:J

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->$VALUES:[Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    return-object v0
.end method


# virtual methods
.method public milliseconds()J
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->mMilliSecs:J

    return-wide v0
.end method
