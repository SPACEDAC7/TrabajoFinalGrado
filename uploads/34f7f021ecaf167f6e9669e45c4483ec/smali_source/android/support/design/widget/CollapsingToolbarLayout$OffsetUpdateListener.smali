.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .registers 2

    .prologue
    .line 1254
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 13
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1259
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1261
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v8, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v8, :cond_34

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v8, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 1263
    .local v3, "insetTop":I
    :goto_13
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1a
    if-ge v2, v6, :cond_52

    .line 1264
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1265
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1266
    .local v4, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 1268
    .local v5, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    iget v8, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v8, :pswitch_data_82

    .line 1263
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .end local v6    # "z":I
    :cond_34
    move v3, v7

    .line 1261
    goto :goto_13

    .line 1270
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "insetTop":I
    .restart local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .restart local v6    # "z":I
    :pswitch_36
    neg-int v8, p2

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1271
    invoke-virtual {v9, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v7, v9}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v8

    .line 1270
    invoke-virtual {v5, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_31

    .line 1274
    :pswitch_45
    neg-int v8, p2

    int-to-float v8, v8

    iget v9, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v8, v9

    .line 1275
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1274
    invoke-virtual {v5, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_31

    .line 1281
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    :cond_52
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1283
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_64

    if-lez v3, :cond_64

    .line 1284
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1288
    :cond_64
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v1, v7, v3

    .line 1290
    .local v1, "expandRange":I
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 1291
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1290
    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1292
    return-void

    .line 1268
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_36
        :pswitch_45
    .end packed-switch
.end method
