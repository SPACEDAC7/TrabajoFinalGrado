.class Ljackpal/androidterm/Term$1;
.super Landroid/content/BroadcastReceiver;
.source "Term.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljackpal/androidterm/Term$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Ljackpal/androidterm/Term;->makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v1, v2}, Ljackpal/androidterm/Term;->access$000(Ljackpal/androidterm/Term;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 130
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$100(Ljackpal/androidterm/Term;)Ljackpal/androidterm/util/TermSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljackpal/androidterm/util/TermSettings;->setPrependPath(Ljava/lang/String;)V

    .line 134
    :goto_20
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # operator-- for: Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$210(Ljackpal/androidterm/Term;)I

    .line 136
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$200(Ljackpal/androidterm/Term;)I

    move-result v1

    if-gtz v1, :cond_3f

    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$300(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermService;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 137
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # invokes: Ljackpal/androidterm/Term;->populateViewFlipper()V
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$400(Ljackpal/androidterm/Term;)V

    .line 138
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # invokes: Ljackpal/androidterm/Term;->populateWindowList()V
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$500(Ljackpal/androidterm/Term;)V

    .line 140
    :cond_3f
    return-void

    .line 132
    :cond_40
    iget-object v1, p0, Ljackpal/androidterm/Term$1;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$100(Ljackpal/androidterm/Term;)Ljackpal/androidterm/util/TermSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljackpal/androidterm/util/TermSettings;->setAppendPath(Ljava/lang/String;)V

    goto :goto_20
.end method
