.class Lcom/buzzfeed/android/ui/widget/TextCardView$1;
.super Lcom/buzzfeed/toolkit/util/AnimatorListener;
.source "TextCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/widget/TextCardView;->setText(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/widget/TextCardView;

.field final synthetic val$newText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/widget/TextCardView;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/widget/TextCardView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/buzzfeed/android/ui/widget/TextCardView$1;->this$0:Lcom/buzzfeed/android/ui/widget/TextCardView;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/widget/TextCardView$1;->val$newText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/TextCardView$1;->this$0:Lcom/buzzfeed/android/ui/widget/TextCardView;

    # getter for: Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/widget/TextCardView;->access$000(Lcom/buzzfeed/android/ui/widget/TextCardView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/TextCardView$1;->val$newText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/TextCardView$1;->this$0:Lcom/buzzfeed/android/ui/widget/TextCardView;

    # getter for: Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/widget/TextCardView;->access$000(Lcom/buzzfeed/android/ui/widget/TextCardView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_26

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 70
    .local v0, "fadeIn":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    return-void

    .line 69
    :array_26
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
