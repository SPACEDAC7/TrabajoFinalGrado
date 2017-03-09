.class public final Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;
.super Ljava/lang/Object;
.source "LegacyFeedServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryParamsBuilder"
.end annotation


# static fields
.field private static final COUNTRY_PARAM:Ljava/lang/String; = "country"

.field private static final KEY_NO_CACHE:Ljava/lang/String; = "no_cache"

.field private static final PAGE_PARAM:Ljava/lang/String; = "p"


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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .registers 2
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
    .line 62
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;
    .registers 4
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object p0
.end method

.method public noCache(Z)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;
    .registers 5
    .param p1, "refresh"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "no_cache"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_e
    return-object p0
.end method

.method public page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;
    .registers 4
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object p0
.end method
