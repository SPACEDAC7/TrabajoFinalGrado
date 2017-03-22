.class Lyuku/ambilwarna/AmbilWarnaDialog$2;
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
    iput-object p1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_17

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_17

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_8c

    .line 83
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 84
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 86
    .local v1, "y":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_24

    const/4 v0, 0x0

    .line 87
    :cond_24
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3a

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v3

    int-to-float v0, v3

    .line 88
    :cond_3a
    cmpg-float v3, v1, v6

    if-gez v3, :cond_3f

    const/4 v1, 0x0

    .line 89
    :cond_3f
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_55

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v3

    int-to-float v1, v3

    .line 91
    :cond_55
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, v4, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v0

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->setSat(F)V
    invoke-static {v3, v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$3(Lyuku/ambilwarna/AmbilWarnaDialog;F)V

    .line 92
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, v4, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v1

    sub-float v4, v5, v4

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->setVal(F)V
    invoke-static {v3, v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$4(Lyuku/ambilwarna/AmbilWarnaDialog;F)V

    .line 95
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaDialog;->moveTarget()V

    .line 96
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->getColor()I
    invoke-static {v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$2(Lyuku/ambilwarna/AmbilWarnaDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_8b
    return v2

    :cond_8c
    const/4 v2, 0x0

    goto :goto_8b
.end method
