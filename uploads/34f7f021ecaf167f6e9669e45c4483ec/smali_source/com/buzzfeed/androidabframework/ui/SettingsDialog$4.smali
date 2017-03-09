.class Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentVariantListDialog(Landroid/content/Context;Lcom/buzzfeed/androidabframework/data/Experiment;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

.field final synthetic val$variantList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Ljava/util/ArrayList;Lcom/buzzfeed/androidabframework/data/Experiment;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iput-object p2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$variantList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

    iput-object p4, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$variantList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Variant;

    .line 103
    .local v0, "variant":Lcom/buzzfeed/androidabframework/data/Variant;
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/data/Variant;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->setTemporaryVariant(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 105
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$4;->val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->experimentTemporarySettingsChanged(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->access$100(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method
