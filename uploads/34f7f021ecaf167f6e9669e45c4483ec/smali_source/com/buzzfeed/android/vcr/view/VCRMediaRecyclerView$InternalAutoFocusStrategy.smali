.class Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;
.super Ljava/lang/Object;
.source "VCRMediaRecyclerView.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalAutoFocusStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;-><init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)V

    return-void
.end method


# virtual methods
.method public isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$300(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$300(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;->hasVideoContent(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
