.class public abstract Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;
.super Landroid/preference/Preference;
.source "AbstractEnumDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Landroid/preference/Preference;"
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/android/data/preferences/BasePreference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->initialize()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->initialize()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->initialize()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->initialize()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)Lcom/buzzfeed/android/data/preferences/BasePreference;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showDialog()V
    .registers 7

    .prologue
    .line 71
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 73
    iget-object v3, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 74
    .local v1, "object":Ljava/lang/Enum;, "Ljava/lang/Enum<TT;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->getEnumValues()[Ljava/lang/Enum;

    move-result-object v2

    .line 75
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->getEnumValues()[Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v5, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;

    invoke-direct {v5, p0, v2}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;-><init>(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;[Ljava/lang/Enum;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;-><init>(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)V

    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;

    invoke-direct {v4, p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;-><init>(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)V

    .line 98
    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 107
    iget-object v3, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 108
    return-void
.end method


# virtual methods
.method protected abstract getEnumValues()[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method protected initialize()V
    .registers 2

    .prologue
    .line 50
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->onCreatePreference(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/BasePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;

    .line 51
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->setKey(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->updateSummary(Ljava/lang/Enum;)V

    .line 53
    return-void
.end method

.method protected onClick()V
    .registers 1

    .prologue
    .line 66
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 67
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->showDialog()V

    .line 68
    return-void
.end method

.method protected abstract onCreatePreference(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/BasePreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/buzzfeed/android/data/preferences/BasePreference",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 61
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected updateSummary(Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference<TT;>;"
    .local p1, "object":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
