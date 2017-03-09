.class public Lcom/buzzfeed/android/data/preferences/AutoPlayPreference;
.super Lcom/buzzfeed/android/data/preferences/StringPreference;
.source "AutoPlayPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/StringPreference;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/AutoPlayPreference;->getDefaultValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const v0, 0x7f09017a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 15
    const v0, 0x7f09028a

    return v0
.end method
