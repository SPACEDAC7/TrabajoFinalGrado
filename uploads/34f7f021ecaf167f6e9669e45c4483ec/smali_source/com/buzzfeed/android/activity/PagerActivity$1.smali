.class Lcom/buzzfeed/android/activity/PagerActivity$1;
.super Ljava/lang/Object;
.source "PagerActivity.java"

# interfaces
.implements Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/PagerActivity;->promptUserToLoginToSaveBookmarks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/PagerActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/PagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/PagerActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/buzzfeed/android/activity/PagerActivity$1;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarksChanged()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$1;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/PagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 234
    :goto_8
    return-void

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$1;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    # invokes: Lcom/buzzfeed/android/activity/PagerActivity;->refreshBookmarks()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/PagerActivity;->access$100(Lcom/buzzfeed/android/activity/PagerActivity;)V

    goto :goto_8
.end method

.method public onLoginRequest()V
    .registers 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity$1;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/PagerActivity;->getNavigationItemView()Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;

    move-result-object v0

    .line 240
    .local v0, "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;
    instance-of v1, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    if-eqz v1, :cond_f

    .line 241
    check-cast v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .end local v0    # "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startLoginActivityForResult()V

    .line 243
    :cond_f
    return-void
.end method
