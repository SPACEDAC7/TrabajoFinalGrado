.class public Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;
.super Landroid/os/AsyncTask;
.source "BuffetNativeAdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadAdBackfillTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;->mContext:Landroid/content/Context;

    .line 345
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdBackfillList(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->access$200(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Landroid/content/Context;)V

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method
