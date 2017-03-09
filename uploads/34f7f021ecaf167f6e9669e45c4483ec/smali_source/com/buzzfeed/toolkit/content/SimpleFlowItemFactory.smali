.class public Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;
.super Ljava/lang/Object;
.source "SimpleFlowItemFactory.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/ContentFactory;


# static fields
.field public static final TYPE_BUZZ:Ljava/lang/String; = "buzz"


# instance fields
.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;->mType:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static createBuzzContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;
    .registers 2
    .param p0, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    new-instance v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 49
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0, p0}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public parseContent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Content;
    .registers 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    :cond_8
    const/4 v0, 0x0

    .line 32
    :goto_9
    return-object v0

    .line 29
    :cond_a
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 30
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;->createBuzzContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    goto :goto_9

    .line 32
    :cond_1d
    invoke-static {p1}, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;->createBuzzContent(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    goto :goto_9
.end method

.method public parseType(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;->mType:Ljava/lang/String;

    return-object v0
.end method
