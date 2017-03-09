.class Ljackpal/androidterm/shortcuts/AddShortcut$5;
.super Ljava/lang/Object;
.source "AddShortcut.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/shortcuts/AddShortcut;->makeShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/shortcuts/AddShortcut;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/AddShortcut;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$5;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut$5;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    invoke-virtual {v0}, Ljackpal/androidterm/shortcuts/AddShortcut;->finish()V

    .line 183
    return-void
.end method
