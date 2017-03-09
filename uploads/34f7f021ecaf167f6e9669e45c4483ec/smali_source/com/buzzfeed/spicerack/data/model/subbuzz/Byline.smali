.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;
.super Ljava/lang/Object;
.source "Byline.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/AuthorContent;
.implements Ljava/io/Serializable;


# instance fields
.field avatar:Ljava/lang/String;

.field bio:Ljava/lang/String;

.field descriptionId:Ljava/lang/String;

.field descriptionVisual:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field facebookPageUrl:Ljava/lang/String;

.field id:Ljava/lang/String;

.field title:Ljava/lang/String;

.field twitterPageUrl:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->descriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionVisual()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->descriptionVisual:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookPageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->facebookPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterPageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->twitterPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->username:Ljava/lang/String;

    return-object v0
.end method
