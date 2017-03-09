.class Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;
.super Ljava/lang/Object;
.source "VCRControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/view/VCRControllerView;->configureListeners()V
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
    .line 96
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->onPlayPauseClicked()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$100(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V

    .line 100
    return-void
.end method
