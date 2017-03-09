.class Lcom/buzzfeed/android/activity/DebugSettingsActivity$1;
.super Ljava/lang/Object;
.source "DebugSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/DebugSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/DebugSettingsActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/DebugSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/DebugSettingsActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/DebugSettingsActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->onBackPressed()V

    .line 38
    return-void
.end method
