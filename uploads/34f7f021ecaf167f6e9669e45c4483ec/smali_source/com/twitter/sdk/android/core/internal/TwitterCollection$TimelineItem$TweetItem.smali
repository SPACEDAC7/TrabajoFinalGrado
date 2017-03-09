.class public final Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TweetItem"
.end annotation


# instance fields
.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;->id:Ljava/lang/Long;

    .line 138
    return-void
.end method
