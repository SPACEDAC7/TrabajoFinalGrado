.class final Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalAutoFocusStrategy;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalAutoFocusStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 2

    .prologue
    .line 838
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalAutoFocusStrategy;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
    .param p2, "x1"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalAutoFocusStrategy;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    return-void
.end method


# virtual methods
.method public isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->fromInt(I)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v0

    .line 844
    .local v0, "type":Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    sget-object v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$8;->$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType:[I

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 850
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 847
    :pswitch_15
    const/4 v1, 0x1

    goto :goto_14

    .line 844
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
