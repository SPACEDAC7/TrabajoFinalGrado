.class Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;
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


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Lcom/buzzfeed/androidabframework/data/Experiment;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iput-object p2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

    iput-object p3, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/androidabframework/data/Experiment;->setTemporaryVariant(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 114
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->val$experiment:Lcom/buzzfeed/androidabframework/data/Experiment;

    invoke-virtual {v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->experimentTemporarySettingsChanged(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->access$100(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$5;->val$context:Landroid/content/Context;

    # invokes: Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentListDialog(Landroid/content/Context;)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->access$200(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 117
    return-void
.end method
