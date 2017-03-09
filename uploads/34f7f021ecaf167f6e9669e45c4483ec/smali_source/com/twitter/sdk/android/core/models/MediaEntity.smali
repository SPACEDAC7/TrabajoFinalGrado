.class public Lcom/twitter/sdk/android/core/models/MediaEntity;
.super Lcom/twitter/sdk/android/core/models/UrlEntity;
.source "MediaEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/models/MediaEntity$Size;,
        Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    }
.end annotation


# instance fields
.field public final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final idStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_str"
    .end annotation
.end field

.field public final mediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_url"
    .end annotation
.end field

.field public final mediaUrlHttps:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_url_https"
    .end annotation
.end field

.field public final sizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sizes"
    .end annotation
.end field

.field public final sourceStatusId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_status_id"
    .end annotation
.end field

.field public final sourceStatusIdStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_status_id_str"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public final videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;JLjava/lang/String;Ljava/lang/String;)V
    .registers 34
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "expandedUrl"    # Ljava/lang/String;
    .param p3, "displayUrl"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "id"    # J
    .param p8, "idStr"    # Ljava/lang/String;
    .param p9, "mediaUrl"    # Ljava/lang/String;
    .param p10, "mediaUrlHttps"    # Ljava/lang/String;
    .param p11, "sizes"    # Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .param p12, "sourceStatusId"    # J
    .param p14, "sourceStatusIdStr"    # Ljava/lang/String;
    .param p15, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Lcom/twitter/sdk/android/core/models/MediaEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/VideoInfo;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/VideoInfo;)V
    .registers 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "expandedUrl"    # Ljava/lang/String;
    .param p3, "displayUrl"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "id"    # J
    .param p8, "idStr"    # Ljava/lang/String;
    .param p9, "mediaUrl"    # Ljava/lang/String;
    .param p10, "mediaUrlHttps"    # Ljava/lang/String;
    .param p11, "sizes"    # Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .param p12, "sourceStatusId"    # J
    .param p14, "sourceStatusIdStr"    # Ljava/lang/String;
    .param p15, "type"    # Ljava/lang/String;
    .param p16, "videoInfo"    # Lcom/twitter/sdk/android/core/models/VideoInfo;

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/models/UrlEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    iput-wide p6, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->id:J

    .line 112
    iput-object p8, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->idStr:Ljava/lang/String;

    .line 113
    iput-object p9, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrl:Ljava/lang/String;

    .line 114
    iput-object p10, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    .line 115
    iput-object p11, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->sizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;

    .line 116
    iput-wide p12, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->sourceStatusId:J

    .line 117
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->sourceStatusIdStr:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    .line 120
    return-void
.end method
