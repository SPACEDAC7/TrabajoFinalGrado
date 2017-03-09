.class Lcom/buzzfeed/android/vcr/view/VCRControllerView$2;
.super Ljava/lang/Object;
.source "VCRControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/view/VCRControllerView;->hideDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$2;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$2;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->animateVisibility(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$200(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)V

    .line 163
    return-void
.end method
