.class public Lcom/google/ads/AdActivity$StaticMethodWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticMethodWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .registers 3

    .prologue
    .line 123
    invoke-static {}, Lcom/google/ads/AdActivity;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_5
    invoke-static {}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 125
    :goto_c
    monitor-exit v1

    .line 127
    return v0

    .line 124
    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 125
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V
    .registers 7
    .param p1, "adManager"    # Lcom/google/ads/internal/d;
    .param p2, "adOpener"    # Lcom/google/ads/internal/e;

    .prologue
    .line 138
    invoke-static {}, Lcom/google/ads/AdActivity;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_5
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Lcom/google/ads/internal/d;

    move-result-object v0

    if-nez v0, :cond_23

    .line 140
    invoke-static {p1}, Lcom/google/ads/AdActivity;->b(Lcom/google/ads/internal/d;)Lcom/google/ads/internal/d;

    .line 145
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_30

    .line 148
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->e:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 149
    if-nez v0, :cond_33

    .line 150
    const-string v0, "activity was null while launching an AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 165
    :goto_22
    return-void

    .line 141
    :cond_23
    :try_start_23
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Lcom/google/ads/internal/d;

    move-result-object v0

    if-eq v0, p1, :cond_e

    .line 142
    const-string v0, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 143
    monitor-exit v1

    goto :goto_22

    .line 145
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v0

    .line 153
    :cond_33
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {p2}, Lcom/google/ads/internal/e;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    :try_start_47
    const-string v2, "Launching AdActivity."

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_22

    .line 161
    :catch_50
    move-exception v0

    .line 162
    const-string v1, "Activity not found."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method
