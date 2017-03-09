.class public Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
.super Ljava/lang/Object;
.source "WeaverResponse.java"


# instance fields
.field private count:J

.field private createdAt:J

.field public embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_embedded"
    .end annotation
.end field

.field private next:Ljava/lang/String;

.field private previous:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
    .registers 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 25
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .line 26
    .local v1, "response":Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
    return-object v1
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->next:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
