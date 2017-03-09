.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;
.super Landroid/os/AsyncTask;
.source "DustbusterLauncherInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V
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

.field final synthetic val$event:Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->val$event:Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    # getter for: Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->access$000(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->val$event:Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->val$event:Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->addEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    # getter for: Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->access$000(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->this$0:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    iget-object v1, v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->checkMinimumEventsToProcess(Ljava/lang/String;)Z

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
