.class public abstract Lcom/buzzfeed/toolkit/content/BaseLoader;
.super Ljava/lang/Object;
.source "BaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

.field protected mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

.field protected mPage:I

.field protected mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/BaseLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BaseLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BaseLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->cancel()V

    .line 33
    :cond_9
    return-void
.end method

.method public getLocalFlowList()Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/BaseLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    return-object v0
.end method

.method public abstract hasMorePages()Z
.end method

.method public abstract load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
