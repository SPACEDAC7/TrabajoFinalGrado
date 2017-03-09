.class Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;
.super Ljava/lang/Object;
.source "TermViewFlipper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/TermViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlipperIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Ljackpal/androidterm/TermViewFlipper;


# direct methods
.method constructor <init>(Ljackpal/androidterm/TermViewFlipper;)V
    .registers 3

    .prologue
    .line 67
    iput-object p1, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->this$0:Ljackpal/androidterm/TermViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->pos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->pos:I

    iget-object v1, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->this$0:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()Landroid/view/View;
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->this$0:Ljackpal/androidterm/TermViewFlipper;

    iget v1, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->pos:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;->next()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
