.class Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;
.super Ljava/lang/Object;
.source "ShowPageHeaderHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->animateOverlay(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayAlpha(F)V
    invoke-static {v1, v0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$100(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;F)V

    .line 99
    return-void
.end method
