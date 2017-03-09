.class public final Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;
.super Ljava/lang/Object;
.source "AuthServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleLoginParamBuilder"
.end annotation


# static fields
.field private static final GOOGLE_CLIENT_KEY:Ljava/lang/String; = "client"

.field private static final KEY_OTC:Ljava/lang/String; = "otc"


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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->mParamMap:Ljava/util/HashMap;

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
    .line 186
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "contribute"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "googleplus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public otc(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;
    .registers 4
    .param p1, "otc"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "otc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-object p0
.end method
