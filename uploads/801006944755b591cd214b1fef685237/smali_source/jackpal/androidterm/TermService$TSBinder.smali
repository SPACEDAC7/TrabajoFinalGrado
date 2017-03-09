.class public Ljackpal/androidterm/TermService$TSBinder;
.super Landroid/os/Binder;
.source "TermService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/TermService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TSBinder"
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/TermService;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/TermService;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Ljackpal/androidterm/TermService$TSBinder;->this$0:Ljackpal/androidterm/TermService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Ljackpal/androidterm/TermService;
    .registers 3

    .prologue
    .line 55
    const-string v0, "TermService"

    const-string v1, "Activity binding to service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Ljackpal/androidterm/TermService$TSBinder;->this$0:Ljackpal/androidterm/TermService;

    return-object v0
.end method
