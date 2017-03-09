.class Lcom/buzzfeed/androidabframework/ui/SettingsDialog$3;
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


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/ui/SettingsDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/ui/SettingsDialog$3;->this$0:Lcom/buzzfeed/androidabframework/ui/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    return-void
.end method
