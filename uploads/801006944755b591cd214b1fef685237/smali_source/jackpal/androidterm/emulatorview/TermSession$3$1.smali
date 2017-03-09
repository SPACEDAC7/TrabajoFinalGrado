.class Ljackpal/androidterm/emulatorview/TermSession$3$1;
.super Landroid/os/Handler;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/emulatorview/TermSession$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljackpal/androidterm/emulatorview/TermSession$3;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession$3;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$3$1;->this$1:Ljackpal/androidterm/emulatorview/TermSession$3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 191
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3$1;->this$1:Ljackpal/androidterm/emulatorview/TermSession$3;

    # invokes: Ljackpal/androidterm/emulatorview/TermSession$3;->writeToOutput()V
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/TermSession$3;->access$600(Ljackpal/androidterm/emulatorview/TermSession$3;)V

    .line 195
    :cond_a
    :goto_a
    return-void

    .line 192
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 193
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_a
.end method
