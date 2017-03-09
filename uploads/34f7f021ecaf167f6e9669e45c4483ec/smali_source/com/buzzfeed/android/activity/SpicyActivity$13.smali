.class Lcom/buzzfeed/android/activity/SpicyActivity$13;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->onBookmarkMenuButtonClicked()V
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
    .line 796
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkToggled()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 799
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/SpicyActivity;->updateBookmarkMenuButton()V

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "isBookmarked":Z
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isBookmarked(Lcom/buzzfeed/toolkit/content/Content;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 804
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/SpicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v4, v4, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "toast":Ljava/lang/String;
    const/4 v0, 0x1

    .line 809
    :goto_36
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-static {v2, v1, v5}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 811
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v2, v3, v0}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackBookmarkClick(Lcom/buzzfeed/toolkit/content/PostContent;Z)V

    .line 812
    return-void

    .line 807
    .end local v1    # "toast":Ljava/lang/String;
    :cond_47
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/SpicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v4, v4, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "toast":Ljava/lang/String;
    goto :goto_36
.end method

.method public userLogin()V
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$13;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showNotSignedInDialog(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    .line 817
    return-void
.end method
