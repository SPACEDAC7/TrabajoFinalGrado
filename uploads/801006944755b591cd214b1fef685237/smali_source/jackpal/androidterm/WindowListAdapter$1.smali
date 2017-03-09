.class Ljackpal/androidterm/WindowListAdapter$1;
.super Ljava/lang/Object;
.source "WindowListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/WindowListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/WindowListAdapter;

.field final synthetic val$closePosition:I

.field final synthetic val$sessions:Ljackpal/androidterm/util/SessionList;


# direct methods
.method constructor <init>(Ljackpal/androidterm/WindowListAdapter;Ljackpal/androidterm/util/SessionList;I)V
    .registers 4

    .prologue
    .line 86
    iput-object p1, p0, Ljackpal/androidterm/WindowListAdapter$1;->this$0:Ljackpal/androidterm/WindowListAdapter;

    iput-object p2, p0, Ljackpal/androidterm/WindowListAdapter$1;->val$sessions:Ljackpal/androidterm/util/SessionList;

    iput p3, p0, Ljackpal/androidterm/WindowListAdapter$1;->val$closePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v1, p0, Ljackpal/androidterm/WindowListAdapter$1;->val$sessions:Ljackpal/androidterm/util/SessionList;

    iget v2, p0, Ljackpal/androidterm/WindowListAdapter$1;->val$closePosition:I

    invoke-virtual {v1, v2}, Ljackpal/androidterm/util/SessionList;->remove(I)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 89
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_12

    .line 90
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    .line 91
    iget-object v1, p0, Ljackpal/androidterm/WindowListAdapter$1;->this$0:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v1}, Ljackpal/androidterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 93
    :cond_12
    return-void
.end method
