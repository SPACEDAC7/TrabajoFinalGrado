.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$6;
.super Ljava/lang/Object;
.source "ReactionsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;->createRippleListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$6;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 442
    .local v0, "action":I
    if-nez v0, :cond_19

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 444
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 446
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_19
    const/4 v2, 0x0

    return v2
.end method
