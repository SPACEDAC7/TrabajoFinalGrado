.class public final Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;
.super Ljava/lang/Object;
.source "AuthServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FbAuthParamBuilder"
.end annotation


# static fields
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final KEY_FACEBOOK_UID:Ljava/lang/String; = "facebook_uid"

.field private static final KEY_FB_USERNAME:Ljava/lang/String; = "fb_username"


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

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public accessToken(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;
    .registers 4
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
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
    .line 109
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public uID(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;
    .registers 4
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "facebook_uid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;
    .registers 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "fb_username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p0
.end method
