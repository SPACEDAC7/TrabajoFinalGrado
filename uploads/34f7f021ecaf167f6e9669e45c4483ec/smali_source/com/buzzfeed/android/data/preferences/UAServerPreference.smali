.class public Lcom/buzzfeed/android/data/preferences/UAServerPreference;
.super Lcom/buzzfeed/android/data/preferences/BasePreference;
.source "UAServerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/data/preferences/BasePreference",
        "<",
        "Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/BasePreference;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getDefaultValue(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->ALPHA:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    return-object v0
.end method

.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->getDefaultValue(Landroid/content/Context;)Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 52
    const v0, 0x7f09029f

    return v0
.end method

.method public getValue()Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
    .registers 6

    .prologue
    .line 31
    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->mPreference:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->mKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 34
    :try_start_f
    invoke-static {v1}, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object v2

    .line 41
    :goto_13
    return-object v2

    .line 37
    :catch_14
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->TAG:Ljava/lang/String;

    const-string v3, "Could not convert saved value to preference"

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1c
    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->mDefaultValue:Ljava/lang/Object;

    check-cast v2, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    goto :goto_13
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->getValue()Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;)V
    .registers 5
    .param p1, "value"    # Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    .prologue
    .line 46
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->name()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void

    .line 46
    .end local v0    # "name":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 17
    check-cast p1, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->setValue(Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;)V

    return-void
.end method
