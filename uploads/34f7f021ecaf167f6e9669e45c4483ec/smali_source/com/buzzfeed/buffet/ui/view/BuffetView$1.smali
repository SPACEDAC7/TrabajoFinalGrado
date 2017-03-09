.class Lcom/buzzfeed/buffet/ui/view/BuffetView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BuffetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/view/BuffetView;->setupSpanSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/view/BuffetView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/view/BuffetView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/view/BuffetView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView$1;->this$0:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView$1;->this$0:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    # getter for: Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
    invoke-static {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->access$100(Lcom/buzzfeed/buffet/ui/view/BuffetView;)Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromInt(I)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    .line 129
    .local v0, "buffetType":Lcom/buzzfeed/toolkit/content/BuffetType;
    sget-object v1, Lcom/buzzfeed/buffet/ui/view/BuffetView$2;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 145
    const/4 v1, 0x1

    :goto_1a
    return v1

    .line 143
    :pswitch_1b
    const/4 v1, 0x2

    goto :goto_1a

    .line 129
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method
