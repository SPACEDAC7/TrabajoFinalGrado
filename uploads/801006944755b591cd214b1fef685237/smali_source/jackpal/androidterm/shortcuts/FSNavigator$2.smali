.class Ljackpal/androidterm/shortcuts/FSNavigator$2;
.super Ljava/lang/Object;
.source "FSNavigator.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/shortcuts/FSNavigator;->fileView(Z)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/FSNavigator;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 200
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    iput-object p2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    const/16 v2, 0x42

    if-ne p2, v2, :cond_56

    .line 205
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_46

    move-object v2, v0

    :goto_22
    # invokes: Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v3, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$100(Ljackpal/androidterm/shortcuts/FSNavigator;Ljava/io/File;)Ljava/io/File;

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 210
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    const/4 v3, -0x1

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->setResult(ILandroid/content/Intent;)V

    .line 211
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->finish()V

    .line 218
    :goto_44
    const/4 v2, 0x1

    .line 220
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :goto_45
    return v2

    .line 207
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_22

    .line 215
    :cond_4b
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    # invokes: Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v2, v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$100(Ljackpal/androidterm/shortcuts/FSNavigator;Ljava/io/File;)Ljava/io/File;

    .line 216
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$2;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    # invokes: Ljackpal/androidterm/shortcuts/FSNavigator;->makeView()V
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$200(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    goto :goto_44

    .line 220
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_56
    const/4 v2, 0x0

    goto :goto_45
.end method
