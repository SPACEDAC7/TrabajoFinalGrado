.class final Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;
.super Ljava/lang/Object;
.source "FixedShareBarABTest.java"

# interfaces
.implements Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->getFixedShareBarVariant(Landroid/content/Context;)Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
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
    .line 25
    iput-object p1, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 3
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->Control:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    # setter for: Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    invoke-static {v0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->access$002(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;)Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    .line 29
    const-string v0, "Fixed Share Bar AB Experiment: Control"

    # invokes: Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->logStatus(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->access$100(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public initialExecuteBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    .registers 8
    .param p1, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 34
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;->val$context:Landroid/content/Context;

    const v3, 0x7f09020a

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;->val$context:Landroid/content/Context;

    const v4, 0x7f09020c

    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 38
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackABeagleExperimentStatus(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 40
    return-void
.end method
