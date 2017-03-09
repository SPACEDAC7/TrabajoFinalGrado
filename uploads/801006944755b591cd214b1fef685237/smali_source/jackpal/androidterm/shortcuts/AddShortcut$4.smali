.class Ljackpal/androidterm/shortcuts/AddShortcut$4;
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

.field final synthetic val$img:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/AddShortcut;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 163
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    iput-object p2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->val$img:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 166
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$600(Ljackpal/androidterm/shortcuts/AddShortcut;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$000(Ljackpal/androidterm/shortcuts/AddShortcut;)[Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I
    invoke-static {v3}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$200(Ljackpal/androidterm/shortcuts/AddShortcut;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;
    invoke-static {v3}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$000(Ljackpal/androidterm/shortcuts/AddShortcut;)[Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I
    invoke-static {v4}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$100(Ljackpal/androidterm/shortcuts/AddShortcut;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;
    invoke-static {v4}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$500(Ljackpal/androidterm/shortcuts/AddShortcut;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/AddShortcut$4;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljackpal/androidterm/shortcuts/AddShortcut;->buildShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    return-void
.end method
