.class Ljackpal/androidterm/GenericTermSession$1;
.super Ljava/lang/Object;
.source "GenericTermSession.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/GenericTermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/GenericTermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/GenericTermSession;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Ljackpal/androidterm/GenericTermSession$1;->this$0:Ljackpal/androidterm/GenericTermSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Ljackpal/androidterm/GenericTermSession$1;->this$0:Ljackpal/androidterm/GenericTermSession;

    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession$1;->this$0:Ljackpal/androidterm/GenericTermSession;

    invoke-virtual {v1}, Ljackpal/androidterm/GenericTermSession;->getUTF8Mode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/GenericTermSession;->setPtyUTF8Mode(Z)V

    .line 63
    return-void
.end method
