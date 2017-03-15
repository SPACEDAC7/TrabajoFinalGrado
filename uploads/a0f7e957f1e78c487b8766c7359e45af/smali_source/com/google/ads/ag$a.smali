.class Lcom/google/ads/ag$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/ag$a;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences$Editor;)V

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ag$a;->a:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object p2, p0, Lcom/google/ads/ag$a;->b:Landroid/content/SharedPreferences$Editor;

    .line 70
    return-void
.end method

.method private a(Landroid/app/Activity;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/ads/ag$a;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_11

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/ads/ag$a;->b:Landroid/content/SharedPreferences$Editor;

    goto :goto_10
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 85
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/ag$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v8, v0

    .line 86
    if-nez v8, :cond_13

    .line 87
    const-string v2, "Activity was null while making a doritos cookie request."

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 121
    :goto_12
    return-void

    .line 91
    :cond_13
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 94
    sget-object v3, Lcom/google/ads/af;->b:Landroid/net/Uri;

    sget-object v4, Lcom/google/ads/af;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_66

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_66

    .line 100
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    :goto_3e
    invoke-direct {p0, v8}, Lcom/google/ads/ag$a;->a(Landroid/app/Activity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 110
    const-string v4, "drt"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v2, "drt_ts"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    :goto_5b
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5e} :catch_5f

    goto :goto_12

    .line 118
    :catch_5f
    move-exception v2

    .line 119
    const-string v3, "An unknown error occurred while sending a doritos request."

    invoke-static {v3, v2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 103
    :cond_66
    :try_start_66
    const-string v2, "Google+ app not installed, not storing doritos cookie"

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    move-object v2, v9

    goto :goto_3e

    .line 114
    :cond_6d
    const-string v2, "drt"

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v2, "drt_ts"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_7b} :catch_5f

    goto :goto_5b
.end method
