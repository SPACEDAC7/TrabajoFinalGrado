.class Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2$1;
.super Ljava/lang/Object;
.source "ShrinkCellHeightAbTest.java"

# interfaces
.implements Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2$1;->this$0:Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 4
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 59
    const/4 v0, 0x1

    # invokes: Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->setUseSmallCells(Z)V
    invoke-static {v0}, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->access$000(Z)V

    .line 60
    # getter for: Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->sFirstRun:Z
    invoke-static {}, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->access$100()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 61
    # getter for: Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shrink Cell Height SDK Experiment: enabled"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_13
    const/4 v0, 0x0

    # setter for: Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->sFirstRun:Z
    invoke-static {v0}, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->access$102(Z)Z

    .line 64
    return-void
.end method

.method public initialExecuteBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 8
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 68
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2$1;->this$0:Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;

    iget-object v1, v1, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2$1;->this$0:Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;

    iget-object v2, v2, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;->val$context:Landroid/content/Context;

    const v3, 0x7f09020e

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2$1;->this$0:Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;

    iget-object v3, v3, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest$2;->val$context:Landroid/content/Context;

    const v4, 0x7f090210

    .line 70
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 71
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackABeagleExperimentStatus(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 73
    return-void
.end method
