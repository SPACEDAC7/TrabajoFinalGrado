.class public Lcom/buzzfeed/android/data/FlowItem;
.super Ljava/lang/Object;
.source "FlowItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/FlowItem$Content;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_AD:Ljava/lang/String; = "ad"

.field public static final TYPE_BUZZ:Ljava/lang/String; = "buzz"

.field private static final serialVersionUID:J = -0x60f92217ce57ae6cL


# instance fields
.field private content:Lcom/buzzfeed/android/data/FlowItem$Content;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/android/data/FlowItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/FlowItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/buzzfeed/android/data/FlowItem$Content;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/buzzfeed/android/data/FlowItem$Content;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    .line 40
    return-void
.end method

.method public static createBuzzAdContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/buzzfeed/android/data/FlowItem$Content;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/buzzfeed/android/data/BuzzAd;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/BuzzAd;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "buzz":Lcom/buzzfeed/android/data/FlowItem$Content;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/data/FlowItem$Content;->parse(Lorg/json/JSONObject;)V

    .line 145
    return-object v0
.end method

.method public static createBuzzContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/buzzfeed/android/data/FlowItem$Content;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/buzzfeed/android/data/Buzz;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/Buzz;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "buzz":Lcom/buzzfeed/android/data/FlowItem$Content;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/data/FlowItem$Content;->parse(Lorg/json/JSONObject;)V

    .line 132
    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/buzzfeed/android/data/FlowItem;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/android/data/FlowItem;->parse(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/buzzfeed/android/data/FlowItem;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/buzzfeed/android/data/FlowItem;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/android/data/FlowItem;->parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/buzzfeed/android/data/FlowItem;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/buzzfeed/android/data/FlowItem;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "allowAds"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 105
    if-eqz p3, :cond_2f

    const-string v1, "ad"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz p1, :cond_2f

    const-string/jumbo v1, "user_ad"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 106
    :cond_23
    const-string p2, "ad"

    .line 107
    invoke-static {p0, p1}, Lcom/buzzfeed/android/data/FlowItem;->createBuzzAdContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v0

    .line 117
    .local v0, "content":Lcom/buzzfeed/android/data/FlowItem$Content;
    :goto_29
    new-instance v1, Lcom/buzzfeed/android/data/FlowItem;

    invoke-direct {v1, p2, v0}, Lcom/buzzfeed/android/data/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/android/data/FlowItem$Content;)V

    .line 119
    .end local v0    # "content":Lcom/buzzfeed/android/data/FlowItem$Content;
    :goto_2e
    return-object v1

    .line 115
    :cond_2f
    invoke-static {p0, p1}, Lcom/buzzfeed/android/data/FlowItem;->createBuzzContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v0

    .restart local v0    # "content":Lcom/buzzfeed/android/data/FlowItem$Content;
    goto :goto_29

    .line 119
    .end local v0    # "content":Lcom/buzzfeed/android/data/FlowItem$Content;
    :cond_34
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/buzzfeed/android/data/FlowItem;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "allowAds"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 71
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/buzzfeed/android/data/FlowItem;->parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/buzzfeed/android/data/FlowItem;

    move-result-object v0

    .line 73
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p0, p1, :cond_5

    .line 249
    :cond_4
    :goto_4
    return v1

    .line 242
    :cond_5
    instance-of v3, p1, Lcom/buzzfeed/android/data/FlowItem;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 244
    check-cast v0, Lcom/buzzfeed/android/data/FlowItem;

    .line 246
    .local v0, "flowItem":Lcom/buzzfeed/android/data/FlowItem;
    iget-object v3, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    iget-object v4, v0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    invoke-interface {v3, v4}, Lcom/buzzfeed/android/data/FlowItem$Content;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    move v1, v2

    goto :goto_4

    .line 247
    :cond_1a
    iget-object v3, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getContent()Lcom/buzzfeed/android/data/FlowItem$Content;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    invoke-interface {v0}, Lcom/buzzfeed/android/data/FlowItem$Content;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 255
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    invoke-interface {v2}, Lcom/buzzfeed/android/data/FlowItem$Content;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 256
    return v0
.end method

.method public isTypeAd()Z
    .registers 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/FlowItem;->isTypeBuzz()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    const-string v1, "ad"

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTypeBuzz()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    instance-of v0, v0, Lcom/buzzfeed/android/data/Buzz;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    invoke-interface {v0}, Lcom/buzzfeed/android/data/FlowItem$Content;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowItem{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/FlowItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/FlowItem;->content:Lcom/buzzfeed/android/data/FlowItem$Content;

    .line 263
    invoke-interface {v1}, Lcom/buzzfeed/android/data/FlowItem$Content;->toString()Ljava/lang/String;

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
