.class public Lyuku/ambilwarna/AmbilWarnaDialog;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;
    }
.end annotation


# instance fields
.field final currentColorHsv:[F

.field final dialog:Landroid/app/AlertDialog;

.field final listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

.field final viewContainer:Landroid/view/ViewGroup;

.field final viewCursor:Landroid/widget/ImageView;

.field final viewHue:Landroid/view/View;

.field final viewNewColor:Landroid/view/View;

.field final viewOldColor:Landroid/view/View;

.field final viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

.field final viewTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "listener"    # Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    .line 38
    iput-object p3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    .line 39
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lyuku/ambilwarna/R$layout;->ambilwarna_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "view":Landroid/view/View;
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_viewHue:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    .line 43
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_viewSatBri:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyuku/ambilwarna/AmbilWarnaKotak;

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    .line 44
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_cursor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    .line 45
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_warnaLama:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewOldColor:Landroid/view/View;

    .line 46
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_warnaBaru:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    .line 47
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_target:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    .line 48
    sget v0, Lyuku/ambilwarna/R$id;->ambilwarna_viewContainer:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F

    move-result v3

    invoke-virtual {v0, v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->setHue(F)V

    .line 51
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewOldColor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    new-instance v3, Lyuku/ambilwarna/AmbilWarnaDialog$1;

    invoke-direct {v3, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$1;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    new-instance v3, Lyuku/ambilwarna/AmbilWarnaDialog$2;

    invoke-direct {v3, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$2;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v0, v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    const v3, 0x104000a

    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog$3;

    invoke-direct {v4, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$3;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    const/high16 v3, 0x1040000

    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog$4;

    invoke-direct {v4, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$4;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    new-instance v3, Lyuku/ambilwarna/AmbilWarnaDialog$5;

    invoke-direct {v3, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$5;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    iput-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    .line 130
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 134
    .local v6, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lyuku/ambilwarna/AmbilWarnaDialog$6;

    invoke-direct {v0, p0, v1}, Lyuku/ambilwarna/AmbilWarnaDialog$6;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    return-void
.end method

.method static synthetic access$0(Lyuku/ambilwarna/AmbilWarnaDialog;F)V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lyuku/ambilwarna/AmbilWarnaDialog;->setHue(F)V

    return-void
.end method

.method static synthetic access$1(Lyuku/ambilwarna/AmbilWarnaDialog;)F
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lyuku/ambilwarna/AmbilWarnaDialog;)I
    .registers 2

    .prologue
    .line 163
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lyuku/ambilwarna/AmbilWarnaDialog;F)V
    .registers 2

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lyuku/ambilwarna/AmbilWarnaDialog;->setSat(F)V

    return-void
.end method

.method static synthetic access$4(Lyuku/ambilwarna/AmbilWarnaDialog;F)V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lyuku/ambilwarna/AmbilWarnaDialog;->setVal(F)V

    return-void
.end method

.method private getColor()I
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private getHue()F
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getSat()F
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getVal()F
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private setHue(F)V
    .registers 4
    .param p1, "hue"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 181
    return-void
.end method

.method private setSat(F)V
    .registers 4
    .param p1, "sat"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 185
    return-void
.end method

.method private setVal(F)V
    .registers 4
    .param p1, "val"    # F

    .prologue
    .line 188
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 189
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected moveCursor()V
    .registers 7

    .prologue
    .line 144
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F

    move-result v3

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 145
    .local v1, "y":F
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_24

    const/4 v1, 0x0

    .line 146
    :cond_24
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 149
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-double v2, v2

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 151
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method protected moveTarget()V
    .registers 8

    .prologue
    .line 155
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getSat()F

    move-result v3

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    .line 156
    .local v1, "x":F
    const/high16 v3, 0x3f800000

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getVal()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 157
    .local v2, "y":F
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-double v3, v3

    iget-object v5, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 159
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-double v3, v3

    iget-object v5, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 160
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 193
    return-void
.end method
