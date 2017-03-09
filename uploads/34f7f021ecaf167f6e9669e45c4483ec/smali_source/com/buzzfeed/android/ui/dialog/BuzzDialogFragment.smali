.class public Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BuzzDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;,
        Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ListDialogCustomized;,
        Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;,
        Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ADAPTER_CONTENT:Ljava/lang/String; = "adapter"

.field private static final CUSTOMIZED_BLUE_LIST_STYLE:I = 0x1

.field private static final DEFAULT_LIST_STYLE:I = 0x0

.field public static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "dialogFragmentTag"

.field public static final EXTRA_BUTTON_ID:I = 0x7f1100d7

.field private static final KEY_IMG_FORMAT:Ljava/lang/String; = "img"

.field protected static final KEY_RESOURCEID_PREFIX:Ljava/lang/String; = "resourceId_"

.field protected static final KEY_STRING_PREFIX:Ljava/lang/String; = "string_"

.field private static final LIST_STYLE:Ljava/lang/String; = "list_style"

.field public static final NEGATIVE_BUTTON_ID:I = 0x7f1100d6

.field public static final NEGATIVE_IMAGE_BUTTON:I = 0x7f1100d4

.field public static final POSITIVE_BUTTON_ID:I = 0x7f1100d5

.field public static final POSITIVE_IMAGE_BUTTON:I = 0x7f1100d2

.field private static final TAG:Ljava/lang/String;

.field private static final buttonIDs:[I


# instance fields
.field private final KEY_REFERENCE_ID:Ljava/lang/String;

.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private handler:Landroid/widget/AdapterView$OnItemClickListener;

.field private listener:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->buttonIDs:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x7f1100d5
        0x7f1100d6
        0x7f1100d7
        0x7f1100d2
        0x7f1100d4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 58
    const-string v0, "referenceId"

    iput-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->KEY_REFERENCE_ID:Ljava/lang/String;

    return-void
.end method

.method private clampWidth()V
    .registers 13

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_54

    .line 339
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 340
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 341
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 343
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 344
    .local v5, "screenWidth":I
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 346
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_54

    .line 347
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 348
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 349
    .local v2, "maxWidth":I
    int-to-double v8, v5

    const-wide/high16 v10, 0x3fe8000000000000L

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    if-ge v2, v7, :cond_54

    .line 350
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v7, v2, v8}, Landroid/view/Window;->setLayout(II)V

    .line 354
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "maxWidth":I
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "screenWidth":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_54
    return-void
.end method

.method private getStringForViewId(I)Ljava/lang/String;
    .registers 10
    .param p1, "viewId"    # I

    .prologue
    const/4 v7, -0x1

    .line 245
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 246
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 247
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "string":Ljava/lang/String;
    if-nez v4, :cond_44

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resourceId_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 252
    .local v2, "resourceId":I
    if-eq v2, v7, :cond_44

    .line 253
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .end local v2    # "resourceId":I
    :cond_44
    return-object v4
.end method

.method public static newInstance(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 2
    .param p0, "resourceId"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->newInstance(IZ)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IZ)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 5
    .param p0, "resourceId"    # I
    .param p1, "imgFormat"    # Z

    .prologue
    .line 81
    new-instance v1, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    invoke-direct {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;-><init>()V

    .line 82
    .local v1, "frag":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "resourceId_2131820747"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v2, "img"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 4
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v1, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    invoke-direct {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;-><init>()V

    .line 70
    .local v1, "frag":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "string_2131820747"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method public static removeDialogFragment(Landroid/support/v4/app/FragmentActivity;)V
    .registers 5
    .param p0, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".removeDialogFragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialogFragmentTag"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    .line 312
    .local v1, "frag":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    if-eqz v1, :cond_2b

    .line 313
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setRetainInstance(Z)V

    .line 314
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->dismissAllowingStateLoss()V

    .line 318
    :goto_2a
    return-void

    .line 316
    :cond_2b
    const-string v2, "No DialogFragment was attached"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private setResourceIdForId(II)V
    .registers 7
    .param p1, "resourceId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resourceId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private setStringForId(Ljava/lang/String;I)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "viewId"    # I

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resourceId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 236
    return-void
.end method


# virtual methods
.method public getListener()Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->listener:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;

    return-object v0
.end method

.method public getReferenceId()I
    .registers 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referenceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 323
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_c

    .line 324
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 326
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->listener:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;

    if-eqz v0, :cond_b

    .line 331
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->listener:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {v0, p0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;->onBuzzDialogClick(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;Landroid/widget/Button;)V

    .line 333
    :cond_b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 32
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 93
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 94
    .local v14, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 95
    .local v7, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v26, 0x7f030036

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 97
    .local v24, "view":Landroid/view/View;
    const v26, 0x7f1100cd

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewStub;

    .line 100
    .local v20, "stub":Landroid/view/ViewStub;
    const-string v26, "img"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 101
    .local v23, "usingImgFormat":Z
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "adapter"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    move-object/from16 v15, v26

    check-cast v15, [Ljava/lang/String;

    .line 102
    .local v15, "items":[Ljava/lang/String;
    if-nez v15, :cond_60

    .line 104
    if-eqz v23, :cond_93

    .line 105
    const v8, 0x7f030037

    .line 109
    .local v8, "buttonLayoutId":I
    :goto_58
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 110
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 113
    .end local v8    # "buttonLayoutId":I
    :cond_60
    sget-object v27, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->buttonIDs:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v26, 0x0

    :goto_69
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_a8

    aget v13, v27, v26

    .line 114
    .local v13, "id":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 115
    .local v5, "btn":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getStringForViewId(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "buttonTitle":Ljava/lang/String;
    if-eqz v5, :cond_90

    .line 117
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_90
    add-int/lit8 v26, v26, 0x1

    goto :goto_69

    .line 107
    .end local v5    # "btn":Landroid/widget/Button;
    .end local v9    # "buttonTitle":Ljava/lang/String;
    .end local v13    # "id":I
    :cond_93
    const v26, 0x7f1100d7

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getStringForViewId(I)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_a4

    const v8, 0x7f030039

    .restart local v8    # "buttonLayoutId":I
    :goto_a3
    goto :goto_58

    .end local v8    # "buttonLayoutId":I
    :cond_a4
    const v8, 0x7f03003a

    goto :goto_a3

    .line 123
    :cond_a8
    const v26, 0x7f1100cc

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 124
    .local v4, "bodyText":Landroid/widget/TextView;
    const v26, 0x7f1100cc

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getStringForViewId(I)Ljava/lang/String;

    move-result-object v18

    .line 125
    .local v18, "message":Ljava/lang/String;
    if-eqz v18, :cond_1a1

    .line 126
    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_cb
    const v26, 0x7f1100cb

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 132
    .local v22, "titleTextView":Landroid/widget/TextView;
    const v26, 0x7f1100cb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getStringForViewId(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const-string v26, "resourceId_2131820746"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 134
    .local v19, "resourceId":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_110

    .line 135
    const v26, 0x7f1100ca

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 136
    .local v12, "iconView":Landroid/widget/ImageView;
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    .end local v12    # "iconView":Landroid/widget/ImageView;
    :cond_110
    const v26, 0x7f1100d0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    .line 140
    .local v25, "viewGroup":Landroid/view/ViewGroup;
    const-string v26, "resourceId_2131820752"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 141
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_1aa

    .line 142
    move/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    :goto_138
    if-eqz v15, :cond_182

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "list_style"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 150
    .local v21, "style":I
    const v26, 0x7f1100cf

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ListView;

    .line 151
    .local v16, "lv":Landroid/widget/ListView;
    const/16 v17, 0x0

    .line 152
    .local v17, "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    if-nez v21, :cond_1b0

    .line 153
    new-instance v17, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;

    .end local v17    # "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    const v27, 0x7f0300af

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;-><init>(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 159
    .restart local v17    # "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_169
    :goto_169
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    const/16 v26, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->handler:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    .end local v16    # "lv":Landroid/widget/ListView;
    .end local v17    # "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v21    # "style":I
    :cond_182
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 166
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setRetainInstance(Z)V

    .line 167
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 168
    .local v11, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 169
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    return-object v11

    .line 128
    .end local v11    # "dialog":Landroid/app/Dialog;
    .end local v19    # "resourceId":I
    .end local v22    # "titleTextView":Landroid/widget/TextView;
    .end local v25    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1a1
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cb

    .line 144
    .restart local v19    # "resourceId":I
    .restart local v22    # "titleTextView":Landroid/widget/TextView;
    .restart local v25    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1aa
    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_138

    .line 154
    .restart local v16    # "lv":Landroid/widget/ListView;
    .restart local v17    # "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v21    # "style":I
    :cond_1b0
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_169

    .line 155
    new-instance v17, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ListDialogCustomized;

    .end local v17    # "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    const v27, 0x7f030067

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ListDialogCustomized;-><init>(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 156
    .restart local v17    # "mAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 157
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_169
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 262
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 264
    :cond_14
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 265
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getReferenceId()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1d

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getReferenceId()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1d

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getReferenceId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_32

    .line 272
    :cond_1d
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 273
    .local v1, "mPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "rate_me_time_of_last_prompt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    .end local v1    # "mPreferences":Landroid/content/SharedPreferences;
    :cond_32
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getRetainInstance()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 276
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 278
    :cond_46
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 279
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 359
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->clampWidth()V

    .line 361
    :cond_f
    return-void
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 283
    return-object p0
.end method

.method public setContentView(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 219
    const v0, 0x7f1100d0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setResourceIdForId(II)V

    .line 220
    return-object p0
.end method

.method public setExtraButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 199
    const v0, 0x7f1100d7

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setResourceIdForId(II)V

    .line 200
    return-object p0
.end method

.method public setExtraButton(Ljava/lang/String;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 194
    const v0, 0x7f1100d7

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setStringForId(Ljava/lang/String;I)V

    .line 195
    return-object p0
.end method

.method public setIcon(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 214
    const v0, 0x7f1100ca

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setResourceIdForId(II)V

    .line 215
    return-object p0
.end method

.method public setListener(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->listener:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;

    .line 288
    return-object p0
.end method

.method public setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 209
    const v0, 0x7f1100cc

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setResourceIdForId(II)V

    .line 210
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 204
    const v0, 0x7f1100cc

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setStringForId(Ljava/lang/String;I)V

    .line 205
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 179
    const v0, 0x7f1100d6

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setResourceIdForId(II)V

    .line 180
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 174
    const v0, 0x7f1100d6

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setStringForId(Ljava/lang/String;I)V

    .line 175
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 189
    const v0, 0x7f1100d5

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setResourceIdForId(II)V

    .line 190
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 184
    const v0, 0x7f1100d5

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setStringForId(Ljava/lang/String;I)V

    .line 185
    return-object p0
.end method

.method public setReferenceId(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 4
    .param p1, "referenceId"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referenceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    return-object p0
.end method

.method public useCustomizedListView([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 6
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "handler"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 303
    iput-object p2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->handler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 304
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adapter"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list_style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    return-object p0
.end method

.method public useListView([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .registers 6
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "handler"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 296
    iput-object p2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->handler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 297
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adapter"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list_style"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    return-object p0
.end method
