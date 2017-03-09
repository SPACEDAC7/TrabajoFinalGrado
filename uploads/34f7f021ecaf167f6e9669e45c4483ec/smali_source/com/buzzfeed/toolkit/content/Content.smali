.class public interface abstract Lcom/buzzfeed/toolkit/content/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getFlowId()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract isValid()Z
.end method

.method public abstract parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
.end method
