.class public final Lcom/buzzfeed/android/data/preferences/DebuggingPreference;
.super Lcom/buzzfeed/android/data/preferences/BooleanPreference;
.source "DebuggingPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/BooleanPreference;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getDefaultValue(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/DebuggingPreference;->getDefaultValue(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 19
    const v0, 0x7f09028e

    return v0
.end method
