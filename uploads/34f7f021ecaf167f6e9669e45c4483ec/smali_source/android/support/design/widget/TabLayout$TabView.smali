.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 8
    .param p1, "this$0"    # Landroid/support/design/widget/TabLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1499
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1500
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1497
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1501
    iget v0, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    if-eqz v0, :cond_16

    .line 1502
    iget v0, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 1503
    invoke-static {p2, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1502
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1505
    :cond_16
    iget v0, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iget v3, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1507
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1508
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1509
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1510
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .registers 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .prologue
    .line 1802
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 13
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "iconView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1713
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_75

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1714
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_e
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_77

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1715
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_18
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_79

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1717
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    :goto_22
    if-eqz p2, :cond_32

    .line 1718
    if-eqz v3, :cond_7b

    .line 1719
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1720
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1721
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1726
    :goto_2f
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1729
    :cond_32
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_82

    const/4 v2, 0x1

    .line 1730
    .local v2, "hasText":Z
    :goto_39
    if-eqz p1, :cond_49

    .line 1731
    if-eqz v2, :cond_84

    .line 1732
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1734
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1739
    :goto_46
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1742
    :cond_49
    if-eqz p2, :cond_69

    .line 1743
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1744
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v0, 0x0

    .line 1745
    .local v0, "bottomMargin":I
    if-eqz v2, :cond_60

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_60

    .line 1747
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    .line 1749
    :cond_60
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v8, :cond_69

    .line 1750
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1751
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1755
    .end local v0    # "bottomMargin":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_69
    if-nez v2, :cond_8b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8b

    .line 1756
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1761
    :goto_74
    return-void

    .end local v1    # "contentDesc":Ljava/lang/CharSequence;
    .end local v2    # "hasText":Z
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_75
    move-object v3, v6

    .line 1713
    goto :goto_e

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_77
    move-object v5, v6

    .line 1714
    goto :goto_18

    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_79
    move-object v1, v6

    .line 1715
    goto :goto_22

    .line 1723
    .restart local v1    # "contentDesc":Ljava/lang/CharSequence;
    :cond_7b
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1724
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f

    :cond_82
    move v2, v7

    .line 1729
    goto :goto_39

    .line 1736
    .restart local v2    # "hasText":Z
    :cond_84
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1737
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 1758
    :cond_8b
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1759
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_74
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 2

    .prologue
    .line 1795
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1554
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1556
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1557
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1562
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1564
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1565
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1765
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 1766
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1767
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1768
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1770
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1771
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v8

    .line 1772
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getHeight()I

    move-result v3

    .line 1773
    .local v3, "height":I
    aget v9, v6, v12

    div-int/lit8 v10, v3, 0x2

    add-int v4, v9, v10

    .line 1774
    .local v4, "midy":I
    aget v9, v6, v11

    div-int/lit8 v10, v8, 0x2

    add-int v5, v9, v10

    .line 1775
    .local v5, "referenceX":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_3a

    .line 1776
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1777
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 1780
    .end local v7    # "screenWidth":I
    :cond_3a
    iget-object v9, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1782
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v4, v9, :cond_5a

    .line 1784
    const v9, 0x800035

    aget v10, v6, v12

    add-int/2addr v10, v3

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v9, v5, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 1790
    :goto_56
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1791
    return v12

    .line 1788
    :cond_5a
    const/16 v9, 0x51

    invoke-virtual {v0, v9, v11, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_56
.end method

.method public onMeasure(II)V
    .registers 20
    .param p1, "origWidthMeasureSpec"    # I
    .param p2, "origHeightMeasureSpec"    # I

    .prologue
    .line 1569
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1570
    .local v10, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1571
    .local v9, "specWidthMode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v14}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v7

    .line 1574
    .local v7, "maxWidth":I
    move/from16 v4, p2

    .line 1576
    .local v4, "heightMeasureSpec":I
    if-lez v7, :cond_bd

    if-eqz v9, :cond_18

    if-le v10, v7, :cond_bd

    .line 1580
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v14, v14, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1587
    .local v13, "widthMeasureSpec":I
    :goto_24
    move-object/from16 v0, p0

    invoke-super {v0, v13, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_bc

    .line 1591
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1592
    .local v8, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v11, v14, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 1593
    .local v11, "textSize":F
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1595
    .local v6, "maxLines":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v14, :cond_c1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getVisibility()I

    move-result v14

    if-nez v14, :cond_c1

    .line 1597
    const/4 v6, 0x1

    .line 1603
    :cond_4e
    :goto_4e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 1604
    .local v3, "curTextSize":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 1605
    .local v1, "curLineCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v2

    .line 1607
    .local v2, "curMaxLines":I
    cmpl-float v14, v11, v3

    if-nez v14, :cond_6e

    if-ltz v2, :cond_bc

    if-eq v6, v2, :cond_bc

    .line 1609
    :cond_6e
    const/4 v12, 0x1

    .line 1611
    .local v12, "updateTextView":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v14, v14, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a6

    cmpl-float v14, v11, v3

    if-lez v14, :cond_a6

    const/4 v14, 0x1

    if-ne v1, v14, :cond_a6

    .line 1617
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1618
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_a5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v11}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v14

    .line 1619
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_a6

    .line 1620
    :cond_a5
    const/4 v12, 0x0

    .line 1624
    .end local v5    # "layout":Landroid/text/Layout;
    :cond_a6
    if-eqz v12, :cond_bc

    .line 1625
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1627
    move-object/from16 v0, p0

    invoke-super {v0, v13, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1631
    .end local v1    # "curLineCount":I
    .end local v2    # "curMaxLines":I
    .end local v3    # "curTextSize":F
    .end local v6    # "maxLines":I
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v11    # "textSize":F
    .end local v12    # "updateTextView":Z
    :cond_bc
    return-void

    .line 1583
    .end local v13    # "widthMeasureSpec":I
    :cond_bd
    move/from16 v13, p1

    .restart local v13    # "widthMeasureSpec":I
    goto/16 :goto_24

    .line 1598
    .restart local v6    # "maxLines":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v11    # "textSize":F
    :cond_c1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_4e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLineCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_4e

    .line 1600
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v11, v14, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    goto/16 :goto_4e
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 1514
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1516
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_14

    .line 1517
    if-nez v0, :cond_e

    .line 1518
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 1520
    :cond_e
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 1521
    const/4 v0, 0x1

    .line 1523
    .end local v0    # "handled":Z
    :cond_14
    return v0
.end method

.method reset()V
    .registers 2

    .prologue
    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1642
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1643
    return-void
.end method

.method public setSelected(Z)V
    .registers 5
    .param p1, "selected"    # Z

    .prologue
    .line 1529
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_34

    const/4 v0, 0x1

    .line 1531
    .local v0, "changed":Z
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1533
    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_18

    .line 1535
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1540
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    .line 1541
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1543
    :cond_21
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2a

    .line 1544
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1546
    :cond_2a
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_33

    .line 1547
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1549
    :cond_33
    return-void

    .line 1529
    .end local v0    # "changed":Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_7
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1634
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_9

    .line 1635
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1636
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1638
    :cond_9
    return-void
.end method

.method final update()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1646
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1647
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1648
    .local v0, "custom":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_c6

    .line 1649
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1650
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1e

    .line 1651
    if-eqz v1, :cond_1b

    .line 1652
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1654
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1656
    :cond_1e
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1657
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_29

    .line 1658
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1660
    :cond_29
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v7, :cond_37

    .line 1661
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1662
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1665
    :cond_37
    const v5, 0x1020014

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1666
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4e

    .line 1667
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1669
    :cond_4e
    const v5, 0x1020006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1680
    :goto_59
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v5, :cond_d6

    .line 1682
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_76

    .line 1683
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    .line 1684
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1685
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v6}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1686
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1688
    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_76
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_97

    .line 1689
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Landroid/support/design/R$layout;->design_layout_tab_text:I

    .line 1690
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1691
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1692
    iput-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1693
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1695
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_97
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v7, v7, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    invoke-static {v5, v7}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1696
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_af

    .line 1697
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1699
    :cond_af
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1708
    :cond_b6
    :goto_b6
    if-eqz v3, :cond_e6

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_e6

    const/4 v5, 0x1

    :goto_bf
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1709
    return-void

    .end local v0    # "custom":Landroid/view/View;
    :cond_c3
    move-object v0, v5

    .line 1647
    goto/16 :goto_c

    .line 1672
    .restart local v0    # "custom":Landroid/view/View;
    :cond_c6
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v7, :cond_d1

    .line 1673
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1674
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1676
    :cond_d1
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1677
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_59

    .line 1702
    :cond_d6
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v5, :cond_de

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_b6

    .line 1703
    :cond_de
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_b6

    :cond_e6
    move v5, v6

    .line 1708
    goto :goto_bf
.end method
