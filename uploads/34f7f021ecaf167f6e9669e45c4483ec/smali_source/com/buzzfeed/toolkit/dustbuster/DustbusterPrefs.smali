.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;
.super Ljava/lang/Object;
.source "DustbusterPrefs.java"


# static fields
.field public static final DEFAULT_MAX_BATCH_SIZE:I = 0x64

.field public static final DEFAULT_MIN_BATCH_SIZE:I = 0xa

.field public static final PREFS_FILENAME:Ljava/lang/String; = "com.buzzfeed.dusbuster.prefs"

.field private static final PREFS_MAX_BATCH_SIZE:Ljava/lang/String; = "com.buzzfeed.dustbuster.prefs.maxbatchsize"

.field private static final PREFS_MIN_BATCH_SIZE:Ljava/lang/String; = "com.buzzfeed.dustbuster.prefs.minbatchsize"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "com.buzzfeed.dusbuster.prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->mPrefs:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method


# virtual methods
.method public getMaxBatchSize()I
    .registers 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "com.buzzfeed.dustbuster.prefs.maxbatchsize"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinBatchSize()I
    .registers 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "com.buzzfeed.dustbuster.prefs.minbatchsize"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setMaxBatchSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.buzzfeed.dustbuster.prefs.maxbatchsize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method

.method public setMinBatchSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.buzzfeed.dustbuster.prefs.minbatchsize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method
