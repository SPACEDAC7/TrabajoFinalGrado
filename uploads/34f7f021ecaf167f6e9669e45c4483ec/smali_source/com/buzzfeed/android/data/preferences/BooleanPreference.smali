.class public abstract Lcom/buzzfeed/android/data/preferences/BooleanPreference;
.super Lcom/buzzfeed/android/data/preferences/BasePreference;
.source "BooleanPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/data/preferences/BasePreference",
        "<",
        "Ljava/lang/Boolean;",
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
.method public getValue()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 16
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->mPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/BooleanPreference;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method
