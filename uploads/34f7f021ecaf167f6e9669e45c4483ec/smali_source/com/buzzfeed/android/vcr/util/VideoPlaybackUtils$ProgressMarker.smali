.class public final enum Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;
.super Ljava/lang/Enum;
.source "VideoPlaybackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressMarker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

.field public static final enum FINISHED:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

.field public static final enum FIRST_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

.field public static final enum MIDPOINT:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

.field public static final enum START:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

.field public static final enum THIRD_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;


# instance fields
.field public final percentage:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    const-string v1, "START"

    invoke-direct {v0, v1, v3, v3}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->START:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 16
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    const-string v1, "FIRST_QUARTILE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v4, v2}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->FIRST_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 17
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    const-string v1, "MIDPOINT"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v5, v2}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->MIDPOINT:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 18
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    const-string v1, "THIRD_QUARTILE"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v6, v2}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->THIRD_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 19
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    const-string v1, "FINISHED"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->FINISHED:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    sget-object v1, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->START:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->FIRST_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->MIDPOINT:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->THIRD_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->FINISHED:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    aput-object v1, v0, v7

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->$VALUES:[Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "percentage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->percentage:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->$VALUES:[Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    return-object v0
.end method
