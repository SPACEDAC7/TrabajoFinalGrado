.class Lcom/buzzfeed/android/activity/BuffetSearchActivity$1;
.super Ljava/lang/Object;
.source "BuffetSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuffetSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuffetSearchActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuffetSearchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuffetSearchActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuffetSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuffetSearchActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->onBackPressed()V

    .line 42
    return-void
.end method
