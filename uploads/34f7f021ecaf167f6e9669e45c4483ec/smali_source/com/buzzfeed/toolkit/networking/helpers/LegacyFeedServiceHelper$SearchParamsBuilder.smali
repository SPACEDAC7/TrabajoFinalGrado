.class public final Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;
.super Ljava/lang/Object;
.source "LegacyFeedServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchParamsBuilder"
.end annotation


# static fields
.field private static final MOBILE_APP_PARAM_KEY:Ljava/lang/String; = "s"

.field private static final MOBILE_APP_PARAM_VALUE:Ljava/lang/String; = "mobile_app"

.field private static final MOBILE_SEARCH_QUERY_PARAM_KEY:Ljava/lang/String; = "q"


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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;->mParamMap:Ljava/util/HashMap;

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
    .line 85
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "s"

    const-string v2, "mobile_app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;
    .registers 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object p0
.end method
