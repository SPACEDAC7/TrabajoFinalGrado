.class Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;
.super Ljava/lang/Object;
.source "ShowPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->showEnablePushNotificationPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

.field final synthetic val$callback:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;->this$0:Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;->val$callback:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;->val$callback:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;->val$callback:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;

    invoke-interface {v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;->canceled()V

    .line 227
    :cond_9
    return-void
.end method
