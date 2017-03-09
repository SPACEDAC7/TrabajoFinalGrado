.class Lcom/buzzfeed/android/activity/SpicyActivity$4;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->setUpFab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SpicyActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$4;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$4;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->onFabClick()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$200(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    .line 387
    return-void
.end method
