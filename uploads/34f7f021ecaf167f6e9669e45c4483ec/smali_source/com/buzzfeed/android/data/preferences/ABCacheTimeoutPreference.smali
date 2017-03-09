.class public Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;
.super Lcom/buzzfeed/android/data/preferences/BasePreference;
.source "ABCacheTimeoutPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/data/preferences/BasePreference",
        "<",
        "Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/BasePreference;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getDefaultValue(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->ONE_HOUR:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    return-object v0
.end method

.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->getDefaultValue(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 49
    const v0, 0x7f090287

    return v0
.end method

.method public getValue()Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;
    .registers 5

    .prologue
    .line 34
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->mPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 36
    invoke-static {v0}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    move-result-object v1

    .line 38
    :goto_13
    return-object v1

    :cond_14
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    goto :goto_13
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->getValue()Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;)V
    .registers 5
    .param p1, "value"    # Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    .prologue
    .line 43
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->name()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "name":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void

    .line 43
    .end local v0    # "name":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 11
    check-cast p1, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->setValue(Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;)V

    return-void
.end method
