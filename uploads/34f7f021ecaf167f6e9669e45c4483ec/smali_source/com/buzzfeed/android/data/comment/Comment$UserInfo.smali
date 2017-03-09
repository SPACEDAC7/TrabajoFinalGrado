.class public Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/comment/Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private displayName:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
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

    .line 102
    if-ne p0, p1, :cond_5

    .line 120
    :cond_4
    :goto_4
    return v1

    .line 103
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 107
    .local v0, "userInfo":Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 108
    goto :goto_4

    .line 107
    :cond_26
    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 110
    :cond_2a
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    .line 111
    goto :goto_4

    .line 110
    :cond_3a
    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 113
    :cond_3e
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    :cond_4c
    move v1, v2

    .line 114
    goto :goto_4

    .line 113
    :cond_4e
    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    if-nez v3, :cond_4c

    .line 116
    :cond_52
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_60
    move v1, v2

    .line 117
    goto :goto_4

    .line 116
    :cond_62
    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_60
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeUserImg()Ljava/lang/String;
    .registers 6

    .prologue
    .line 76
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    const-string/jumbo v3, "static/images/public/defaults/user_large.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 77
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "dot":I
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "imgFormat":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .end local v0    # "dot":I
    .end local v1    # "imgFormat":Ljava/lang/String;
    :goto_3f
    return-object v2

    :cond_40
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    goto :goto_3f
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 126
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_33
    add-int v0, v2, v1

    .line 129
    return v0

    .end local v0    # "result":I
    :cond_36
    move v0, v1

    .line 125
    goto :goto_b

    .restart local v0    # "result":I
    :cond_38
    move v2, v1

    .line 126
    goto :goto_17

    :cond_3a
    move v2, v1

    .line 127
    goto :goto_25
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 144
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 145
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 146
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 147
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 148
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 149
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUserImg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public setUserImg(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    .registers 2
    .param p1, "userImg"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userImg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->userImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
