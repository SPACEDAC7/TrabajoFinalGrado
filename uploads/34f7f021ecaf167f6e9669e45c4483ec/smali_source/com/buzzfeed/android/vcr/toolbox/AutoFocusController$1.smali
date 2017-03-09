.class Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->attachView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
