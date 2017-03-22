.class Lhecticman/jsterm/Term$7;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/Term;->confirmCloseWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;


# direct methods
.method constructor <init>(Lhecticman/jsterm/Term;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/Term$7;->this$0:Lhecticman/jsterm/Term;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lhecticman/jsterm/Term$7;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->doCloseWindow()V
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$13(Lhecticman/jsterm/Term;)V

    .line 695
    return-void
.end method
