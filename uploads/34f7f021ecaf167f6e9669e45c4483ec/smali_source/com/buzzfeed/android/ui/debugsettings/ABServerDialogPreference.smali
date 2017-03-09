.class public Lcom/buzzfeed/android/ui/debugsettings/ABServerDialogPreference;
.super Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;
.source "ABServerDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference",
        "<",
        "Lcom/buzzfeed/androidabframework/util/Environment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
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
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getEnumValues()[Lcom/buzzfeed/androidabframework/util/Environment;
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Lcom/buzzfeed/androidabframework/util/Environment;->values()[Lcom/buzzfeed/androidabframework/util/Environment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getEnumValues()[Ljava/lang/Enum;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/ABServerDialogPreference;->getEnumValues()[Lcom/buzzfeed/androidabframework/util/Environment;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->initialize()V

    .line 37
    const-string v0, "A/B Server"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/ABServerDialogPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method protected onCreatePreference(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/BasePreference;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/buzzfeed/android/data/preferences/BasePreference",
            "<",
            "Lcom/buzzfeed/androidabframework/util/Environment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
