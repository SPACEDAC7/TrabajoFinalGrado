.class Lhecticman/jsterm/Term$2;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;


# direct methods
.method constructor <init>(Lhecticman/jsterm/Term;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/Term$2;->this$0:Lhecticman/jsterm/Term;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 163
    const-string v1, "Term"

    const-string v2, "Bound to TermService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 164
    check-cast v0, Lhecticman/jsterm/TermService$TSBinder;

    .line 165
    .local v0, "binder":Lhecticman/jsterm/TermService$TSBinder;
    iget-object v1, p0, Lhecticman/jsterm/Term$2;->this$0:Lhecticman/jsterm/Term;

    invoke-virtual {v0}, Lhecticman/jsterm/TermService$TSBinder;->getService()Lhecticman/jsterm/TermService;

    move-result-object v2

    invoke-static {v1, v2}, Lhecticman/jsterm/Term;->access$7(Lhecticman/jsterm/Term;Lhecticman/jsterm/TermService;)V

    .line 166
    iget-object v1, p0, Lhecticman/jsterm/Term$2;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$2(Lhecticman/jsterm/Term;)I

    move-result v1

    if-gtz v1, :cond_25

    .line 167
    iget-object v1, p0, Lhecticman/jsterm/Term$2;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->populateViewFlipper()V
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$5(Lhecticman/jsterm/Term;)V

    .line 168
    iget-object v1, p0, Lhecticman/jsterm/Term$2;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->populateWindowList()V
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$6(Lhecticman/jsterm/Term;)V

    .line 170
    :cond_25
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    iget-object v0, p0, Lhecticman/jsterm/Term$2;->this$0:Lhecticman/jsterm/Term;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhecticman/jsterm/Term;->access$7(Lhecticman/jsterm/Term;Lhecticman/jsterm/TermService;)V

    .line 174
    return-void
.end method
