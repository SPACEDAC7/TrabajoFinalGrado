.class Lcom/buzzfeed/toolkit/doorbell/PreferenceStorage;
.super Ljava/lang/Object;
.source "PreferenceStorage.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/doorbell/PoundStorage;


# static fields
.field private static final PREF_FILENAME:Ljava/lang/String; = "com.buzzfeed.doorbell."

.field private static final PREF_ID_KEY:Ljava/lang/String; = "id_key"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.buzzfeed.doorbell."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/PreferenceStorage;->mPrefs:Landroid/content/SharedPreferences;

    .line 14
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/PreferenceStorage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "id_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public saveText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/PreferenceStorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void
.end method
