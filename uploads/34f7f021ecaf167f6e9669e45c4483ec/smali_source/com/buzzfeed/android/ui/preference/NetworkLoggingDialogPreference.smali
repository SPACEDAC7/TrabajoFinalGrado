.class public Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;
.super Landroid/preference/Preference;
.source "NetworkLoggingDialogPreference.java"


# instance fields
.field private mCurDialog:Landroid/support/v7/app/AlertDialog;

.field private mNetworkLoggingPreference:Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->initialize(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->initialize(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->initialize(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->onClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mCurDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mNetworkLoggingPreference:Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;

    .line 50
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->setLayoutResource(I)V

    .line 51
    const-string v0, "Network Logging Preference"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mNetworkLoggingPreference:Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method private onClick(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onClick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->getLogLevelWithOrdinal(I)Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    move-result-object v1

    .line 95
    .local v1, "logLevel":Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mNetworkLoggingPreference:Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;->setValue(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing network logging level to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getInstance()Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->setLogLevel(Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;)V

    .line 98
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method private showDialog()V
    .registers 7

    .prologue
    .line 62
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 64
    iget-object v4, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mNetworkLoggingPreference:Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "curValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->getLogLevelWithName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    move-result-object v3

    .line 66
    .local v3, "logLevel":Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->ordinal()I

    move-result v1

    .line 68
    .local v1, "curIndex":I
    :goto_20
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->nameValues()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;-><init>(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;)V

    .line 67
    invoke-virtual {v0, v4, v1, v5}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$2;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$2;-><init>(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;)V

    invoke-virtual {v0, v4, v5}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mCurDialog:Landroid/support/v7/app/AlertDialog;

    .line 89
    iget-object v4, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mCurDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 90
    return-void

    .line 66
    .end local v1    # "curIndex":I
    :cond_4a
    const/4 v1, 0x0

    goto :goto_20
.end method


# virtual methods
.method protected onClick()V
    .registers 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 58
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->showDialog()V

    .line 59
    return-void
.end method
