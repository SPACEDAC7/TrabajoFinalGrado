.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;
.super Landroid/os/AsyncTask;
.source "DustbusterLauncherInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->processEventCollection(Lorg/json/JSONArray;)V
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

.field final synthetic val$events:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->val$events:Lorg/json/JSONArray;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    # getter for: Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->access$000(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->val$events:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->addEventCollection(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    # getter for: Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->access$000(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    iget-object v1, v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->checkMinimumEventsToProcess(Ljava/lang/String;)Z

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
