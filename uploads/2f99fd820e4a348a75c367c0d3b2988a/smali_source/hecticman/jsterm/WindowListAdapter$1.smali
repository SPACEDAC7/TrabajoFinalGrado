.class Lhecticman/jsterm/WindowListAdapter$1;
.super Ljava/lang/Object;
.source "WindowListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/WindowListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/WindowListAdapter;

.field private final synthetic val$closePosition:I

.field private final synthetic val$sessions:Lhecticman/jsterm/util/SessionList;


# direct methods
.method constructor <init>(Lhecticman/jsterm/WindowListAdapter;Lhecticman/jsterm/util/SessionList;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/WindowListAdapter$1;->this$0:Lhecticman/jsterm/WindowListAdapter;

    iput-object p2, p0, Lhecticman/jsterm/WindowListAdapter$1;->val$sessions:Lhecticman/jsterm/util/SessionList;

    iput p3, p0, Lhecticman/jsterm/WindowListAdapter$1;->val$closePosition:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lhecticman/jsterm/WindowListAdapter$1;->val$sessions:Lhecticman/jsterm/util/SessionList;

    iget v2, p0, Lhecticman/jsterm/WindowListAdapter$1;->val$closePosition:I

    invoke-virtual {v1, v2}, Lhecticman/jsterm/util/SessionList;->remove(I)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    .line 68
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    if-eqz v0, :cond_12

    .line 69
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->finish()V

    .line 70
    iget-object v1, p0, Lhecticman/jsterm/WindowListAdapter$1;->this$0:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v1}, Lhecticman/jsterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 72
    :cond_12
    return-void
.end method
