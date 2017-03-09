.class public final Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;
.super Ljava/lang/Object;
.source "AuthServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BfSignUpParamBuilder"
.end annotation


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

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

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
    .line 166
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "contribute"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public email(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;
    .registers 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "pw"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;
    .registers 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object p0
.end method
