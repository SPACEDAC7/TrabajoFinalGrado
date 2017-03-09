.class Lcom/buzzfeed/android/data/login/GoogleLoginManager$1;
.super Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;
.source "GoogleLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/login/GoogleLoginManager;->setupGoogleApiClient(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/login/GoogleLoginManager;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/login/GoogleLoginManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager$1;->this$0:Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager$1;->this$0:Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    # getter for: Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->access$000(Lcom/buzzfeed/android/data/login/GoogleLoginManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 62
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lcom/buzzfeed/android/data/login/GoogleLoginManager$1;->this$0:Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    # getter for: Lcom/buzzfeed/android/data/login/GoogleLoginManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->access$000(Lcom/buzzfeed/android/data/login/GoogleLoginManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 56
    return-void
.end method
