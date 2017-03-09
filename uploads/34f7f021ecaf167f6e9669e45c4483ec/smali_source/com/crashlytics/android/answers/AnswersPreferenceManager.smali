.class Lcom/crashlytics/android/answers/AnswersPreferenceManager;
.super Ljava/lang/Object;
.source "AnswersPreferenceManager.java"


# static fields
.field static final PREFKEY_ANALYTICS_LAUNCHED:Ljava/lang/String; = "analytics_launched"

.field static final PREF_STORE_NAME:Ljava/lang/String; = "settings"


# instance fields
.field private final prefStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;)V
    .registers 2
    .param p1, "prefStore"    # Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 39
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/crashlytics/android/answers/AnswersPreferenceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    const-string v1, "settings"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .local v0, "prefStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    new-instance v1, Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;-><init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;)V

    return-object v1
.end method


# virtual methods
.method public hasAnalyticsLaunched()Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAnalyticsLaunched()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 44
    return-void
.end method
