.class Ljackpal/androidterm/util/SessionList$1;
.super Ljava/lang/Object;
.source "SessionList.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/util/SessionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/util/SessionList;


# direct methods
.method constructor <init>(Ljackpal/androidterm/util/SessionList;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Ljackpal/androidterm/util/SessionList$1;->this$0:Ljackpal/androidterm/util/SessionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList$1;->this$0:Ljackpal/androidterm/util/SessionList;

    # invokes: Ljackpal/androidterm/util/SessionList;->notifyTitleChanged()V
    invoke-static {v0}, Ljackpal/androidterm/util/SessionList;->access$000(Ljackpal/androidterm/util/SessionList;)V

    .line 38
    return-void
.end method
