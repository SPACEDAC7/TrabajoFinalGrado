.class public Lcom/buzzfeed/toolkit/content/FlowItem;
.super Ljava/lang/Object;
.source "FlowItem.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/Content;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private mContent:Lcom/buzzfeed/toolkit/content/Content;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    .line 34
    return-void
.end method


# virtual methods
.method public getContent()Lcom/buzzfeed/toolkit/content/Content;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/Content;->getFlowId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/Content;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/Content;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 38
    invoke-interface {p2, p1}, Lcom/buzzfeed/toolkit/content/ContentFactory;->parseType(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mType:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mType:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/buzzfeed/toolkit/content/ContentFactory;->parseContent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/FlowItem;->mContent:Lcom/buzzfeed/toolkit/content/Content;

    .line 40
    return-void
.end method
