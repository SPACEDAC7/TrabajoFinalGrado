.class Lhecticman/jsterm/WindowList$1;
.super Ljava/lang/Object;
.source "WindowList.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/WindowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/WindowList;


# direct methods
.method constructor <init>(Lhecticman/jsterm/WindowList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/WindowList$1;->this$0:Lhecticman/jsterm/WindowList;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    move-object v0, p2

    check-cast v0, Lhecticman/jsterm/TermService$TSBinder;

    .line 74
    .local v0, "binder":Lhecticman/jsterm/TermService$TSBinder;
    iget-object v1, p0, Lhecticman/jsterm/WindowList$1;->this$0:Lhecticman/jsterm/WindowList;

    invoke-virtual {v0}, Lhecticman/jsterm/TermService$TSBinder;->getService()Lhecticman/jsterm/TermService;

    move-result-object v2

    invoke-static {v1, v2}, Lhecticman/jsterm/WindowList;->access$0(Lhecticman/jsterm/WindowList;Lhecticman/jsterm/TermService;)V

    .line 75
    iget-object v1, p0, Lhecticman/jsterm/WindowList$1;->this$0:Lhecticman/jsterm/WindowList;

    # invokes: Lhecticman/jsterm/WindowList;->populateList()V
    invoke-static {v1}, Lhecticman/jsterm/WindowList;->access$1(Lhecticman/jsterm/WindowList;)V

    .line 76
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 79
    iget-object v0, p0, Lhecticman/jsterm/WindowList$1;->this$0:Lhecticman/jsterm/WindowList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhecticman/jsterm/WindowList;->access$0(Lhecticman/jsterm/WindowList;Lhecticman/jsterm/TermService;)V

    .line 80
    return-void
.end method
