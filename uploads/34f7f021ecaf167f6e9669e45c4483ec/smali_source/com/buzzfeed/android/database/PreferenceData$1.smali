.class Lcom/buzzfeed/android/database/PreferenceData$1;
.super Ljava/lang/Object;
.source "PreferenceData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/database/PreferenceData;->putPreference(Lcom/buzzfeed/android/database/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/database/PreferenceData;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$preferenceDb:Lcom/buzzfeed/android/database/Preference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/database/PreferenceData;Lcom/buzzfeed/android/database/Preference;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/database/PreferenceData;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->this$0:Lcom/buzzfeed/android/database/PreferenceData;

    iput-object p2, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    iput-object p3, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 81
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->this$0:Lcom/buzzfeed/android/database/PreferenceData;

    # getter for: Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v6}, Lcom/buzzfeed/android/database/PreferenceData;->access$000(Lcom/buzzfeed/android/database/PreferenceData;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 82
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "key"

    iget-object v7, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v7}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v6, "value"

    iget-object v7, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v7}, Lcom/buzzfeed/android/database/Preference;->getValueAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->this$0:Lcom/buzzfeed/android/database/PreferenceData;

    iget-object v7, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v7}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/buzzfeed/android/database/PreferenceData;->getPreferenceFromDatabase(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;
    invoke-static {v6, v7}, Lcom/buzzfeed/android/database/PreferenceData;->access$100(Lcom/buzzfeed/android/database/PreferenceData;Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;

    move-result-object v0

    .line 89
    .local v0, "cachedPreference":Lcom/buzzfeed/android/database/Preference;
    if-nez v0, :cond_59

    .line 90
    :try_start_34
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserting Preference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v8}, Lcom/buzzfeed/android/database/Preference;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v6, "preference"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 101
    :goto_58
    return-void

    .line 93
    :cond_59
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating Preference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v8}, Lcom/buzzfeed/android/database/Preference;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v5, "key = ?"

    .line 95
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$preferenceDb:Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v7}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 96
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v6, "preference"

    const-string v7, "key = ?"

    invoke-virtual {v2, v6, v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_8c} :catch_8d

    goto :goto_58

    .line 98
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :catch_8d
    move-exception v3

    .line 99
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData$1;->val$TAG:Ljava/lang/String;

    const-string v7, "Error writing to the database"

    invoke-static {v6, v7, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58
.end method
