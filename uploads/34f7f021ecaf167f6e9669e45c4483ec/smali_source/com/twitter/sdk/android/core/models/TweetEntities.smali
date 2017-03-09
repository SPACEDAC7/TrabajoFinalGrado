.class public Lcom/twitter/sdk/android/core/models/TweetEntities;
.super Ljava/lang/Object;
.source "TweetEntities.java"


# instance fields
.field public final hashtags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hashtags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/HashtagEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final media:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final urls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/UrlEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final userMentions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_mentions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MentionEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/UrlEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MentionEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/HashtagEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/UrlEntity;>;"
    .local p2, "userMentions":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MentionEntity;>;"
    .local p3, "media":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    .local p4, "hashtags":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/HashtagEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/models/TweetEntities;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->urls:Ljava/util/List;

    .line 57
    invoke-direct {p0, p2}, Lcom/twitter/sdk/android/core/models/TweetEntities;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->userMentions:Ljava/util/List;

    .line 58
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/core/models/TweetEntities;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    .line 59
    invoke-direct {p0, p4}, Lcom/twitter/sdk/android/core/models/TweetEntities;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->hashtags:Ljava/util/List;

    .line 60
    return-void
.end method

.method private getSafeList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_5

    .line 66
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method
