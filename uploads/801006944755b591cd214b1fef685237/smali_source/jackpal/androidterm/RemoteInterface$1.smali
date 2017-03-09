.class Ljackpal/androidterm/RemoteInterface$1;
.super Ljava/lang/Object;
.source "RemoteInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/RemoteInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/RemoteInterface;


# direct methods
.method constructor <init>(Ljackpal/androidterm/RemoteInterface;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Ljackpal/androidterm/RemoteInterface$1;->this$0:Ljackpal/androidterm/RemoteInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 53
    move-object v0, p2

    check-cast v0, Ljackpal/androidterm/TermService$TSBinder;

    .line 54
    .local v0, "binder":Ljackpal/androidterm/TermService$TSBinder;
    iget-object v1, p0, Ljackpal/androidterm/RemoteInterface$1;->this$0:Ljackpal/androidterm/RemoteInterface;

    invoke-virtual {v0}, Ljackpal/androidterm/TermService$TSBinder;->getService()Ljackpal/androidterm/TermService;

    move-result-object v2

    # setter for: Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v1, v2}, Ljackpal/androidterm/RemoteInterface;->access$002(Ljackpal/androidterm/RemoteInterface;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    .line 55
    iget-object v1, p0, Ljackpal/androidterm/RemoteInterface$1;->this$0:Ljackpal/androidterm/RemoteInterface;

    invoke-virtual {v1}, Ljackpal/androidterm/RemoteInterface;->handleIntent()V

    .line 56
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/RemoteInterface$1;->this$0:Ljackpal/androidterm/RemoteInterface;

    const/4 v1, 0x0

    # setter for: Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v0, v1}, Ljackpal/androidterm/RemoteInterface;->access$002(Ljackpal/androidterm/RemoteInterface;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    .line 60
    return-void
.end method
