.class final Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;
.super Ljava/lang/Object;
.source "ShareFabLabelABTest.java"

# interfaces
.implements Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/ShareFabLabelABTest;->shouldUseShareFabLabel(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 5
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    const/4 v2, 0x0

    .line 36
    # invokes: Lcom/buzzfeed/android/data/ShareFabLabelABTest;->setUseShareFabLabel(Z)V
    invoke-static {v2}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->access$000(Z)V

    .line 37
    # getter for: Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sFirstRun:Z
    invoke-static {}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->access$100()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    # getter for: Lcom/buzzfeed/android/data/ShareFabLabelABTest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Share Fab Label Experiment: disabled"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_13
    # setter for: Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sFirstRun:Z
    invoke-static {v2}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->access$102(Z)Z

    .line 41
    return-void
.end method

.method public initialExecuteBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 8
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 45
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;->val$context:Landroid/content/Context;

    const v3, 0x7f090207

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;->val$context:Landroid/content/Context;

    const v4, 0x7f090208

    .line 47
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 48
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackABeagleExperimentStatus(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 50
    return-void
.end method
