.class final enum Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;
.super Ljava/lang/Enum;
.source "VCRExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RendererBuildingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

.field public static final enum BUILDING:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

.field public static final enum BUILT:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

.field public static final enum IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    const-string v1, "BUILDING"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILDING:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    const-string v1, "BUILT"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILT:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILDING:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILT:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->$VALUES:[Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->$VALUES:[Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    return-object v0
.end method
