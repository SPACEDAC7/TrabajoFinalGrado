.class public Lcom/buzzfeed/toolkit/content/Contributor;
.super Ljava/lang/Object;
.source "Contributor.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/AuthorContent;
.implements Lcom/buzzfeed/toolkit/content/Content;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final serialVersionUID:J


# instance fields
.field private bio:Ljava/lang/String;

.field private bylineDesc:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private facebook:Ljava/lang/String;

.field private flowItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private twitter:Ljava/lang/String;

.field private userImages:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userPage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/content/Contributor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-ne p0, p1, :cond_5

    .line 144
    :cond_4
    :goto_4
    return v1

    .line 133
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/buzzfeed/toolkit/content/Contributor;

    .line 136
    .local v0, "contributor":Lcom/buzzfeed/toolkit/content/Contributor;
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1a
    move v1, v2

    .line 137
    goto :goto_4

    .line 136
    :cond_1c
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 138
    :cond_20
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_2e
    move v1, v2

    .line 139
    goto :goto_4

    .line 138
    :cond_30
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    if-nez v3, :cond_2e

    .line 140
    :cond_34
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    :cond_42
    move v1, v2

    .line 141
    goto :goto_4

    .line 140
    :cond_44
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    if-nez v3, :cond_42

    .line 142
    :cond_48
    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    iget-object v4, v0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_56
    move v1, v2

    .line 143
    goto :goto_4

    .line 142
    :cond_58
    iget-object v3, v0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    if-eqz v3, :cond_4

    goto :goto_56
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Contributor;->getUserImages()Ljava/util/Stack;

    move-result-object v0

    .line 50
    .local v0, "userImages":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 51
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getBio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getBylineDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->flowItemList:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImages()Ljava/util/Stack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    return-object v0
.end method

.method public getUserPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 150
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 151
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 152
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    if-eqz v3, :cond_33

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->hashCode()I

    move-result v1

    :cond_33
    add-int v0, v2, v1

    .line 153
    return v0

    .end local v0    # "result":I
    :cond_36
    move v0, v1

    .line 149
    goto :goto_b

    .restart local v0    # "result":I
    :cond_38
    move v2, v1

    .line 150
    goto :goto_17

    :cond_3a
    move v2, v1

    .line 151
    goto :goto_25
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 171
    :try_start_0
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    .local v1, "userObject":Lorg/json/JSONObject;
    const-string v2, "bio"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/toolkit/content/Contributor;->setBio(Ljava/lang/String;)V

    .line 173
    const-string v2, "facebook_page_url"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/toolkit/content/Contributor;->setFacebook(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v2, "twitter_page_url"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/toolkit/content/Contributor;->setTwitter(Ljava/lang/String;)V

    .line 175
    const-string v2, "email"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/toolkit/content/Contributor;->setEmail(Ljava/lang/String;)V

    .line 176
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/toolkit/content/Contributor;->setId(Ljava/lang/String;)V

    .line 177
    const-string v2, "display_name"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/toolkit/content/Contributor;->setDisplayName(Ljava/lang/String;)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 181
    .end local v1    # "userObject":Lorg/json/JSONObject;
    :goto_3e
    return-void

    .line 178
    :catch_3f
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/buzzfeed/toolkit/content/Contributor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing Author flow JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 112
    return-void
.end method

.method public setBio(Ljava/lang/String;)V
    .registers 2
    .param p1, "bio"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bio:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setBylineDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "bylineDesc"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->email:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .registers 2
    .param p1, "facebook"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->facebook:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFlowList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->flowItemList:Ljava/util/List;

    .line 128
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->id:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .registers 2
    .param p1, "twitter"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->twitter:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUserImages(Ljava/util/Stack;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "userImages":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    .line 120
    return-void
.end method

.method public setUserPage(Ljava/lang/String;)V
    .registers 2
    .param p1, "userPage"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contributor{, userPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bylineDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->bylineDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facebook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->facebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/content/Contributor;->userImages:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
