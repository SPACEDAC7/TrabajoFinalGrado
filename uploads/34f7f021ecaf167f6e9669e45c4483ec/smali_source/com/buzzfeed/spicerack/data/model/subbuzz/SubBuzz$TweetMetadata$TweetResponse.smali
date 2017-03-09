.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;
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
    name = "TweetResponse"
.end annotation


# instance fields
.field createdAt:Ljava/lang/String;

.field entities:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;

.field name:Ljava/lang/String;

.field profileImageUrl:Ljava/lang/String;

.field screenName:Ljava/lang/String;

.field show:Z

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getEntities()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->entities:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetEntities;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isShow()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->show:Z

    return v0
.end method
