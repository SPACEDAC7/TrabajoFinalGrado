.class public final Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
.super Ljava/lang/Object;
.source "ReactionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReactionRequestParamBuilder"
.end annotation


# static fields
.field static final ACTION_VOTE:Ljava/lang/String; = "vote"


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
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public badgeId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 4
    .param p1, "badgeId"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "badge_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
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
    .line 130
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "action"

    const-string/jumbo v2, "vote"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 4
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method public category(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "badge"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 104
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "multiple_result_format"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_19
    return-object p0
.end method

.method public sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 4
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "session_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public uri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object p0
.end method

.method public userToken(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 4
    .param p1, "userToken"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "user_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object p0
.end method
