.class public final Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;
.super Ljava/lang/Object;
.source "ReactionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CrsfTokenRequestParamBuilder"
.end annotation


# static fields
.field static final KEY_ACTION_VALUE:Ljava/lang/String; = "get_token"


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
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
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
    .line 148
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "action"

    const-string v2, "get_token"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "session_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object p0
.end method
