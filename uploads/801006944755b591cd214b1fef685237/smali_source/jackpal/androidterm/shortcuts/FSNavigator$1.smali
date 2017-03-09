.class Ljackpal/androidterm/shortcuts/FSNavigator$1;
.super Ljava/lang/Object;
.source "FSNavigator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/shortcuts/FSNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/shortcuts/FSNavigator;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/FSNavigator;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$1;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2c

    .line 168
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$1;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    const/4 v2, -0x1

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator$1;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v3}, Ljackpal/androidterm/shortcuts/FSNavigator;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/FSNavigator$1;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    # getter for: Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$000(Ljackpal/androidterm/shortcuts/FSNavigator;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljackpal/androidterm/shortcuts/FSNavigator;->setResult(ILandroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$1;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->finish()V

    .line 171
    :cond_2c
    return-void
.end method
