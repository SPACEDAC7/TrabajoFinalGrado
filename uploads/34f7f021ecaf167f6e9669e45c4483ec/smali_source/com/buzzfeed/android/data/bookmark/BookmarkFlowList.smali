.class public Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;
.super Lcom/buzzfeed/toolkit/content/FlowList;
.source "BookmarkFlowList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    return-void
.end method


# virtual methods
.method protected getId(Lcom/buzzfeed/toolkit/content/Content;)Ljava/lang/String;
    .registers 3
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 13
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/Content;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
