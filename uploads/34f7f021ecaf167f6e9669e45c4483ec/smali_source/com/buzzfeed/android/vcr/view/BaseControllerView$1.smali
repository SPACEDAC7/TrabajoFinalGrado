.class Lcom/buzzfeed/android/vcr/view/BaseControllerView$1;
.super Ljava/lang/Object;
.source "BaseControllerView.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/BaseControllerView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/view/BaseControllerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/view/BaseControllerView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView$1;->this$0:Lcom/buzzfeed/android/vcr/view/BaseControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView$1;->this$0:Lcom/buzzfeed/android/vcr/view/BaseControllerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onProgressPolled()V

    .line 62
    return-void
.end method
