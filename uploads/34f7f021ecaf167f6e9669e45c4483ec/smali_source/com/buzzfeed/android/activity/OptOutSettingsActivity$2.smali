.class Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;
.super Landroid/webkit/WebViewClient;
.source "OptOutSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;->this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".shouldOverrideUrlLoading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "TAG":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 67
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "opt_out"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "param":Ljava/lang/String;
    if-eqz v1, :cond_7d

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/buzzfeed/android/util/BuzzUtils;->setIsPoundEnabled(Landroid/content/Context;Z)V

    .line 71
    const-string v3, "Opting out of pound tracking"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v3, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;->this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-direct {v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090148

    .line 74
    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090147

    .line 75
    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900cd

    new-instance v5, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2$1;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2$1;-><init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;)V

    .line 76
    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 83
    const-string v3, "about:blank"

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    :goto_7c
    return v6

    .line 85
    :cond_7d
    const-string v3, "s"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_95

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/about/optout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 86
    invoke-static {p2}, Lcom/buzzfeed/android/util/BuzzUtils;->appendMobileAppParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_95
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7c
.end method
