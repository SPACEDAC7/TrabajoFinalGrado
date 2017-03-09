.class Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "AutoResizeTextView.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$SizeTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final textRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onTestSize(ILandroid/graphics/RectF;)I
    .registers 16
    .param p1, "suggestedSize"    # I
    .param p2, "availableSPace"    # Landroid/graphics/RectF;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 70
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$000(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 71
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getMaxLines()I

    move-result v2

    if-ne v2, v7, :cond_4d

    move v10, v7

    .line 73
    .local v10, "singleline":Z
    :goto_20
    if-eqz v10, :cond_4f

    .line 74
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;
    invoke-static {v3}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$000(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 75
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;
    invoke-static {v3}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$000(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 88
    :goto_3e
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v12, v12}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 89
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v7, v11

    .line 93
    :cond_4c
    return v7

    .line 72
    .end local v10    # "singleline":Z
    :cond_4d
    const/4 v10, 0x0

    goto :goto_20

    .line 77
    .restart local v10    # "singleline":Z
    :cond_4f
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->paint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$000(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->widthLimit:I
    invoke-static {v3}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$100(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v5, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingMult:F
    invoke-static {v5}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$200(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)F

    move-result v5

    iget-object v6, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    # getter for: Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->spacingAdd:F
    invoke-static {v6}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->access$300(Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;)F

    move-result v6

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 79
    .local v0, "layout":Landroid/text/StaticLayout;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getMaxLines()I

    move-result v2

    if-eq v2, v11, :cond_82

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->this$0:Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView;->getMaxLines()I

    move-result v3

    if-gt v2, v3, :cond_4c

    .line 81
    :cond_82
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 82
    const/4 v9, -0x1

    .line 83
    .local v9, "maxWidth":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8d
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v8, v2, :cond_a4

    .line 84
    int-to-float v2, v9

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a1

    .line 85
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-int v9, v2

    .line 83
    :cond_a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_8d

    .line 86
    :cond_a4
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    int-to-float v3, v9

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_3e
.end method
