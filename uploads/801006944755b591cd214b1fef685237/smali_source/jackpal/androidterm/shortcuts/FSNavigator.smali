.class public Ljackpal/androidterm/shortcuts/FSNavigator;
.super Landroid/app/Activity;
.source "FSNavigator.java"


# instance fields
.field private final ACTION_THEME_SWAP:I

.field private final BUTTON_SIZE:I

.field private SP:Landroid/content/SharedPreferences;

.field private cachedDirectoryView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDividerView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private cachedFileView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private cd:Ljava/io/File;

.field private contentView:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private countDirectoryView:I

.field private countDividerView:I

.field private countFileView:I

.field directoryListener:Landroid/view/View$OnClickListener;

.field private extSdCard:Ljava/lang/String;

.field private extSdCardFile:Ljava/io/File;

.field fileListener:Landroid/view/View$OnClickListener;

.field private pathEntryView:Landroid/widget/LinearLayout;

.field stringSortComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textLg:F

.field private theme:I

.field private titleView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/16 v0, 0x100

    iput v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->ACTION_THEME_SWAP:I

    .line 31
    const/16 v0, 0x96

    iput v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->BUTTON_SIZE:I

    .line 32
    iput-object p0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    .line 33
    const/high16 v0, 0x41c00000

    iput v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->textLg:F

    .line 34
    const v0, 0x1030005

    iput v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    .line 161
    new-instance v0, Ljackpal/androidterm/shortcuts/FSNavigator$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/shortcuts/FSNavigator$1;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->fileListener:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Ljackpal/androidterm/shortcuts/FSNavigator$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/shortcuts/FSNavigator$3;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryListener:Landroid/view/View$OnClickListener;

    .line 487
    new-instance v0, Ljackpal/androidterm/shortcuts/FSNavigator$6;

    invoke-direct {v0, p0}, Ljackpal/androidterm/shortcuts/FSNavigator$6;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->stringSortComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/shortcuts/FSNavigator;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/FSNavigator;

    .prologue
    .line 27
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/shortcuts/FSNavigator;Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/FSNavigator;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/shortcuts/FSNavigator;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/FSNavigator;

    .prologue
    .line 27
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->makeView()V

    return-void
.end method

.method static synthetic access$300(Ljackpal/androidterm/shortcuts/FSNavigator;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/FSNavigator;

    .prologue
    .line 27
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    return-object v0
.end method

.method private chdir(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljackpal/androidterm/shortcuts/FSNavigator;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->ifAvailable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "path":Ljava/lang/String;
    const-string v1, "user.dir"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    return-object v1
.end method

.method private chdir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private directoryEntry(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v3, ".."

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 370
    .local v2, "up":Z
    if-eqz v2, :cond_48

    invoke-direct {p0, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryView(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 378
    .local v0, "ll":Landroid/widget/LinearLayout;
    :goto_c
    const v3, 0x7f070003

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 379
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 380
    if-eqz v2, :cond_77

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_39
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const/high16 v3, 0x7f070000

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 384
    return-object v0

    .line 373
    .end local v0    # "ll":Landroid/widget/LinearLayout;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_48
    iget v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDirectoryView:I

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDirectoryView:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_67

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDirectoryView:Ljava/util/HashMap;

    iget v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDirectoryView:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 375
    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    :goto_60
    iget v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDirectoryView:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDirectoryView:I

    goto :goto_c

    .line 374
    .end local v0    # "ll":Landroid/widget/LinearLayout;
    :cond_67
    invoke-direct {p0, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryView(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDirectoryView:Ljava/util/HashMap;

    iget v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDirectoryView:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_77
    move-object v3, p1

    .line 380
    goto :goto_39
.end method

.method private directoryView(Z)Landroid/widget/LinearLayout;
    .registers 12
    .param p1, "up"    # Z

    .prologue
    const/16 v9, 0xa

    const/4 v5, 0x5

    const/16 v8, 0x96

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 318
    invoke-direct {p0, p1}, Ljackpal/androidterm/shortcuts/FSNavigator;->imageViewFolder(Z)Landroid/widget/ImageView;

    move-result-object v0

    .line 319
    .local v0, "b1":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 320
    .local v3, "tv":Landroid/widget/TextView;
    if-eqz p1, :cond_87

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    :goto_19
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 323
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 324
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 325
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 327
    iget v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->textLg:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    invoke-virtual {v3, v9, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 329
    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 330
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000

    invoke-direct {v4, v7, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v1, Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, "hv":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v1, v6}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 340
    invoke-virtual {v1, v6}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 341
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40e00000

    invoke-direct {v4, v7, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    .local v2, "ll":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000

    invoke-direct {v4, v7, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 358
    const/16 v4, 0x77

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 359
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    return-object v2

    .line 321
    .end local v1    # "hv":Landroid/widget/HorizontalScrollView;
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    :cond_87
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_19
.end method

.method private doOptionsItem(I)Z
    .registers 3
    .param p1, "itemId"    # I

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_a

    .line 522
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 520
    :pswitch_5
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->swapTheme()V

    const/4 v0, 0x1

    goto :goto_4

    .line 518
    :pswitch_data_a
    .packed-switch 0x100
        :pswitch_5
    .end packed-switch
.end method

.method private doPause()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->SP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastDirectory"

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    invoke-virtual {p0, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method private doResume()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->makeView()V

    .line 95
    return-void
.end method

.method private entryDividerH()Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 141
    iget v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDividerView:I

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDividerView:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 143
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDividerView:Ljava/util/HashMap;

    iget v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDividerView:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, "tv":Landroid/widget/TextView;
    :goto_18
    iget v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDividerView:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDividerView:I

    .line 158
    return-object v0

    .line 147
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_1f
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    .restart local v0    # "tv":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDividerView:Ljava/util/HashMap;

    iget v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDividerView:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method private fileEntry(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 265
    if-nez p1, :cond_24

    if-nez p1, :cond_22

    :goto_6
    invoke-direct {p0, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->fileView(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 272
    .local v0, "ll":Landroid/widget/LinearLayout;
    :goto_a
    const v2, 0x7f070003

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 273
    .local v1, "tv":Landroid/widget/TextView;
    if-nez p1, :cond_57

    const-string v2, ""

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    if-nez p1, :cond_1e

    const-string p1, ""

    .end local p1    # "entry":Ljava/lang/String;
    :cond_1e
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 275
    return-object v0

    .end local v0    # "ll":Landroid/widget/LinearLayout;
    .end local v1    # "tv":Landroid/widget/TextView;
    .restart local p1    # "entry":Ljava/lang/String;
    :cond_22
    move v2, v3

    .line 265
    goto :goto_6

    .line 268
    :cond_24
    iget v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countFileView:I

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedFileView:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedFileView:Ljava/util/HashMap;

    iget v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countFileView:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 270
    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    :goto_3c
    iget v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countFileView:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countFileView:I

    goto :goto_a

    .line 269
    .end local v0    # "ll":Landroid/widget/LinearLayout;
    :cond_43
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedFileView:Ljava/util/HashMap;

    iget v5, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countFileView:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez p1, :cond_55

    :goto_4d
    invoke-direct {p0, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->fileView(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .end local v0    # "ll":Landroid/widget/LinearLayout;
    :cond_55
    move v2, v3

    goto :goto_4d

    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_57
    move-object v2, p1

    .line 273
    goto :goto_17
.end method

.method private fileView(Z)Landroid/widget/LinearLayout;
    .registers 12
    .param p1, "entryWindow"    # Z

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    const/high16 v5, 0x3f800000

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 176
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    const/16 v3, 0x77

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 187
    if-eqz p1, :cond_67

    .line 189
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, "tv":Landroid/widget/TextView;
    const v3, 0x7f090037

    invoke-virtual {p0, v3}, Ljackpal/androidterm/shortcuts/FSNavigator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v3, Ljackpal/androidterm/shortcuts/FSNavigator$2;

    invoke-direct {v3, p0, v2}, Ljackpal/androidterm/shortcuts/FSNavigator$2;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    :goto_48
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 252
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 253
    iget v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->textLg:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 255
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 256
    invoke-virtual {v2, v9, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 259
    return-object v1

    .line 228
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_67
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    .restart local v2    # "tv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 230
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 231
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->fileListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "hv":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v0, v7}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 241
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x96

    const/high16 v5, 0x40e00000

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_48
.end method

.method private ifAvailable(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "goTo"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->extSdCard:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "s":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 124
    .end local v0    # "s":Ljava/lang/String;
    .end local p1    # "goTo":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-object p1

    .line 121
    .restart local v0    # "s":Ljava/lang/String;
    .restart local p1    # "goTo":Ljava/lang/String;
    :cond_1d
    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljackpal/androidterm/shortcuts/FSNavigator;->toast(Ljava/lang/String;I)V

    .line 122
    iget-object p1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->extSdCard:Ljava/lang/String;

    goto :goto_1c
.end method

.method private imageViewFolder(Z)Landroid/widget/ImageView;
    .registers 6
    .param p1, "up"    # Z

    .prologue
    const/16 v3, 0x78

    const/4 v2, 0x1

    .line 280
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, "b1":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 282
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 283
    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 284
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    if-eqz p1, :cond_32

    const v1, 0x7f020005

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 294
    return-object v0

    .line 291
    :cond_32
    const v1, 0x7f020004

    goto :goto_24
.end method

.method private makeContentView()Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/16 v8, 0x77

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 395
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 396
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    const v3, 0x7f070001

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 404
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 406
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 407
    .local v2, "sv":Landroid/widget/ScrollView;
    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setId(I)V

    .line 408
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 416
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "bg":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 425
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 426
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 427
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->titleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 431
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->pathEntryView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 436
    return-object v0
.end method

.method private makeView()V
    .registers 13

    .prologue
    const v11, 0x7f070003

    const/4 v10, 0x0

    .line 441
    iput v10, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countFileView:I

    iput v10, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->countDirectoryView:I

    .line 442
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->contentView:Landroid/widget/LinearLayout;

    const v8, 0x7f070002

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 443
    .local v4, "sv":Landroid/widget/ScrollView;
    const v7, 0x7f070001

    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 444
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 445
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    if-nez v7, :cond_28

    const-string v7, "/"

    invoke-direct {p0, v7}, Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/lang/String;)Ljava/io/File;

    .line 446
    :cond_28
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    invoke-virtual {p0, v7}, Ljackpal/androidterm/shortcuts/FSNavigator;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "path":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    const-string v3, "/"

    invoke-direct {p0, v3}, Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/lang/String;)Ljava/io/File;

    .line 449
    :cond_3b
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 451
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->titleView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    :goto_4a
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    new-instance v8, Ljackpal/androidterm/shortcuts/FSNavigator$4;

    invoke-direct {v8, p0}, Ljackpal/androidterm/shortcuts/FSNavigator$4;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "zd":[Ljava/lang/String;
    if-eqz v5, :cond_b4

    .line 463
    array-length v7, v5

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->stringSortComparator:Ljava/util/Comparator;

    invoke-static {v5, v10, v7, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v5

    .local v2, "n":I
    :goto_5f
    if-ge v0, v2, :cond_b4

    .line 466
    aget-object v7, v5, v0

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 464
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 455
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v5    # "zd":[Ljava/lang/String;
    :cond_6e
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->titleView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->titleView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 457
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->titleView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 467
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v5    # "zd":[Ljava/lang/String;
    :cond_a3
    aget-object v7, v5, v0

    invoke-direct {p0, v7}, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryEntry(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->entryDividerH()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6b

    .line 471
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_b4
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cd:Ljava/io/File;

    new-instance v8, Ljackpal/androidterm/shortcuts/FSNavigator$5;

    invoke-direct {v8, p0}, Ljackpal/androidterm/shortcuts/FSNavigator$5;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "zf":[Ljava/lang/String;
    if-eqz v6, :cond_de

    .line 474
    array-length v7, v6

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->stringSortComparator:Ljava/util/Comparator;

    invoke-static {v6, v10, v7, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 475
    const/4 v0, 0x0

    .restart local v0    # "i":I
    array-length v2, v6

    .restart local v2    # "n":I
    :goto_c9
    if-ge v0, v2, :cond_de

    .line 477
    aget-object v7, v6, v0

    invoke-direct {p0, v7}, Ljackpal/androidterm/shortcuts/FSNavigator;->fileEntry(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->entryDividerH()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 481
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_de
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->pathEntryView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v4, v10, v10}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 484
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Ljackpal/androidterm/shortcuts/FSNavigator;->setContentView(Landroid/view/View;)V

    .line 485
    return-void
.end method

.method private swapTheme()V
    .registers 4

    .prologue
    .line 99
    iget v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    sparse-switch v0, :sswitch_data_34

    .line 108
    :goto_5
    return-void

    .line 101
    :sswitch_6
    const v0, 0x103000c

    iput v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    .line 105
    :goto_b
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->SP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    iget v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->finish()V

    goto :goto_5

    .line 102
    :sswitch_2e
    const v0, 0x1030005

    iput v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    goto :goto_b

    .line 99
    :sswitch_data_34
    .sparse-switch
        0x1030005 -> :sswitch_6
        0x103000c -> :sswitch_2e
    .end sparse-switch
.end method

.method private toast(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 528
    new-instance v0, Ljackpal/androidterm/shortcuts/FSNavigator$7;

    invoke-direct {v0, p0, p1, p2}, Ljackpal/androidterm/shortcuts/FSNavigator$7;-><init>(Ljackpal/androidterm/shortcuts/FSNavigator;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 537
    return-void
.end method


# virtual methods
.method getCanonicalPath(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 498
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    :goto_4
    return-object v1

    :catch_5
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 494
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v4, 0x7f090038

    invoke-virtual {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->SP:Landroid/content/SharedPreferences;

    .line 55
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->SP:Landroid/content/SharedPreferences;

    const-string v5, "theme"

    iget v6, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    .line 56
    iget v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->theme:I

    invoke-virtual {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->setTheme(I)V

    .line 57
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 59
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->extSdCardFile:Ljava/io/File;

    .line 61
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->extSdCardFile:Ljava/io/File;

    invoke-virtual {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->extSdCard:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 63
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_90

    move-object v1, v3

    .line 64
    .local v1, "path":Ljava/lang/String;
    :goto_48
    if-eqz v1, :cond_50

    invoke-direct {p0, v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_55

    :cond_50
    iget-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->extSdCard:Ljava/lang/String;

    invoke-direct {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->chdir(Ljava/lang/String;)Ljava/io/File;

    .line 65
    :cond_55
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    :cond_66
    const-string v4, ".."

    invoke-direct {p0, v4}, Ljackpal/androidterm/shortcuts/FSNavigator;->directoryEntry(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->titleView:Landroid/widget/LinearLayout;

    .line 68
    invoke-direct {p0, v3}, Ljackpal/androidterm/shortcuts/FSNavigator;->fileEntry(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->pathEntryView:Landroid/widget/LinearLayout;

    .line 69
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->makeContentView()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->contentView:Landroid/widget/LinearLayout;

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDirectoryView:Ljava/util/HashMap;

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedFileView:Ljava/util/HashMap;

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljackpal/androidterm/shortcuts/FSNavigator;->cachedDividerView:Ljava/util/HashMap;

    .line 73
    return-void

    .line 63
    .end local v1    # "path":Ljava/lang/String;
    :cond_90
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_48
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 504
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 506
    const/16 v0, 0x100

    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Ljackpal/androidterm/shortcuts/FSNavigator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 389
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->finish()V

    const/4 v0, 0x1

    .line 390
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 513
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->doOptionsItem(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->doPause()V

    .line 79
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-direct {p0}, Ljackpal/androidterm/shortcuts/FSNavigator;->doResume()V

    .line 90
    return-void
.end method
