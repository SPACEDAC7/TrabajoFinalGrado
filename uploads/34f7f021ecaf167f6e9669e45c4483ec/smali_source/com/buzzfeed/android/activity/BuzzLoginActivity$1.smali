.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;
.super Lcom/facebook/ProfileTracker;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

.field final synthetic val$TAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .registers 7
    .param p1, "oldProfile"    # Lcom/facebook/Profile;
    .param p2, "currentProfile"    # Lcom/facebook/Profile;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->val$TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p2, :cond_51

    .line 135
    invoke-virtual {p2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p2}, Lcom/facebook/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;)V

    .line 135
    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/android/util/BuzzApiClient;->loginToBuzzFeedWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    .line 158
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v2, 0x7f090082

    const v3, 0x7f090087

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    .line 160
    :cond_51
    return-void
.end method
