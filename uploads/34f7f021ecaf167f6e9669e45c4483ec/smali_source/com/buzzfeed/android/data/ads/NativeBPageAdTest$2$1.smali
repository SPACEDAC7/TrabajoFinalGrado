.class Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2$1;
.super Ljava/lang/Object;
.source "NativeBPageAdTest.java"

# interfaces
.implements Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2$1;->this$0:Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 4
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 64
    const/4 v0, 0x1

    # invokes: Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->setUseNativeBPageAds(Z)V
    invoke-static {v0}, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->access$000(Z)V

    .line 65
    sget-boolean v0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->sFirstRun:Z

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2$1;->this$0:Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    iget-object v0, v0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;->val$TAG:Ljava/lang/String;

    const-string v1, "Native BPage Ads Experiment: enabled"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->sFirstRun:Z

    .line 69
    return-void
.end method

.method public initialExecuteBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 8
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 73
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2$1;->this$0:Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    iget-object v1, v1, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2$1;->this$0:Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    iget-object v2, v2, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;->val$context:Landroid/content/Context;

    const v3, 0x7f090219

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2$1;->this$0:Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    iget-object v3, v3, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;->val$context:Landroid/content/Context;

    const v4, 0x7f09021b

    .line 75
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 76
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackABeagleExperimentStatus(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 78
    return-void
.end method
