.class Ljackpal/androidterm/shortcuts/AddShortcut$3;
.super Ljava/lang/Object;
.source "AddShortcut.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 139
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$3;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    iput-object p2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$3;->val$img:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "p1"    # Landroid/view/View;

    .prologue
    .line 142
    new-instance v0, Ljackpal/androidterm/shortcuts/ColorValue;

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$3;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;
    invoke-static {v1}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$400(Ljackpal/androidterm/shortcuts/AddShortcut;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut$3;->val$img:Landroid/widget/ImageView;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$3;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$500(Ljackpal/androidterm/shortcuts/AddShortcut;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljackpal/androidterm/shortcuts/ColorValue;-><init>(Landroid/content/Context;Landroid/widget/ImageView;[Ljava/lang/String;)V

    .line 143
    return-void
.end method
