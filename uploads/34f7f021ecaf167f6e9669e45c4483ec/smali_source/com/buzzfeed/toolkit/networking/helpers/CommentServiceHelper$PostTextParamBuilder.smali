.class public final Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
.super Ljava/lang/Object;
.source "CommentServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostTextParamBuilder"
.end annotation


# static fields
.field static final TEXT_CONTRIBUTION_BLURB:Ljava/lang/String; = "blurb"

.field static final TEXT_CONTRIBUTION_BUZZ_ID:Ljava/lang/String; = "buzz_id"

.field static final TEXT_CONTRIBUTION_FORM:Ljava/lang/String; = "form"

.field static final TEXT_CONTRIBUTION_PARENT_ID:Ljava/lang/String; = "parent_id"


# instance fields
.field private mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blurb(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    .registers 4
    .param p1, "blurb"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "blurb"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object p0
.end method

.method public build()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    .registers 4
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object p0
.end method

.method public form(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    .registers 4
    .param p1, "contributionForm"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "form"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
.end method

.method public parentId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    .registers 4
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "parent_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object p0
.end method

.method public sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    .registers 4
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "session_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object p0
.end method
