.class Lhecticman/jsterm/RemoteInterface$1;
.super Ljava/lang/Object;
.source "RemoteInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/RemoteInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/RemoteInterface;


# direct methods
.method constructor <init>(Lhecticman/jsterm/RemoteInterface;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/RemoteInterface$1;->this$0:Lhecticman/jsterm/RemoteInterface;

    .line 51
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

    check-cast v0, Lhecticman/jsterm/TermService$TSBinder;

    .line 54
    .local v0, "binder":Lhecticman/jsterm/TermService$TSBinder;
    iget-object v1, p0, Lhecticman/jsterm/RemoteInterface$1;->this$0:Lhecticman/jsterm/RemoteInterface;

    invoke-virtual {v0}, Lhecticman/jsterm/TermService$TSBinder;->getService()Lhecticman/jsterm/TermService;

    move-result-object v2

    invoke-static {v1, v2}, Lhecticman/jsterm/RemoteInterface;->access$0(Lhecticman/jsterm/RemoteInterface;Lhecticman/jsterm/TermService;)V

    .line 55
    iget-object v1, p0, Lhecticman/jsterm/RemoteInterface$1;->this$0:Lhecticman/jsterm/RemoteInterface;

    # invokes: Lhecticman/jsterm/RemoteInterface;->handleIntent()V
    invoke-static {v1}, Lhecticman/jsterm/RemoteInterface;->access$1(Lhecticman/jsterm/RemoteInterface;)V

    .line 56
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    iget-object v0, p0, Lhecticman/jsterm/RemoteInterface$1;->this$0:Lhecticman/jsterm/RemoteInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhecticman/jsterm/RemoteInterface;->access$0(Lhecticman/jsterm/RemoteInterface;Lhecticman/jsterm/TermService;)V

    .line 60
    return-void
.end method
