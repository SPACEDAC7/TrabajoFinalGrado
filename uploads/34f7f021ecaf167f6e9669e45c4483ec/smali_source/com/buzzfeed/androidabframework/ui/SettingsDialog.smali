.class public abstract Lcom/buzzfeed/androidabframework/ui/SettingsDialog;
.super Ljava/lang/Object;
.source "SettingsDialog.java"


# static fields
.field static final SETTINGS_BACK:Ljava/lang/String; = "Back"

.field static final SETTINGS_CLOSE:Ljava/lang/String; = "Close"

.field static final SETTINGS_EXPERIMENTS:Ljava/lang/String; = "Experiments"

.field static final SETTINGS_NO_EXPERIMENTS:Ljava/lang/String; = "No A/B Experiments"

.field static final SETTINGS_RESET:Ljava/lang/String; = "Reset"

.field static final SETTINGS_RESET_ALL:Ljava/lang/String; = "Reset All"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;Lcom/buzzfeed/androidabframework/data/Experiment;)Landroid/app/Dialog;
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentVariantListDialog(Landroid/content/Context;Lcom/buzzfeed/androidabframework/data/Experiment;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->experimentTemporarySettingsChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;)Landroid/app/Dialog;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentListDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createExperimentListDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v2

    .line 30
    .local v2, "experimentManager":Lcom/buzzfeed/androidabframework/controller/ExperimentManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getExperimentList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .local v0, "experimentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1f

    .line 33
    const-string v5, "No A/B Experiments"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 34
    const/4 v5, 0x0

    .line 77
    :goto_1e
    return-object v5

    .line 38
    :cond_1f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "experimentListBuilder":Landroid/app/AlertDialog$Builder;
    const-string v5, "Experiments"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 45
    .local v3, "experiments":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/buzzfeed/androidabframework/data/Experiment;

    invoke-virtual {v5}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 48
    :cond_45
    new-instance v5, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;-><init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    const-string v5, "Reset All"

    new-instance v6, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;

    invoke-direct {v6, p0, v0, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;-><init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    const-string v5, "Close"

    new-instance v6, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$3;

    invoke-direct {v6, p0}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$3;-><init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_1e
.end method

.method private createExperimentVariantListDialog(Landroid/content/Context;Lcom/buzzfeed/androidabframework/data/Experiment;)Landroid/app/Dialog;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "experiment"    # Lcom/buzzfeed/androidabframework/data/Experiment;

    .prologue
    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVariantList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .local v4, "variantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/androidabframework/data/Variant;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p2}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/CharSequence;

    .line 91
    .local v5, "variants":[Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 92
    .local v2, "selected":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_41

    .line 93
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/androidabframework/data/Variant;

    .line 94
    .local v3, "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/data/Variant;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 95
    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/data/Variant;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 96
    move v2, v1

    .line 92
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 99
    .end local v3    # "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    :cond_41
    new-instance v6, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;

    invoke-direct {v6, p0, v4, p2, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;-><init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Ljava/util/ArrayList;Lcom/buzzfeed/androidabframework/data/Experiment;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    const-string v6, "Reset"

    new-instance v7, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;

    invoke-direct {v7, p0, p2, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;-><init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Lcom/buzzfeed/androidabframework/data/Experiment;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const-string v6, "Back"

    new-instance v7, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$6;

    invoke-direct {v7, p0, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$6;-><init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method private experimentTemporarySettingsChanged(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "experimentName"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->saveExperimentsToCache(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->onExperimentTemporarySettingsChanged(Ljava/lang/String;)V

    .line 135
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentListDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public abstract onExperimentTemporarySettingsChanged(Ljava/lang/String;)V
.end method
