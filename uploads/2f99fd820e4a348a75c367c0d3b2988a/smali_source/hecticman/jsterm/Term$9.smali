.class Lhecticman/jsterm/Term$9;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/Term;->doCommandHistory()V
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
    iput-object p1, p0, Lhecticman/jsterm/Term$9;->this$0:Lhecticman/jsterm/Term;

    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1237
    iget-object v1, p0, Lhecticman/jsterm/Term$9;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$15(Lhecticman/jsterm/Term;)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    .line 1238
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->getCmdItems()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TermSession;->write(Ljava/lang/String;)V

    .line 1239
    return-void
.end method
