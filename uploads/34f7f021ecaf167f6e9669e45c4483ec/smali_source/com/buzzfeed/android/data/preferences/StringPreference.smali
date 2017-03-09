.class public abstract Lcom/buzzfeed/android/data/preferences/StringPreference;
.super Lcom/buzzfeed/android/data/preferences/BasePreference;
.source "StringPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/data/preferences/BasePreference",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/BasePreference;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/preferences/StringPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/StringPreference;->mPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/StringPreference;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/StringPreference;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/StringPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/StringPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/StringPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    return-void
.end method
