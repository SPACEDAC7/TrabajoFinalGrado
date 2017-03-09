.class final Ljackpal/androidterm/TermService$RBinderCleanupCallback;
.super Ljava/lang/Object;
.source "TermService.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/TermService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RBinderCleanupCallback"
.end annotation


# instance fields
.field private final callback:Landroid/os/ResultReceiver;

.field private final result:Landroid/app/PendingIntent;

.field final synthetic this$0:Ljackpal/androidterm/TermService;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/TermService;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 4
    .param p2, "result"    # Landroid/app/PendingIntent;
    .param p3, "callback"    # Landroid/os/ResultReceiver;

    .prologue
    .line 205
    iput-object p1, p0, Ljackpal/androidterm/TermService$RBinderCleanupCallback;->this$0:Ljackpal/androidterm/TermService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Ljackpal/androidterm/TermService$RBinderCleanupCallback;->result:Landroid/app/PendingIntent;

    .line 207
    iput-object p3, p0, Ljackpal/androidterm/TermService$RBinderCleanupCallback;->callback:Landroid/os/ResultReceiver;

    .line 208
    return-void
.end method


# virtual methods
.method public onSessionFinish(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 5
    .param p1, "session"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 212
    iget-object v0, p0, Ljackpal/androidterm/TermService$RBinderCleanupCallback;->result:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 214
    iget-object v0, p0, Ljackpal/androidterm/TermService$RBinderCleanupCallback;->callback:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Ljackpal/androidterm/TermService$RBinderCleanupCallback;->this$0:Ljackpal/androidterm/TermService;

    # getter for: Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;
    invoke-static {v0}, Ljackpal/androidterm/TermService;->access$100(Ljackpal/androidterm/TermService;)Ljackpal/androidterm/util/SessionList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljackpal/androidterm/util/SessionList;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
