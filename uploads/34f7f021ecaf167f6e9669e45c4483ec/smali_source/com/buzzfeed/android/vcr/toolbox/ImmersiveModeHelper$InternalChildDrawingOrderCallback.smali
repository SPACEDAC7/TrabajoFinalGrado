.class Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;
.super Ljava/lang/Object;
.source "ImmersiveModeHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalChildDrawingOrderCallback"
.end annotation


# instance fields
.field private mNextChildIndexToRender:I

.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "iteration"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$400(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-ne v0, v1, :cond_b

    .line 433
    .end local p2    # "iteration":I
    :goto_a
    return p2

    .line 423
    .restart local p2    # "iteration":I
    :cond_b
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_19

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->mNextChildIndexToRender:I

    .line 427
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$600(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)I

    move-result p2

    goto :goto_a

    .line 429
    :cond_19
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->mNextChildIndexToRender:I

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$600(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 431
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->mNextChildIndexToRender:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->mNextChildIndexToRender:I

    .line 433
    :cond_29
    iget p2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->mNextChildIndexToRender:I

    .end local p2    # "iteration":I
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;->mNextChildIndexToRender:I

    goto :goto_a
.end method
