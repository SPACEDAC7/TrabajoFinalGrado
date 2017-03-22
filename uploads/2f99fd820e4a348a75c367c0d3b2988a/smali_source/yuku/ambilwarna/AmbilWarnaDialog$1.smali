.class Lyuku/ambilwarna/AmbilWarnaDialog$1;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyuku/ambilwarna/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x43b40000

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_16

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_16

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_73

    .line 60
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 61
    .local v1, "y":F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_20

    const/4 v1, 0x0

    .line 62
    :cond_20
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3b

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3a83126f

    sub-float v1, v3, v4

    .line 63
    :cond_3b
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    mul-float/2addr v3, v1

    sub-float v0, v5, v3

    .line 64
    .local v0, "hue":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_4e

    const/4 v0, 0x0

    .line 65
    :cond_4e
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->setHue(F)V
    invoke-static {v3, v0}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$0(Lyuku/ambilwarna/AmbilWarnaDialog;F)V

    .line 68
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F
    invoke-static {v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$1(Lyuku/ambilwarna/AmbilWarnaDialog;)F

    move-result v4

    invoke-virtual {v3, v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->setHue(F)V

    .line 69
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaDialog;->moveCursor()V

    .line 70
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$1;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->getColor()I
    invoke-static {v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$2(Lyuku/ambilwarna/AmbilWarnaDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .end local v0    # "hue":F
    .end local v1    # "y":F
    :goto_72
    return v2

    :cond_73
    const/4 v2, 0x0

    goto :goto_72
.end method
