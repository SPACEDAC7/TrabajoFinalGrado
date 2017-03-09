.class public Lcom/buzzfeed/showx/showpage/data/model/EmptySubscribeContent;
.super Ljava/lang/Object;
.source "EmptySubscribeContent.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/Content;


# static fields
.field private static final CONTENT_ID:Ljava/lang/String; = "show_subscribe_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "show_subscribe_id"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 28
    return-void
.end method
