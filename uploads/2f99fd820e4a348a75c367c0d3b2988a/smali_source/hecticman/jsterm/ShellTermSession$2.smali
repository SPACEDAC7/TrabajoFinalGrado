.class Lhecticman/jsterm/ShellTermSession$2;
.super Ljava/lang/Object;
.source "ShellTermSession.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/ShellTermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/ShellTermSession;


# direct methods
.method constructor <init>(Lhecticman/jsterm/ShellTermSession;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/ShellTermSession$2;->this$0:Lhecticman/jsterm/ShellTermSession;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession$2;->this$0:Lhecticman/jsterm/ShellTermSession;

    # getter for: Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;
    invoke-static {v0}, Lhecticman/jsterm/ShellTermSession;->access$1(Lhecticman/jsterm/ShellTermSession;)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lhecticman/jsterm/ShellTermSession$2;->this$0:Lhecticman/jsterm/ShellTermSession;

    invoke-virtual {v1}, Lhecticman/jsterm/ShellTermSession;->getUTF8Mode()Z

    move-result v1

    invoke-static {v0, v1}, Lhecticman/jsterm/Exec;->setPtyUTF8Mode(Ljava/io/FileDescriptor;Z)V

    .line 78
    return-void
.end method
