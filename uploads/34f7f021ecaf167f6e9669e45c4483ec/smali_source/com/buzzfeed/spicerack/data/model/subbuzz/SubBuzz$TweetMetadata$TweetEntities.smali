.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TweetEntities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities$TweetUrl;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities$UserMention;
    }
.end annotation


# instance fields
.field hashTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities$TweetUrl;",
            ">;"
        }
    .end annotation
.end field

.field userMentions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities$UserMention;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;->hashTags:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities$TweetUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;->urls:Ljava/util/List;

    return-object v0
.end method

.method public getUserMentions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities$UserMention;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;->userMentions:Ljava/util/List;

    return-object v0
.end method
