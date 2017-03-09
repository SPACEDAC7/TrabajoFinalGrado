.class public final Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;
.super Ljava/lang/Object;
.source "CommentServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryParamsBuilder"
.end annotation


# static fields
.field private static final CACHE_BUSTER_PARAM:Ljava/lang/String; = "cb"

.field private static final CONTRIBUTIONS:Ljava/lang/String; = "contributions"

.field private static final FACEBOOK_PAGE_PARAM:Ljava/lang/String; = "after"

.field private static final PAGE_PARAM:Ljava/lang/String; = "p"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "type"


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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

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
    .line 109
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    const-string v2, "contributions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public cacheBuster(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;
    .registers 4
    .param p1, "cb"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "cb"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object p0
.end method

.method public facebookPage(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;
    .registers 4
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "after"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;
    .registers 4
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p0
.end method
