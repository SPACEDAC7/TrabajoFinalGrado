.class Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;
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
    .line 57
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iput-object p2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->val$experimentList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->val$experimentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 61
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->val$experimentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 62
    .local v0, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/androidabframework/data/Experiment;->setTemporaryVariant(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 63
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->experimentTemporarySettingsChanged(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->access$100(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    :cond_23
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    return-void
.end method
