.class Lcom/buzzfeed/android/activity/BuffetActivity$1;
.super Ljava/lang/Object;
.source "BuffetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuffetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuffetActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuffetActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuffetActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuffetActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuffetActivity;->onBackPressed()V

    .line 75
    return-void
.end method
