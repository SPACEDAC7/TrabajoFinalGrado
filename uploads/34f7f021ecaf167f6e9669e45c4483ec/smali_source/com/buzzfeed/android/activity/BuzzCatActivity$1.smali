.class Lcom/buzzfeed/android/activity/BuzzCatActivity$1;
.super Ljava/lang/Object;
.source "BuzzCatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzCatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzCatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzCatActivity;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->onBackPressed()V

    .line 35
    return-void
.end method
