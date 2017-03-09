.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;
.super Ljava/lang/Object;
.source "ReactionsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

.field final synthetic val$badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->val$badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    iput-object p3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 323
    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$000(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->getCsrfTokenOrInvalidSession(Lcom/buzzfeed/android/data/BuzzUser;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "csrfToken":Ljava/lang/String;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method
