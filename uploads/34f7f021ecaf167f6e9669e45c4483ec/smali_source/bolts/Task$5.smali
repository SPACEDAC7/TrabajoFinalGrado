.class Lbolts/Task$5;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V
    .registers 5

    .prologue
    .line 313
    .local p0, "this":Lbolts/Task$5;, "Lbolts/Task.5;"
    iput-object p1, p0, Lbolts/Task$5;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$5;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lbolts/Task$5;, "Lbolts/Task.5;"
    invoke-virtual {p0, p1}, Lbolts/Task$5;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lbolts/Task$5;, "Lbolts/Task.5;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v0, p0, Lbolts/Task$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$5;->val$continuation:Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    # invokes: Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    invoke-static {v0, v1, p1, v2}, Lbolts/Task;->access$100(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method
