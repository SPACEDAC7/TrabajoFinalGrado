.class public Lcom/buzzfeed/android/data/Buzz$Contributor;
.super Ljava/lang/Object;
.source "Buzz.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contributor"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x704dcde51bc3a921L


# instance fields
.field private bylineDesc:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

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
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 98
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

    .line 141
    if-ne p0, p1, :cond_5

    .line 153
    :cond_4
    :goto_4
    return v1

    .line 142
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    move-object v0, p1

    .line 144
    check-cast v0, Lcom/buzzfeed/android/data/Buzz$Contributor;

    .line 145
    .local v0, "contributor":Lcom/buzzfeed/android/data/Buzz$Contributor;
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1a
    move v1, v2

    .line 146
    goto :goto_4

    .line 145
    :cond_1c
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 147
    :cond_20
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_2e
    move v1, v2

    .line 148
    goto :goto_4

    .line 147
    :cond_30
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    if-nez v3, :cond_2e

    .line 149
    :cond_34
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    :cond_42
    move v1, v2

    .line 150
    goto :goto_4

    .line 149
    :cond_44
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    if-nez v3, :cond_42

    .line 151
    :cond_48
    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_56
    move v1, v2

    .line 152
    goto :goto_4

    .line 151
    :cond_58
    iget-object v3, v0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    if-eqz v3, :cond_4

    goto :goto_56
.end method

.method public getBylineDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

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
    .line 132
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    return-object v0
.end method

.method public getUserPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 159
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 160
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    if-eqz v3, :cond_33

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->hashCode()I

    move-result v1

    :cond_33
    add-int v0, v2, v1

    .line 162
    return v0

    .end local v0    # "result":I
    :cond_36
    move v0, v1

    .line 158
    goto :goto_b

    .restart local v0    # "result":I
    :cond_38
    move v2, v1

    .line 159
    goto :goto_17

    :cond_3a
    move v2, v1

    .line 160
    goto :goto_25
.end method

.method public setBylineDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "bylineDesc"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    .line 129
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
    .line 136
    .local p1, "userImages":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    .line 137
    return-void
.end method

.method public setUserPage(Ljava/lang/String;)V
    .registers 2
    .param p1, "userPage"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contributor{, userPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bylineDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->bylineDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Buzz$Contributor;->userImages:Ljava/util/Stack;

    .line 171
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->printList(Ljava/util/AbstractList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
