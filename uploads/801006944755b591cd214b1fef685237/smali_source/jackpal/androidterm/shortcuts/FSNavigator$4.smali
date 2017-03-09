.class Ljackpal/androidterm/shortcuts/FSNavigator$4;
.super Ljava/lang/Object;
.source "FSNavigator.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/shortcuts/FSNavigator;->makeView()V
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
    .line 460
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$4;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 460
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
