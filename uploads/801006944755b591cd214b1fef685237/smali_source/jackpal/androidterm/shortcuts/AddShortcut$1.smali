.class Ljackpal/androidterm/shortcuts/AddShortcut$1;
.super Ljava/lang/Object;
.source "AddShortcut.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 73
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "focus"    # Z

    .prologue
    .line 76
    if-nez p2, :cond_58

    .line 79
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;
    invoke-static {v1}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$000(Ljackpal/androidterm/shortcuts/AddShortcut;)[Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$100(Ljackpal/androidterm/shortcuts/AddShortcut;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;
    invoke-static {v1}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$000(Ljackpal/androidterm/shortcuts/AddShortcut;)[Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$200(Ljackpal/androidterm/shortcuts/AddShortcut;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 83
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;
    invoke-static {v1}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$000(Ljackpal/androidterm/shortcuts/AddShortcut;)[Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$1;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$100(Ljackpal/androidterm/shortcuts/AddShortcut;)I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "\\s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v0    # "s":Ljava/lang/String;
    :cond_58
    return-void
.end method
