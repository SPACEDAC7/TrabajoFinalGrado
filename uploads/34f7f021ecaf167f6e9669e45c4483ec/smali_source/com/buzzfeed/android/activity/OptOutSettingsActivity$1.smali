.class Lcom/buzzfeed/android/activity/OptOutSettingsActivity$1;
.super Ljava/lang/Object;
.source "OptOutSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$1;->this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->onBackPressed()V

    .line 45
    return-void
.end method
