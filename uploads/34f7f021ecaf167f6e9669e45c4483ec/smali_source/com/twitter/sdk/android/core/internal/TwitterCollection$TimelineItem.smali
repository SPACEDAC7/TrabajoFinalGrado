.class public Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/TwitterCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimelineItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;
    }
.end annotation


# instance fields
.field public final tweetItem:Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tweet"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;)V
    .registers 2
    .param p1, "tweetItem"    # Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;->tweetItem:Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem$TweetItem;

    .line 126
    return-void
.end method
