.class Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;
.super Ljava/lang/Object;
.source "ShareBarViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->animateIn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

.field final synthetic val$startDelay:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    iput p2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;->val$startDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 79
    iget v1, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;->val$startDelay:I

    .line 80
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->access$100(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 81
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->access$100(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v2, v1, v3}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 83
    :cond_22
    return-void
.end method
