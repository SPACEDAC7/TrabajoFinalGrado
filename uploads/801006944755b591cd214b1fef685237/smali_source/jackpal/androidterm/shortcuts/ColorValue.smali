.class public Ljackpal/androidterm/shortcuts/ColorValue;
.super Ljava/lang/Object;
.source "ColorValue.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final FP:I

.field private final WC:I

.field private barLock:Z

.field private builder:Landroid/app/AlertDialog$Builder;

.field private final color:[I

.field private final context:Landroid/content/Context;

.field private imgtext:Ljava/lang/String;

.field private final imgview:Landroid/widget/ImageView;

.field private final locks:[Z

.field private final result:[Ljava/lang/String;

.field private started:Z

.field private value:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;[Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imgview"    # Landroid/widget/ImageView;
    .param p3, "result"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v2, [I

    fill-array-data v0, :array_30

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    .line 27
    iput-boolean v1, p0, Ljackpal/androidterm/shortcuts/ColorValue;->started:Z

    .line 29
    iput-boolean v1, p0, Ljackpal/androidterm/shortcuts/ColorValue;->barLock:Z

    .line 30
    new-array v0, v2, [Z

    fill-array-data v0, :array_3c

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->FP:I

    .line 32
    const/4 v0, -0x2

    iput v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->WC:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    .line 41
    aget-object v0, p3, v1

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgview:Landroid/widget/ImageView;

    .line 43
    iput-object p3, p0, Ljackpal/androidterm/shortcuts/ColorValue;->result:[Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/ColorValue;->colorValue()V

    .line 45
    return-void

    .line 26
    nop

    :array_30
    .array-data 4
        0xff
        0x0
        0x0
        0x0
    .end array-data

    .line 30
    :array_3c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Ljackpal/androidterm/shortcuts/ColorValue;)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/ColorValue;

    .prologue
    .line 21
    iget-boolean v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->started:Z

    return v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/ColorValue;

    .prologue
    .line 21
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/shortcuts/ColorValue;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/ColorValue;

    .prologue
    .line 21
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/shortcuts/ColorValue;)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/ColorValue;

    .prologue
    .line 21
    iget-boolean v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->barLock:Z

    return v0
.end method

.method static synthetic access$400(Ljackpal/androidterm/shortcuts/ColorValue;)[Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/ColorValue;

    .prologue
    .line 21
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z

    return-object v0
.end method

.method static synthetic access$500(Ljackpal/androidterm/shortcuts/ColorValue;II)V
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/ColorValue;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/shortcuts/ColorValue;->buttonHit(II)V

    return-void
.end method

.method private buttonHit(II)V
    .registers 7
    .param p1, "hit"    # I
    .param p2, "color"    # I

    .prologue
    const/16 v3, 0x60

    .line 192
    packed-switch p1, :pswitch_data_38

    .line 213
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 197
    :pswitch_6
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->result:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 199
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgview:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgview:Landroid/widget/ImageView;

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    invoke-static {v1, p2, v3, v3}, Ljackpal/androidterm/shortcuts/TextIcon;->getTextIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 192
    :pswitch_data_38
    .packed-switch -0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public colorValue()V
    .registers 26

    .prologue
    .line 48
    const/4 v5, 0x4

    .line 49
    .local v5, "arraySizes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    sget v21, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_HOLO_DARK:I

    invoke-static/range {v20 .. v21}, Ljackpal/androidterm/compat/AlertDialogCompat;->newInstanceBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljackpal/androidterm/shortcuts/ColorValue;->builder:Landroid/app/AlertDialog$Builder;

    .line 50
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v13, "lv":Landroid/widget/LinearLayout;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v9, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090014

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090017

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090016

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090015

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    .line 58
    .local v9, "lab":[Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v6, v0, [I

    fill-array-data v6, :array_3a0

    .line 59
    .local v6, "clr":[I
    const/4 v8, 0x0

    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->imgview:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .local v14, "n":I
    :goto_d7
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v8, v0, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    move-object/from16 v20, v0

    mul-int/lit8 v21, v8, 0x8

    rsub-int/lit8 v21, v21, 0x18

    shr-int v21, v14, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aput v21, v20, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d7

    .line 60
    :cond_f4
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v12, "lt":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f090013

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v20

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v21

    const/16 v22, 0x5

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    new-instance v20, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->imgtext:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x11

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setGravity(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->imgview:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, -0xff8867

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 70
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v19, "vh":Landroid/widget/LinearLayout;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f090012

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 75
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    .line 78
    .local v16, "sb":[Landroid/widget/SeekBar;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v11, v0, [Landroid/widget/CheckBox;

    .line 79
    .local v11, "lk":[Landroid/widget/CheckBox;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v7, v0, [Landroid/widget/TextView;

    .line 80
    .local v7, "hexWindow":[Landroid/widget/TextView;
    const/4 v8, 0x0

    :goto_1e3
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v8, v0, :cond_2e6

    .line 82
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v10, "lh":Landroid/widget/LinearLayout;
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v18, "tv":Landroid/widget/TextView;
    sget-object v20, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    aget-object v20, v9, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    aget v20, v6, v8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    new-instance v20, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    aput-object v20, v16, v8

    .line 89
    aget-object v20, v16, v8

    const/16 v21, 0xff

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    aget-object v20, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 91
    aget-object v20, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 92
    aget-object v20, v16, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 93
    aget-object v20, v16, v8

    const/high16 v21, -0x1000000

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    mul-int/lit8 v23, v8, 0x8

    rsub-int/lit8 v23, v23, 0x18

    shl-int v22, v22, v23

    or-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 94
    aget-object v20, v16, v8

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/high16 v24, 0x3f800000

    invoke-direct/range {v21 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    aget-object v20, v16, v8

    new-instance v21, Ljackpal/androidterm/shortcuts/ColorValue$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Ljackpal/androidterm/shortcuts/ColorValue$1;-><init>(Ljackpal/androidterm/shortcuts/ColorValue;[Landroid/widget/TextView;[Landroid/widget/SeekBar;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    new-instance v20, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    aput-object v20, v11, v8

    .line 135
    aget-object v20, v11, v8

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    aget-object v20, v11, v8

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    aget-object v20, v11, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 138
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    aget-object v20, v16, v8

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    aget-object v20, v11, v8

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    const/16 v20, -0x1

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1e3

    .line 144
    .end local v10    # "lh":Landroid/widget/LinearLayout;
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_2e6
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v10    # "lh":Landroid/widget/LinearLayout;
    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    const/4 v8, 0x0

    :goto_2fb
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v8, v0, :cond_32b

    .line 148
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v20, v7, v8

    .line 149
    aget-object v20, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->color:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljackpal/androidterm/shortcuts/ColorValue;->toHexWindow(Landroid/widget/TextView;I)V

    .line 150
    aget-object v20, v7, v8

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto :goto_2fb

    .line 152
    :cond_32b
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v17, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v17, "sv":Landroid/widget/ScrollView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->builder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v15, Ljackpal/androidterm/shortcuts/ColorValue$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljackpal/androidterm/shortcuts/ColorValue$2;-><init>(Ljackpal/androidterm/shortcuts/ColorValue;)V

    .line 164
    .local v15, "ocl":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f090008

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "Title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->builder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->builder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    const v21, 0x1040013

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->builder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    const/high16 v21, 0x1040000

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/shortcuts/ColorValue;->builder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljackpal/androidterm/shortcuts/ColorValue;->started:Z

    .line 170
    return-void

    .line 58
    nop

    :array_3a0
    .array-data 4
        -0x1
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    .local v1, "view":I
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z

    aput-boolean p2, v2, v1

    .line 186
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->barLock:Z

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljackpal/androidterm/shortcuts/ColorValue;->barLock:Z

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 188
    :cond_23
    return-void
.end method

.method public toHexWindow(Landroid/widget/TextView;I)V
    .registers 11
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "k"    # I

    .prologue
    .line 174
    const-string v0, "0123456789ABCDEF"

    .line 175
    .local v0, "HEX":Ljava/lang/String;
    const-string v2, ""

    .line 176
    .local v2, "s":Ljava/lang/String;
    const/16 v1, 0x8

    .line 177
    .local v1, "n":I
    int-to-long v4, p2

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int p2, v4

    .line 178
    add-int/lit8 v1, v1, -0x4

    :goto_d
    if-ltz v1, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int v4, p2, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x4

    goto :goto_d

    .line 179
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method
