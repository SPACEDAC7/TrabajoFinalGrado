.class Ljackpal/androidterm/emulatorview/TermSession$1$1;
.super Ljava/lang/Object;
.source "TermSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/emulatorview/TermSession$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljackpal/androidterm/emulatorview/TermSession$1;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession$1;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$1$1;->this$1:Ljackpal/androidterm/emulatorview/TermSession$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$1$1;->this$1:Ljackpal/androidterm/emulatorview/TermSession$1;

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->onProcessExit()V

    .line 127
    return-void
.end method
