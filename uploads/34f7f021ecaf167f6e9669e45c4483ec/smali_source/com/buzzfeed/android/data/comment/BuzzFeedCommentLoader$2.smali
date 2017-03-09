.class Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzFeedCommentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->getBuzzFeedComments(Lcom/buzzfeed/toolkit/content/PostContent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$buzzId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iput-object p2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$buzzId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$TAG:Ljava/lang/String;

    const-string v1, "Error fetching comments"

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1102(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 245
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 237
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Response Error"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1000(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090137

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 239
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 11
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 195
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_bd

    .line 197
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "comments response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "paging"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 200
    .local v3, "pagingInfo":Lorg/json/JSONObject;
    if-eqz v3, :cond_97

    .line 201
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const-string v5, "next"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore:Z
    invoke-static {v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$502(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 202
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const-string v5, "current"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->page:I
    invoke-static {v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$602(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;I)I

    .line 203
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->page:I
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$600(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)I

    move-result v4

    if-ne v4, v7, :cond_59

    .line 204
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const-string v5, "cb"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->version:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$702(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$800(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 210
    .local v2, "newStart":I
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # invokes: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->parseBuzzFeedComments(Lorg/json/JSONObject;)V
    invoke-static {v4, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$900(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Lorg/json/JSONObject;)V

    .line 211
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$200(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/CommentListCache;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$buzzId:Ljava/lang/String;

    iget-object v6, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$800(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/buzzfeed/android/data/comment/CommentListCache;->putCommentList(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v4

    if-eqz v4, :cond_8c

    .line 213
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onCommentLoadComplete(ZII)V
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_8c} :catch_9e
    .catchall {:try_start_2 .. :try_end_8c} :catchall_f3

    .line 227
    .end local v2    # "newStart":I
    .end local v3    # "pagingInfo":Lorg/json/JSONObject;
    :cond_8c
    :goto_8c
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z
    invoke-static {v4, v8}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1102(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 231
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_91
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z
    invoke-static {v4, v8}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1102(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 232
    return-void

    .line 207
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "pagingInfo":Lorg/json/JSONObject;
    :cond_97
    :try_start_97
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const/4 v5, 0x0

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore:Z
    invoke-static {v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$502(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_9d} :catch_9e
    .catchall {:try_start_97 .. :try_end_9d} :catchall_f3

    goto :goto_59

    .line 223
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "pagingInfo":Lorg/json/JSONObject;
    :catch_9e
    move-exception v0

    .line 224
    .local v0, "e":Lorg/json/JSONException;
    :try_start_9f
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$TAG:Ljava/lang/String;

    const-string v5, "error"

    invoke-static {v4, v5, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1000(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090137

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_b7
    .catchall {:try_start_9f .. :try_end_b7} :catchall_f3

    .line 227
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z
    invoke-static {v4, v8}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1102(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    goto :goto_91

    .line 217
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_bd
    :try_start_bd
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->val$TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success value was false; response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v4

    if-eqz v4, :cond_8c

    .line 219
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->commentsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$800(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onCommentLoadComplete(ZII)V
    :try_end_f2
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_f2} :catch_9e
    .catchall {:try_start_bd .. :try_end_f2} :catchall_f3

    goto :goto_8c

    .line 227
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catchall_f3
    move-exception v4

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$2;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mIsLoading:Z
    invoke-static {v5, v8}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$1102(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    throw v4
.end method
