.class public Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
.super Landroid/support/v7/app/AlertDialog$Builder;
.source "BuzzFeedAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const v0, 0x7f0d00a5

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 141
    iput-object p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;-><init>(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    .line 143
    iput p2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mTheme:I

    .line 144
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public create()Landroid/support/v7/app/AlertDialog;
    .registers 4

    .prologue
    .line 292
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 293
    .local v0, "dialog":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->apply(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;)V

    .line 294
    new-instance v1, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;

    invoke-direct {v1, p0, v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;-><init>(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 302
    return-object v0
.end method

.method public setIsBookmarkWarningDialog(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3
    .param p1, "isBookmarkWarningDialog"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-boolean p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mIsBookmarkWarningDialog:Z

    .line 252
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "messageId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mMessage:Ljava/lang/CharSequence;

    .line 170
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mMessage:Ljava/lang/CharSequence;

    .line 178
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 5
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 208
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 216
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 217
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 5
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 226
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 227
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 236
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 5
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 187
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 188
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 198
    return-object p0
.end method

.method public setProgressBarVisiblilty(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3
    .param p1, "progressBarVisibility"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-boolean p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mProgressBarVisibility:Z

    .line 244
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/Object;ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 6
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "checkedItem"    # I
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceObjects:[Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p3, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 281
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mCheckedItem:I

    .line 282
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceItems:[Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 6
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "checkedItem"    # I
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceItems:[Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p3, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 270
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mCheckedItem:I

    .line 271
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mSingleChoiceObjects:[Ljava/lang/Object;

    .line 272
    return-object p0
.end method

.method public setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mItems:[Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 261
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "titleId"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mTitle:Ljava/lang/CharSequence;

    .line 152
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mParams:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;

    iput-object p1, v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$BuilderParams;->mTitle:Ljava/lang/CharSequence;

    .line 161
    return-object p0
.end method
