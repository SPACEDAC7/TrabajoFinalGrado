.class Lcom/buzzfeed/android/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SettingsActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity;

    # invokes: Lcom/buzzfeed/android/activity/SettingsActivity;->trackBack()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SettingsActivity;->access$000(Lcom/buzzfeed/android/activity/SettingsActivity;)V

    .line 72
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity;

    # invokes: Lcom/buzzfeed/android/activity/SettingsActivity;->restartAppOrFinish()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SettingsActivity;->access$100(Lcom/buzzfeed/android/activity/SettingsActivity;)V

    .line 73
    return-void
.end method
