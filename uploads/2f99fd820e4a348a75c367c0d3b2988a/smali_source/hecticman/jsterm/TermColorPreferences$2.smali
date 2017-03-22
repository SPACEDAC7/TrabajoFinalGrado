.class Lhecticman/jsterm/TermColorPreferences$2;
.super Ljava/lang/Object;
.source "TermColorPreferences.java"

# interfaces
.implements Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/TermColorPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/TermColorPreferences;


# direct methods
.method constructor <init>(Lhecticman/jsterm/TermColorPreferences;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/TermColorPreferences$2;->this$0:Lhecticman/jsterm/TermColorPreferences;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lyuku/ambilwarna/AmbilWarnaDialog;)V
    .registers 2
    .param p1, "dialog"    # Lyuku/ambilwarna/AmbilWarnaDialog;

    .prologue
    .line 111
    return-void
.end method

.method public onOk(Lyuku/ambilwarna/AmbilWarnaDialog;I)V
    .registers 10
    .param p1, "dialog"    # Lyuku/ambilwarna/AmbilWarnaDialog;
    .param p2, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 99
    const-string v3, "%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "backColor":Ljava/lang/String;
    iget-object v3, p0, Lhecticman/jsterm/TermColorPreferences$2;->this$0:Lhecticman/jsterm/TermColorPreferences;

    const-string v4, "color_preferences"

    invoke-virtual {v3, v4, v6}, Lhecticman/jsterm/TermColorPreferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "specific_back_color"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const-string v3, "HECTIC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set backColor to : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "specific_back_color"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
