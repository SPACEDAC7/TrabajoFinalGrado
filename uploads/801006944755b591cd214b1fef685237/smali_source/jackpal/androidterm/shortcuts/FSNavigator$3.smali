.class Ljackpal/androidterm/shortcuts/FSNavigator$3;
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
    .line 298
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$3;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 304
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 307
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$3;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    const/4 v3, -0x1

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator$3;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->setResult(ILandroid/content/Intent;)V

    .line 308
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$3;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->finish()V

    .line 311
    :goto_2c
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$3;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    # invokes: Ljackpal/androidterm/shortcuts/FSNavigator;->makeView()V
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$200(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    .line 313
    .end local v0    # "file":Ljava/io/File;
    :cond_31
    return-void

    .line 310
    .restart local v0    # "file":Ljava/io/File;
    :cond_32
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$3;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    # invokes: Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v2, v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$100(Ljackpal/androidterm/shortcuts/FSNavigator;Ljava/io/File;)Ljava/io/File;

    goto :goto_2c
.end method
