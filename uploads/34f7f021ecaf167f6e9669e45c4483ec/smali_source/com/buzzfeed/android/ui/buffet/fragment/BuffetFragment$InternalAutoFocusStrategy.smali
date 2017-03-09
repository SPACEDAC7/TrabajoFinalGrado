.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalAutoFocusStrategy"
.end annotation


# static fields
.field private static final VISIBILITY_RATIO:F = 0.333f


# instance fields
.field private mTextureViewRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;->mTextureViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;-><init>()V

    return-void
.end method

.method private isVideoCardFocusable(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)Z
    .registers 7
    .param p1, "card"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    const/4 v2, 0x0

    .line 1203
    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 1205
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;->mTextureViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1206
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;->mTextureViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;->mTextureViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1208
    .local v0, "ratio":F
    const v3, 0x3eaa7efa

    cmpl-float v3, v0, v3

    if-lez v3, :cond_26

    const/4 v2, 0x1

    .line 1211
    .end local v0    # "ratio":F
    :cond_26
    return v2
.end method


# virtual methods
.method public isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1185
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromInt(I)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    .line 1187
    .local v0, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    sget-object v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$10;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 1193
    const/4 v1, 0x0

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_14
    return v1

    .line 1191
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_15
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;->isVideoCardFocusable(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)Z

    move-result v1

    goto :goto_14

    .line 1187
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
