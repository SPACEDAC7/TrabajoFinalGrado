.class Lcom/buzzfeed/android/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SplashActivity;->startSplashAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SplashActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SplashActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SplashActivity$1;->this$0:Lcom/buzzfeed/android/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity$1;->this$0:Lcom/buzzfeed/android/activity/SplashActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SplashActivity$1;->this$0:Lcom/buzzfeed/android/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/buzzfeed/android/activity/SplashActivity;->loadAndLaunchInitialIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/SplashActivity;->access$000(Lcom/buzzfeed/android/activity/SplashActivity;Landroid/content/Intent;)V

    .line 140
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity$1;->this$0:Lcom/buzzfeed/android/activity/SplashActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/activity/SplashActivity;->overridePendingTransition(II)V

    .line 141
    return-void
.end method
