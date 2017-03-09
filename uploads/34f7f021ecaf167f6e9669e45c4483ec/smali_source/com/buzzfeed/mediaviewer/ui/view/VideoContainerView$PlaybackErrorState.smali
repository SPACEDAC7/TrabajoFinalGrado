.class public final enum Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;
.super Ljava/lang/Enum;
.source "VideoContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackErrorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

.field public static final enum NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

.field public static final enum OFFLINE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

.field public static final enum VIDEO_PLAYBACK:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    new-instance v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    const-string v1, "VIDEO_PLAYBACK"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->VIDEO_PLAYBACK:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    new-instance v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->OFFLINE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    sget-object v1, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->VIDEO_PLAYBACK:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->OFFLINE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->$VALUES:[Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toEnum(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 44
    :goto_4
    return-object v1

    .line 43
    :catch_5
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->$VALUES:[Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {v0}, [Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    return-object v0
.end method
