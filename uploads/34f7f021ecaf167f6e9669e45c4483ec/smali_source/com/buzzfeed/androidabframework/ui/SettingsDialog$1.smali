.class Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentListDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$experimentList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iput-object p2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;->val$experimentList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;->val$experimentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 52
    .local v0, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->createExperimentVariantListDialog(Landroid/content/Context;Lcom/buzzfeed/androidabframework/data/Experiment;)Landroid/app/Dialog;
    invoke-static {v1, v2, v0}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->access$000(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;Lcom/buzzfeed/androidabframework/data/Experiment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 53
    return-void
.end method
