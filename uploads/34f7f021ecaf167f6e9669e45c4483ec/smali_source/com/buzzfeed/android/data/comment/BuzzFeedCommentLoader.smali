.class public Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
.super Ljava/lang/Object;
.source "BuzzFeedCommentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    }
.end annotation


# static fields
.field public static final BUZZFEED_COMMENTS:I = 0x0

.field public static final FACEBOOK_COMMENTS:I = 0x1

.field public static final FB_LIKE_FAIL:Ljava/lang/String; = "unlike_success"

.field public static final FB_LIKE_SUCCESS:Ljava/lang/String; = "like_success"

.field public static final HATE_FAILED:Ljava/lang/String; = "hate_failed"

.field public static final HATE_SUCCESS:Ljava/lang/String; = "hate_success"

.field public static final HEART_FAILED:Ljava/lang/String; = "heart_failed"

.field public static final HEART_SUCCESS:Ljava/lang/String; = "heart_success"

.field private static final TAG:Ljava/lang/String;

.field public static final TEXT_CONTRIBUTION_BUZZ_ID:Ljava/lang/String; = "buzz_id"

.field public static final TEXT_CONTRIBUTION_FORM:Ljava/lang/String; = "form"

.field public static final TEXT_CONTRIBUTION_PARENT_ID:Ljava/lang/String; = "parent_id"


# instance fields
.field private buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

.field private commentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;

.field private hasMore:Z

.field private mCommentListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

.field private mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

.field private mContext:Landroid/content/Context;

.field private volatile mIsLoading:Z

.field private next:Ljava/lang/String;

.field private page:I

.field private successfulPost:Z

.field private uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->page:I

    .line 36
    iput-boolean v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore:Z

    .line 41
    iput-boolean v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;

    .line 67
    invoke-static {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 68
    invoke-static {}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->getInstance()Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

    .line 69
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getCommentService()Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->successfulPost:Z

    return v0
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->successfulPost:Z

    return p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/CommentListCache;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->errorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->reportUpdateCommentFailure(ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V

    return-void
.end method

.method static synthetic access$502(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore:Z

    return p1
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->page:I

    return v0
.end method

.method static synthetic access$602(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->page:I

    return p1
.end method

.method static synthetic access$702(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->parseBuzzFeedComments(Lorg/json/JSONObject;)V

    return-void
.end method

.method private parseBuzzFeedComments(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "completeJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".parseComments"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "TAG":Ljava/lang/String;
    const-string v5, "comments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 257
    .local v2, "commentsJSONArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 258
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5e

    .line 259
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 260
    .local v4, "item":Lorg/json/JSONObject;
    new-instance v1, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 261
    .local v1, "comment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->isValid()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 262
    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 264
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Comment was not valid; skipping it: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 268
    .end local v1    # "comment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    :cond_5e
    return-void
.end method

.method private reportUpdateCommentFailure(ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    .registers 5
    .param p1, "heart"    # Z
    .param p2, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 166
    if-eqz p1, :cond_a

    .line 167
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    const-string v1, "heart_failed"

    invoke-interface {v0, v1, p2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onFailure(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 171
    :goto_9
    return-void

    .line 169
    :cond_a
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    const-string v1, "hate_failed"

    invoke-interface {v0, v1, p2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onFailure(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V

    goto :goto_9
.end method


# virtual methods
.method public getBuzzFeedComments(Lcom/buzzfeed/toolkit/content/PostContent;Z)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "nextPage"    # Z

    .prologue
    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getComments"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "TAG":Ljava/lang/String;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "buzzId":Ljava/lang/String;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z

    .line 182
    new-instance v2, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;-><init>()V

    .line 183
    .local v2, "paramsBuilder":Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_3a

    if-eqz p2, :cond_3a

    .line 185
    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->version:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->cacheBuster(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;

    move-result-object v5

    iget v6, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->page:I

    add-int/lit8 v6, v6, 0x1

    .line 186
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;

    .line 188
    :cond_3a
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 190
    .local v3, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;-><init>(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v4, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    invoke-virtual {v5, v1, v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->getComments(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 248
    return-void
.end method

.method public getCommentList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMore()Z
    .registers 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore:Z

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z

    return v0
.end method

.method public setListener(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    .line 74
    return-void
.end method

.method public updateComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Z)V
    .registers 9
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .param p2, "heart"    # Z

    .prologue
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".updateComment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;-><init>()V

    .line 86
    .local v2, "paramBuilder":Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    if-eqz p2, :cond_49

    .line 87
    const-string v4, "loves"

    invoke-virtual {v2, v4}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->form(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    .line 91
    :goto_21
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 92
    invoke-virtual {v4}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBuzzId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    move-result-object v4

    .line 94
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->parentId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    .line 96
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 98
    .local v3, "postTextParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;-><init>(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V

    .line 161
    .local v1, "callback":Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    invoke-virtual {v4, v3, v1}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->updateComment(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 163
    return-void

    .line 89
    .end local v1    # "callback":Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
    .end local v3    # "postTextParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_49
    const-string v4, "hates"

    invoke-virtual {v2, v4}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->form(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    goto :goto_21
.end method
