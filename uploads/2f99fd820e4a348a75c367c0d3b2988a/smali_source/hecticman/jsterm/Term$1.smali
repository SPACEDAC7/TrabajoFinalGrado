.class Lhecticman/jsterm/Term$1;
.super Landroid/content/BroadcastReceiver;
.source "Term.java"


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
    iput-object p1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    .line 141
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lhecticman/jsterm/Term$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lhecticman/jsterm/Term;->makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v1, v2}, Lhecticman/jsterm/Term;->access$0(Lhecticman/jsterm/Term;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hecticman.jsterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 145
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$1(Lhecticman/jsterm/Term;)Lhecticman/jsterm/util/TermSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhecticman/jsterm/util/TermSettings;->setPrependPath(Ljava/lang/String;)V

    .line 149
    :goto_20
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$2(Lhecticman/jsterm/Term;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lhecticman/jsterm/Term;->access$3(Lhecticman/jsterm/Term;I)V

    .line 151
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$2(Lhecticman/jsterm/Term;)I

    move-result v1

    if-gtz v1, :cond_45

    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$4(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermService;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 152
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->populateViewFlipper()V
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$5(Lhecticman/jsterm/Term;)V

    .line 153
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->populateWindowList()V
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$6(Lhecticman/jsterm/Term;)V

    .line 155
    :cond_45
    return-void

    .line 147
    :cond_46
    iget-object v1, p0, Lhecticman/jsterm/Term$1;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$1(Lhecticman/jsterm/Term;)Lhecticman/jsterm/util/TermSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhecticman/jsterm/util/TermSettings;->setAppendPath(Ljava/lang/String;)V

    goto :goto_20
.end method
