.class public Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;
.super Lcom/buzzfeed/android/data/preferences/BasePreference;
.source "ABExperimentServerPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/data/preferences/BasePreference",
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
    .line 17
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/BasePreference;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getDefaultValue(Landroid/content/Context;)Lcom/buzzfeed/androidabframework/util/Environment;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/buzzfeed/androidabframework/util/Environment;->Production:Lcom/buzzfeed/androidabframework/util/Environment;

    return-object v0
.end method

.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->getDefaultValue(Landroid/content/Context;)Lcom/buzzfeed/androidabframework/util/Environment;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 37
    const v0, 0x7f090288

    return v0
.end method

.method public getValue()Lcom/buzzfeed/androidabframework/util/Environment;
    .registers 5

    .prologue
    .line 22
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->mPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 24
    invoke-static {v0}, Lcom/buzzfeed/androidabframework/util/Environment;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/util/Environment;

    move-result-object v1

    .line 26
    :goto_13
    return-object v1

    :cond_14
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Lcom/buzzfeed/androidabframework/util/Environment;

    goto :goto_13
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->getValue()Lcom/buzzfeed/androidabframework/util/Environment;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/buzzfeed/androidabframework/util/Environment;)V
    .registers 5
    .param p1, "value"    # Lcom/buzzfeed/androidabframework/util/Environment;

    .prologue
    .line 31
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/buzzfeed/androidabframework/util/Environment;->name()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "name":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    return-void

    .line 31
    .end local v0    # "name":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 14
    check-cast p1, Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->setValue(Lcom/buzzfeed/androidabframework/util/Environment;)V

    return-void
.end method
