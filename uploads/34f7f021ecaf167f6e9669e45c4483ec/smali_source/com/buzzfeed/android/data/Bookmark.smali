.class public Lcom/buzzfeed/android/data/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private mId:Ljava/lang/String;

.field private mJson:Ljava/lang/String;

.field private mTimestamp:J

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 99
    :cond_5
    :goto_5
    return v2

    .line 84
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/buzzfeed/android/data/Bookmark;

    .line 90
    .local v0, "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    iget-wide v4, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    iget-wide v6, v0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 93
    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    :cond_2b
    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    :cond_39
    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    :cond_47
    move v1, v2

    :cond_48
    :goto_48
    move v2, v1

    goto :goto_5

    .line 93
    :cond_4a
    iget-object v3, v0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    if-eqz v3, :cond_2b

    goto :goto_5

    .line 96
    :cond_4f
    iget-object v3, v0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    if-eqz v3, :cond_39

    goto :goto_5

    .line 99
    :cond_54
    iget-object v3, v0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    if-nez v3, :cond_47

    goto :goto_48
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 106
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 107
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 108
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    iget-wide v4, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 109
    return v0

    .end local v0    # "result":I
    :cond_35
    move v0, v1

    .line 105
    goto :goto_b

    .restart local v0    # "result":I
    :cond_37
    move v2, v1

    .line 106
    goto :goto_17
.end method

.method public setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Bookmark;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lcom/buzzfeed/android/data/Bookmark;
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setTimestamp(J)Lcom/buzzfeed/android/data/Bookmark;
    .registers 4
    .param p1, "timestamp"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    .line 76
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/buzzfeed/android/data/Bookmark;
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v2, 0x27

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bookmark{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Bookmark;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Bookmark;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Bookmark;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/android/data/Bookmark;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
