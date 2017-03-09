.class Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzFeedCommentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->updateComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

.field final synthetic val$heart:Z


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iput-object p2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$heart:Z

    iput-object p4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 6
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
    .line 155
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contribute response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$heart:Z

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    # invokes: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->reportUpdateCommentFailure(ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    invoke-static {v0, v1, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$400(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V

    .line 158
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
    .line 146
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 147
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    const-string v2, "Error updating comment"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->successfulPost:Z
    invoke-static {v1, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$002(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 149
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iget-boolean v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$heart:Z

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    # invokes: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->reportUpdateCommentFailure(ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$400(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V

    .line 150
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contribute response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const-string/jumbo v5, "success"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_65

    :goto_2a
    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->successfulPost:Z
    invoke-static {v4, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$002(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 106
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->successfulPost:Z
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$000(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 107
    iget-boolean v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$heart:Z

    if-eqz v2, :cond_67

    .line 109
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->love()V

    .line 110
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 111
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    const-string v4, "heart_success"

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-interface {v2, v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onSuccess(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 121
    :cond_53
    :goto_53
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->mCommentListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$200(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/CommentListCache;

    move-result-object v2

    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBuzzId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/buzzfeed/android/data/comment/CommentListCache;->replaceComment(Lcom/buzzfeed/android/data/comment/Comment;Ljava/lang/String;)V

    .line 142
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    :cond_64
    :goto_64
    return-void

    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    :cond_65
    move v2, v3

    .line 104
    goto :goto_2a

    .line 115
    :cond_67
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->hate()V

    .line 116
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 117
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    const-string v4, "hate_success"

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-interface {v2, v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onSuccess(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_81} :catch_82

    goto :goto_53

    .line 137
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    :catch_82
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    const-string v4, "Error updating comment"

    invoke-static {v2, v4, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->successfulPost:Z
    invoke-static {v2, v3}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$002(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Z)Z

    .line 140
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iget-boolean v3, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$heart:Z

    iget-object v4, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    # invokes: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->reportUpdateCommentFailure(ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    invoke-static {v2, v3, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$400(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;ZLcom/buzzfeed/android/data/comment/BuzzFeedComment;)V

    goto :goto_64

    .line 123
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    :cond_99
    :try_start_99
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->errorMsg:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$302(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-boolean v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$heart:Z

    if-eqz v2, :cond_dc

    .line 125
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hearting comment failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->errorMsg:Ljava/lang/String;
    invoke-static {v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$300(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 127
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    const-string v4, "heart_failed"

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-interface {v2, v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onFailure(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V

    goto :goto_64

    .line 130
    :cond_dc
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hating comment failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->errorMsg:Ljava/lang/String;
    invoke-static {v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$300(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 132
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->this$0:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    # getter for: Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->uiCallback:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
    invoke-static {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->access$100(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;

    move-result-object v2

    const-string v4, "hate_failed"

    iget-object v5, p0, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$1;->val$comment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-interface {v2, v4, v5}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;->onFailure(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
    :try_end_10f
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_10f} :catch_82

    goto/16 :goto_64
.end method
