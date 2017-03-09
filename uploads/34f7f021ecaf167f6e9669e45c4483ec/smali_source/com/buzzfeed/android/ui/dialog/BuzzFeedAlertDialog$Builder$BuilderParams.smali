.class Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;
.super Ljava/lang/Object;
.source "BuzzFeedAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderParams"
.end annotation


# instance fields
.field public mCheckedItem:I

.field public mIsBookmarkWarningDialog:Z

.field public mItems:[Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mProgressBarVisibility:Z

.field public mSingleChoiceItems:[Ljava/lang/String;

.field public mSingleChoiceObjects:[Ljava/lang/Object;

.field public mSingleChoiceOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mIsBookmarkWarningDialog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;)V
    .registers 5
    .param p1, "dialog"    # Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 328
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 330
    :cond_12
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    .line 331
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 334
    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    .line 335
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 338
    :cond_2a
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_36

    .line 339
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 342
    :cond_36
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mProgressBarVisibility:Z

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setProgressBarVisibility(Z)V

    .line 343
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mItems:[Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 344
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mItems:[Ljava/lang/String;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setStackedButtons([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    :cond_46
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceItems:[Ljava/lang/String;

    if-eqz v0, :cond_59

    .line 347
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceItems:[Ljava/lang/String;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mCheckedItem:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setSingleChoiceButtons([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 352
    :cond_53
    :goto_53
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mIsBookmarkWarningDialog:Z

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setIsBookmarkWarningDialog(Z)V

    .line 353
    return-void

    .line 348
    :cond_59
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceObjects:[Ljava/lang/Object;

    if-eqz v0, :cond_53

    .line 349
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceObjects:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mCheckedItem:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setSingleChoiceButtons([Ljava/lang/Object;Landroid/widget/AdapterView$OnItemClickListener;I)V

    goto :goto_53
.end method
