.class Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/activity/BaseActivity;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;->this$0:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/activity/BaseActivity;Lcom/buzzfeed/android/activity/BaseActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/activity/BaseActivity;
    .param p2, "x1"    # Lcom/buzzfeed/android/activity/BaseActivity$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;-><init>(Lcom/buzzfeed/android/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string v2, "connectivity"

    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 43
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;->this$0:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/android/activity/BaseActivity;->onNetworkChange(Landroid/net/NetworkInfo;)V

    .line 45
    return-void
.end method
