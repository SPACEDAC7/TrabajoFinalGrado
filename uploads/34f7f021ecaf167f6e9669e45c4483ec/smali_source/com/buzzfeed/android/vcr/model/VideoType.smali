.class public final enum Lcom/buzzfeed/android/vcr/model/VideoType;
.super Ljava/lang/Enum;
.source "VideoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/vcr/model/VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/vcr/model/VideoType;

.field public static final enum HLS:Lcom/buzzfeed/android/vcr/model/VideoType;

.field public static final enum NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

.field public static final enum OTHER:Lcom/buzzfeed/android/vcr/model/VideoType;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/buzzfeed/android/vcr/model/VideoType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/vcr/model/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    new-instance v0, Lcom/buzzfeed/android/vcr/model/VideoType;

    const-string v1, "HLS"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/vcr/model/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->HLS:Lcom/buzzfeed/android/vcr/model/VideoType;

    new-instance v0, Lcom/buzzfeed/android/vcr/model/VideoType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/vcr/model/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->OTHER:Lcom/buzzfeed/android/vcr/model/VideoType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/android/vcr/model/VideoType;

    sget-object v1, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/vcr/model/VideoType;->HLS:Lcom/buzzfeed/android/vcr/model/VideoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/vcr/model/VideoType;->OTHER:Lcom/buzzfeed/android/vcr/model/VideoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->$VALUES:[Lcom/buzzfeed/android/vcr/model/VideoType;

    .line 16
    const-class v0, Lcom/buzzfeed/android/vcr/model/VideoType;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->TAG:Ljava/lang/String;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static inferContentType(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;
    .registers 3
    .param p0, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    .line 33
    :goto_8
    return-object v0

    .line 24
    :cond_9
    const-string v0, ".mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 25
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->TAG:Ljava/lang/String;

    const-string v1, "MPEG-DASH is not currently supported."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    goto :goto_8

    .line 27
    :cond_1b
    const-string v0, ".ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 28
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->TAG:Ljava/lang/String;

    const-string v1, "Microsoft SmoothStreaming is not currently supported."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    goto :goto_8

    .line 30
    :cond_2d
    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 31
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->HLS:Lcom/buzzfeed/android/vcr/model/VideoType;

    goto :goto_8

    .line 33
    :cond_38
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->OTHER:Lcom/buzzfeed/android/vcr/model/VideoType;

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/buzzfeed/android/vcr/model/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/model/VideoType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/vcr/model/VideoType;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->$VALUES:[Lcom/buzzfeed/android/vcr/model/VideoType;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/vcr/model/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/vcr/model/VideoType;

    return-object v0
.end method
