.class Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "SpiceMill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->executeRequest(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

.field final synthetic val$listener:Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->this$0:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->val$listener:Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCallCanceled()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;->onCallCanceled()V

    .line 106
    # getter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Request Canceled"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->this$0:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v0, v1}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$002(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 108
    return-void
.end method

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
    .line 98
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    # getter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Request Failure"

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->val$listener:Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;->onError()V

    .line 100
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->this$0:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v0, v1}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$002(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 101
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
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
    .line 90
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 91
    .local v0, "httpError":Ljava/lang/Exception;
    # getter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network Error: "

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->val$listener:Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;->onError()V

    .line 93
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->this$0:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v1, v2}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$002(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 94
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->fromJson(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    move-result-object v0

    .line 84
    .local v0, "spiceItem":Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->val$listener:Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    invoke-interface {v1, v0}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;->onSuccess(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V

    .line 85
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;->this$0:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v1, v2}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->access$002(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 86
    return-void
.end method
