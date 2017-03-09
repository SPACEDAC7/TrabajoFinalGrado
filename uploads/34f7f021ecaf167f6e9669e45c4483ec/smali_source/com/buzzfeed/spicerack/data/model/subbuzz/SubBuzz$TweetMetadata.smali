.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TweetMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;
    }
.end annotation


# instance fields
.field entities:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;

.field responseTo:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;

.field tweet:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntities()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;->entities:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;

    return-object v0
.end method

.method public getResponseTo()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;->responseTo:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;

    return-object v0
.end method

.method public getTweet()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;->tweet:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;

    return-object v0
.end method
