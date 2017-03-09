.class public Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
.super Lcom/buzzfeed/android/data/comment/Comment;
.source "BuzzFeedComment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buzzId:Ljava/lang/String;

.field private form:Ljava/lang/String;

.field private formattedTimestamp:Ljava/lang/String;

.field private hateCount:I

.field private loveCount:I

.field private score:Ljava/lang/String;

.field private userHated:Z

.field private userHearted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/comment/Comment;-><init>(Landroid/content/Context;)V

    .line 17
    iput-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated:Z

    .line 18
    iput-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formattedTimestamp:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/data/comment/Comment;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 17
    iput-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated:Z

    .line 18
    iput-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formattedTimestamp:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public displayHateCount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayLoveCount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->loveCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatTimeAdded()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/buzzfeed/android/data/comment/Comment;->formatTimeAdded()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formattedTimestamp:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formattedTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getBuzzId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->buzzId:Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->form:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedTimestamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formatTimeAdded()Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formattedTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getHateCount()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hateCount:I

    return v0
.end method

.method public getLoveCount()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->loveCount:I

    return v0
.end method

.method public getScore()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->score:Ljava/lang/String;

    return-object v0
.end method

.method public hate()V
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hateCount:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated:Z

    .line 158
    return-void
.end method

.method public isImgExpected()Z
    .registers 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "react_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isTextExpected()Z
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "react_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isValid()Z
    .registers 3

    .prologue
    .line 170
    invoke-super {p0}, Lcom/buzzfeed/android/data/comment/Comment;->isValid()Z

    move-result v0

    .line 171
    .local v0, "isValid":Z
    if-eqz v0, :cond_28

    .line 172
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBuzzId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBuzzId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 173
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getScore()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v0, 0x1

    .line 174
    :goto_27
    return v0

    .line 173
    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public love()V
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->loveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->loveCount:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted:Z

    .line 153
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "commentObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 31
    if-eqz p1, :cond_f0

    .line 32
    const-string v4, "blurb"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setBlurb(Ljava/lang/String;)V

    .line 33
    const-string v4, "buzz_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setBuzzId(Ljava/lang/String;)V

    .line 34
    const-string v4, "form"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setForm(Ljava/lang/String;)V

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "added"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setTimeAdded(Ljava/lang/String;)V

    .line 36
    const-string v4, "score"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setScore(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->isImgExpected()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 39
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setCommentImgUrl(Ljava/lang/String;)V

    .line 43
    :cond_53
    const-string v4, "parent_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 44
    const-string v4, "parent_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setParentCommentId(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment;

    .line 47
    :cond_64
    const-string v4, "love_count"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setLoveCount(I)V

    .line 48
    const-string v4, "hate_count"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setHateCount(I)V

    .line 51
    const-string v4, "children"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 52
    const-string v4, "children"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    .local v1, "jsonReplies":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_85
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_a9

    .line 54
    new-instance v2, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 55
    .local v2, "reply":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-virtual {v2, p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setParent(Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 56
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->isValid()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 57
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getReplies()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 63
    .end local v0    # "i":I
    .end local v1    # "jsonReplies":Lorg/json/JSONArray;
    .end local v2    # "reply":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    :cond_a9
    const-string/jumbo v4, "user_info"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    .local v3, "userInfoObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_f1

    .line 65
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 66
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setUserId(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 67
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setUserImg(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 68
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setUsername(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 73
    :goto_e7
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setCommentId(Ljava/lang/String;)V

    .line 75
    .end local v3    # "userInfoObj":Lorg/json/JSONObject;
    :cond_f0
    return-void

    .line 70
    .restart local v3    # "userInfoObj":Lorg/json/JSONObject;
    :cond_f1
    sget-object v4, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user_info object was not present in this comment obj. json: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setUserInfo(Lcom/buzzfeed/android/data/comment/Comment$UserInfo;)V

    goto :goto_e7
.end method

.method public setBuzzId(Ljava/lang/String;)V
    .registers 2
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->buzzId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setForm(Ljava/lang/String;)V
    .registers 2
    .param p1, "form"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->form:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setHateCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hateCount:I

    .line 148
    return-void
.end method

.method public setLoveCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->loveCount:I

    .line 140
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .registers 2
    .param p1, "score"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->score:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setTimeAdded(Ljava/lang/String;)V
    .registers 2
    .param p1, "initialTime"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/buzzfeed/android/data/comment/Comment;->setTimeAdded(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuzzFeedComment{buzzId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->buzzId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", form=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->form:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->score:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loveCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->loveCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formattedTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->formattedTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-super {p0}, Lcom/buzzfeed/android/data/comment/Comment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userHated()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated:Z

    return v0
.end method

.method public userHearted()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted:Z

    return v0
.end method
