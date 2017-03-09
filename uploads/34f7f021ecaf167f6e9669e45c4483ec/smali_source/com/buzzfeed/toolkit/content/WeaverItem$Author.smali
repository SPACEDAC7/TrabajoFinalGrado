.class public Lcom/buzzfeed/toolkit/content/WeaverItem$Author;
.super Ljava/lang/Object;
.source "WeaverItem.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/AuthorContent;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/WeaverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Author"
.end annotation


# instance fields
.field private avatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Link;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 5

    .prologue
    .line 152
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->avatars:Ljava/util/List;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->avatars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 153
    iget-object v2, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->avatars:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    .line 154
    .local v1, "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    # getter for: Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->access$100(Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;)Ljava/util/HashMap;

    move-result-object v0

    .line 155
    .local v0, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "standard"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 156
    const-string v2, "standard"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .end local v0    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    :goto_29
    return-object v2

    .line 158
    .restart local v0    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    :cond_2a
    const-string v2, "big"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 159
    const-string v2, "big"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_29

    .line 161
    :cond_3b
    const-string v2, "small"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 162
    const-string v2, "small"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_29

    .line 164
    :cond_4c
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_29

    .line 166
    .end local v0    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    :cond_5b
    const-string v2, ""

    goto :goto_29
.end method

.method public getAvatars()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->avatars:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->links:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Author;->username:Ljava/lang/String;

    return-object v0
.end method
