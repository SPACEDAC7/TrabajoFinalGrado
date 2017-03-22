.class public Lhecticman/jsterm/TermService$TSBinder;
.super Landroid/os/Binder;
.source "TermService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/TermService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TSBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/TermService;


# direct methods
.method public constructor <init>(Lhecticman/jsterm/TermService;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lhecticman/jsterm/TermService$TSBinder;->this$0:Lhecticman/jsterm/TermService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lhecticman/jsterm/TermService;
    .registers 3

    .prologue
    .line 46
    const-string v0, "TermService"

    const-string v1, "Activity binding to service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lhecticman/jsterm/TermService$TSBinder;->this$0:Lhecticman/jsterm/TermService;

    return-object v0
.end method
