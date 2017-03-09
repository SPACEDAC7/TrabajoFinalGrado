.class final Lcom/buzzfeed/android/experiment/DummyABTest$1;
.super Ljava/lang/Object;
.source "DummyABTest.java"

# interfaces
.implements Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/experiment/DummyABTest;->shouldDoSomething()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 5
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    const/4 v2, 0x0

    .line 39
    # invokes: Lcom/buzzfeed/android/experiment/DummyABTest;->setStatus(Z)V
    invoke-static {v2}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$000(Z)V

    .line 40
    # getter for: Lcom/buzzfeed/android/experiment/DummyABTest;->sFirstRun:Z
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$100()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 41
    # getter for: Lcom/buzzfeed/android/experiment/DummyABTest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dummy A/B Experiment: disabled"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_13
    # setter for: Lcom/buzzfeed/android/experiment/DummyABTest;->sFirstRun:Z
    invoke-static {v2}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$102(Z)Z

    .line 44
    return-void
.end method

.method public initialExecuteBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 8
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 48
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    # getter for: Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_CATEGORY:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$300()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_ACTION:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$400()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_LABEL_CONTROL:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->access$500()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 49
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackABeagleExperimentStatus(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 51
    return-void
.end method
