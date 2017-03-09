.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;
.super Landroid/os/AsyncTask;
.source "DustbusterLauncherInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->forceProcessEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    # getter for: Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->access$000(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    iget-object v1, v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->processBatches(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
