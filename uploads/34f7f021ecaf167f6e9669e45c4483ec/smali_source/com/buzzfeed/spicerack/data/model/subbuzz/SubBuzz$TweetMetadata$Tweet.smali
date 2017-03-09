.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;
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
    name = "Tweet"
.end annotation


# instance fields
.field createdAt:Ljava/lang/String;

.field fromUser:Ljava/lang/String;

.field fromUserIdStr:Ljava/lang/String;

.field fromUserName:Ljava/lang/String;

.field idStr:Ljava/lang/String;

.field inReplyToStatusIdStr:Ljava/lang/String;

.field profileImageUrl:Ljava/lang/String;

.field text:Ljava/lang/String;

.field toUser:Ljava/lang/String;

.field toUserIdStr:Ljava/lang/String;

.field toUserName:Ljava/lang/String;

.field utcOffset:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->fromUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserIdStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->fromUserIdStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->fromUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->idStr:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusIdStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->inReplyToStatusIdStr:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->toUser:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserIdStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->toUserIdStr:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->toUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcOffset()J
    .registers 3

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->utcOffset:J

    return-wide v0
.end method
