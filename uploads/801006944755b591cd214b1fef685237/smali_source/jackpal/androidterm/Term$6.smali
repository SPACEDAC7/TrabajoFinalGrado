.class Ljackpal/androidterm/Term$6;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/Term;->confirmCloseWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    .prologue
    .line 740
    iput-object p1, p0, Ljackpal/androidterm/Term$6;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Ljackpal/androidterm/Term$6;->this$0:Ljackpal/androidterm/Term;

    # invokes: Ljackpal/androidterm/Term;->doCloseWindow()V
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$1600(Ljackpal/androidterm/Term;)V

    .line 743
    return-void
.end method
