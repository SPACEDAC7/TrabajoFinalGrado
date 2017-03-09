.class public final Lcom/buzzfeed/android/data/preferences/ServerPreference;
.super Lcom/buzzfeed/android/data/preferences/StringPreference;
.source "ServerPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/StringPreference;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/ServerPreference;->getDefaultValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const v0, 0x7f0901a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 18
    const v0, 0x7f09029a

    return v0
.end method
