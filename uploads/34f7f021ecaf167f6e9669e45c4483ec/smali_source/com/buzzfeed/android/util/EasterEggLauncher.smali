.class public Lcom/buzzfeed/android/util/EasterEggLauncher;
.super Ljava/lang/Object;
.source "EasterEggLauncher.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEasterEggPhrases:[Ljava/lang/String;

.field private mEasterEggToast:Landroid/widget/Toast;

.field private mLogoClickCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mLogoClickCount:I

    .line 20
    iput-object p1, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mActivity:Landroid/app/Activity;

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggPhrases:[Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public easterEggClicked()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggToast:Landroid/widget/Toast;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 28
    :cond_a
    iget v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mLogoClickCount:I

    iget-object v3, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggPhrases:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_23

    .line 29
    iput v1, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mLogoClickCount:I

    .line 30
    iget-object v1, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/buzzfeed/android/activity/BuzzCatActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 31
    const/4 v1, 0x1

    .line 40
    :goto_22
    return v1

    .line 34
    :cond_23
    iget-object v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggPhrases:[Ljava/lang/String;

    iget v3, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mLogoClickCount:I

    aget-object v0, v2, v3

    .line 36
    .local v0, "phrase":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggToast:Landroid/widget/Toast;

    .line 37
    iget-object v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mEasterEggToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 38
    iget v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mLogoClickCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/buzzfeed/android/util/EasterEggLauncher;->mLogoClickCount:I

    goto :goto_22
.end method
