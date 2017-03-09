.class Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuffetNativeAdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

.field final synthetic val$ad:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iput-object p2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->val$ad:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

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
    .line 134
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v0, v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v0, v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget v1, v1, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$position:I

    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v2, v2, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdFromBackfill(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    .line 136
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
    .line 127
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 128
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v1, v1, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Response Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v1, v1, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget v2, v2, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$position:I

    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v3, v3, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdFromBackfill(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    .line 130
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v3, v3, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->val$ad:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->buildNativeInlineAd(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Lorg/json/JSONObject;)Lcom/buzzfeed/ads/model/NativeInlineAd;
    invoke-static {v3, v4, v5}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->access$000(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Lorg/json/JSONObject;)Lcom/buzzfeed/ads/model/NativeInlineAd;

    move-result-object v2

    .line 117
    .local v2, "inlineAd":Lcom/buzzfeed/ads/model/NativeInlineAd;
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 118
    .local v0, "adFlowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v3, v3, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    iget-object v4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget v4, v4, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$position:I

    invoke-interface {v3, v4, v0}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;->onAdLoaded(ILcom/buzzfeed/toolkit/content/FlowItem;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26

    .line 123
    .end local v0    # "adFlowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v2    # "inlineAd":Lcom/buzzfeed/ads/model/NativeInlineAd;
    :goto_25
    return-void

    .line 119
    :catch_26
    move-exception v1

    .line 120
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v3, v3, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$TAG:Ljava/lang/String;

    const-string v4, "Unable to parse ad"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v3, v3, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget v4, v4, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$position:I

    iget-object v5, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;->this$1:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;

    iget-object v5, v5, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdFromBackfill(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    goto :goto_25
.end method
