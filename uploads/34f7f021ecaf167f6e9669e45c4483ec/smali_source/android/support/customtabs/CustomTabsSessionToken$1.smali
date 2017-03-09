.class Landroid/support/customtabs/CustomTabsSessionToken$1;
.super Landroid/support/customtabs/CustomTabsCallback;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsSessionToken;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/customtabs/CustomTabsSessionToken;

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    # getter for: Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;
    invoke-static {v1}, Landroid/support/customtabs/CustomTabsSessionToken;->access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 60
    :goto_9
    return-void

    .line 57
    :catch_a
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
