.class public abstract Lcom/buzzfeed/android/data/preferences/BasePreference;
.super Ljava/lang/Object;
.source "BasePreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;

.field protected final mPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    .local p0, "this":Lcom/buzzfeed/android/data/preferences/BasePreference;, "Lcom/buzzfeed/android/data/preferences/BasePreference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/BasePreference;->onSetupSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mPreference:Landroid/content/SharedPreferences;

    .line 24
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getKeyResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mKey:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mDefaultValue:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3

    .prologue
    .line 41
    .local p0, "this":Lcom/buzzfeed/android/data/preferences/BasePreference;, "Lcom/buzzfeed/android/data/preferences/BasePreference<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method

.method protected abstract getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    .local p0, "this":Lcom/buzzfeed/android/data/preferences/BasePreference;, "Lcom/buzzfeed/android/data/preferences/BasePreference<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getKeyResourceId()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isSet()Z
    .registers 3

    .prologue
    .line 37
    .local p0, "this":Lcom/buzzfeed/android/data/preferences/BasePreference;, "Lcom/buzzfeed/android/data/preferences/BasePreference<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/BasePreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onSetupSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    .local p0, "this":Lcom/buzzfeed/android/data/preferences/BasePreference;, "Lcom/buzzfeed/android/data/preferences/BasePreference<TT;>;"
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
