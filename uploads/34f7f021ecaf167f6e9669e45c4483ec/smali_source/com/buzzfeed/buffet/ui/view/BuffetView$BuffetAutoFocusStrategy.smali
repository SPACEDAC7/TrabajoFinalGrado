.class final Lcom/buzzfeed/buffet/ui/view/BuffetView$BuffetAutoFocusStrategy;
.super Ljava/lang/Object;
.source "BuffetView.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buffet/ui/view/BuffetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BuffetAutoFocusStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/view/BuffetView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/buffet/ui/view/BuffetView;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView$BuffetAutoFocusStrategy;->this$0:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/buffet/ui/view/BuffetView;Lcom/buzzfeed/buffet/ui/view/BuffetView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/buffet/ui/view/BuffetView;
    .param p2, "x1"    # Lcom/buzzfeed/buffet/ui/view/BuffetView$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/view/BuffetView$BuffetAutoFocusStrategy;-><init>(Lcom/buzzfeed/buffet/ui/view/BuffetView;)V

    return-void
.end method


# virtual methods
.method public isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromInt(I)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    .line 280
    .local v0, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    sget-object v1, Lcom/buzzfeed/buffet/ui/view/BuffetView$2;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 286
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 283
    :pswitch_15
    const/4 v1, 0x1

    goto :goto_14

    .line 280
    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
