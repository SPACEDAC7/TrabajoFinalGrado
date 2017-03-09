.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;
.super Ljava/lang/Object;
.source "ReactionsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

.field final synthetic val$csrfToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->this$1:Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->val$csrfToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 326
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->this$1:Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->val$csrfToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->this$1:Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    iget-object v2, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->val$badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->this$1:Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    iget-object v3, v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->val$badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    iget-object v3, v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5$1;->this$1:Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    iget-object v4, v4, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;->val$view:Landroid/view/View;

    # invokes: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->postReactions(Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Landroid/view/View;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$100(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Landroid/view/View;)V

    .line 327
    return-void
.end method
