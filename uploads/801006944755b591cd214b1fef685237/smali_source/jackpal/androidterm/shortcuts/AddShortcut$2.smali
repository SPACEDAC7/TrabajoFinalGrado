.class Ljackpal/androidterm/shortcuts/AddShortcut$2;
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


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/AddShortcut;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/AddShortcut$2;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "p1"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$2;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->SP:Landroid/content/SharedPreferences;
    invoke-static {v3}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$300(Ljackpal/androidterm/shortcuts/AddShortcut;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "lastPath"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "lastPath":Ljava/lang/String;
    if-nez v1, :cond_50

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 100
    .local v0, "get":Ljava/io/File;
    :goto_13
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v2, "pickerIntent":Landroid/content/Intent;
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$2;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    # getter for: Ljackpal/androidterm/shortcuts/AddShortcut;->SP:Landroid/content/SharedPreferences;
    invoke-static {v3}, Ljackpal/androidterm/shortcuts/AddShortcut;->access$300(Ljackpal/androidterm/shortcuts/AddShortcut;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "useInternalScriptFinder"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 103
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$2;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    invoke-virtual {v3}, Ljackpal/androidterm/shortcuts/AddShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/AddShortcut$2;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    const v6, 0x7f090009

    invoke-virtual {v5, v6}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :goto_49
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut$2;->this$0:Ljackpal/androidterm/shortcuts/AddShortcut;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljackpal/androidterm/shortcuts/AddShortcut;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void

    .line 97
    .end local v0    # "get":Ljava/io/File;
    .end local v2    # "pickerIntent":Landroid/content/Intent;
    :cond_50
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_13

    .line 109
    .restart local v0    # "get":Ljava/io/File;
    .restart local v2    # "pickerIntent":Landroid/content/Intent;
    :cond_5a
    const-string v3, "CONTENT_TYPE"

    const-string v4, "*/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_49
.end method
