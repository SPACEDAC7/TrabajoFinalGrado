.class public Lcom/buzzfeed/spicerack/utils/FacebookShare;
.super Ljava/lang/Object;
.source "FacebookShare.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private final mFacebookShareEngine:Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/buzzfeed/spicerack/utils/FacebookShare;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "facebookShareEngine"    # Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p3, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mFacebookShareEngine:Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;

    .line 43
    return-void
.end method


# virtual methods
.method public shareFacebookContent(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 9
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "title":Ljava/lang/String;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mFacebookShareEngine:Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mActivity:Landroid/app/Activity;

    .line 65
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v4

    invoke-interface {p1, v4}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, p2

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public shareFacebookFromJSON(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "shareJson"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "name":Ljava/lang/String;
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "description":Ljava/lang/String;
    const-string v0, "link"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "link":Ljava/lang/String;
    const-string v0, "picture"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "picture":Ljava/lang/String;
    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    if-eqz v4, :cond_20

    if-nez v5, :cond_28

    .line 52
    :cond_20
    sget-object v0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->TAG:Ljava/lang/String;

    const-string v1, "Invalid share facebook model"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_27
    return-void

    .line 56
    :cond_28
    iget-object v0, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mFacebookShareEngine:Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/utils/FacebookShare;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
