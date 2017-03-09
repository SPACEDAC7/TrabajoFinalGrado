.class public final Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/TwitterCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;
    }
.end annotation


# instance fields
.field public final position:Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field public final timelineId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeline_id"
    .end annotation
.end field

.field public final timelineItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;Ljava/util/List;)V
    .registers 4
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "position"    # Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, "timelines":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;->timelineId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;->position:Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;

    .line 75
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;->timelineItems:Ljava/util/List;

    .line 76
    return-void
.end method
