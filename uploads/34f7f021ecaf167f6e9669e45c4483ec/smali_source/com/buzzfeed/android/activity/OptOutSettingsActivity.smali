.class public Lcom/buzzfeed/android/activity/OptOutSettingsActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "OptOutSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method private trackBack()V
    .registers 6

    .prologue
    .line 134
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    const-string v1, "opt_out_settings_screen"

    const-string v2, "back"

    const-string v3, "opt_out_settings_back"

    const-string v4, "header"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->trackBack()V

    .line 130
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onBackPressed()V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v3, 0x7f030022

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->setContentView(I)V

    .line 41
    new-instance v3, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$1;-><init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity;)V

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 48
    const v3, 0x7f1100a0

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 50
    .local v2, "webView":Landroid/webkit/WebView;
    const v3, 0x7f1100a1

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 52
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 54
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 55
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 56
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/android/util/BuzzUtils;->getBuzzFeedUserAgentSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasKitKat()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 59
    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 61
    :cond_7e
    new-instance v3, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;-><init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    new-instance v3, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$3;-><init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 113
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 120
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_f

    .line 121
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->trackBack()V

    .line 122
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->finish()V

    .line 124
    :cond_f
    const/4 v1, 0x1

    return v1
.end method
