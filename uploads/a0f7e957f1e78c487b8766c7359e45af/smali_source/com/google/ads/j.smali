.class Lcom/google/ads/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;


# instance fields
.field private final a:Lcom/google/ads/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/h;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 114
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    iget-boolean v3, p0, Lcom/google/ads/j;->b:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Z)V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->b(Lcom/google/ads/h;)V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 7
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed to receive ad with error code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-nez v0, :cond_48

    .line 79
    iget-object v2, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    const/4 v3, 0x0

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p2, v0, :cond_4a

    sget-object v0, Lcom/google/ads/g$a;->b:Lcom/google/ads/g$a;

    :goto_45
    invoke-virtual {v2, v3, v0}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    .line 86
    :cond_48
    monitor-exit v1

    .line 87
    return-void

    .line 79
    :cond_4a
    sget-object v0, Lcom/google/ads/g$a;->c:Lcom/google/ads/g$a;

    goto :goto_45

    .line 86
    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 107
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->c(Lcom/google/ads/h;)V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 93
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/h;)V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "adapter":Lcom/google/ads/mediation/MediationBannerAdapter;, "Lcom/google/ads/mediation/MediationBannerAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 35
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_5f

    .line 38
    :try_start_c
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-interface {p1}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ads/h;->a(Landroid/view/View;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_2a
    .catchall {:try_start_c .. :try_end_15} :catchall_5f

    .line 50
    :try_start_15
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-nez v0, :cond_62

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/j;->b:Z

    .line 56
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    .line 57
    monitor-exit v1

    .line 66
    :goto_29
    return-void

    .line 39
    :catch_2a
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting banner View from adapter ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v3}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 45
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/ads/g$a;->f:Lcom/google/ads/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    .line 47
    :cond_5d
    monitor-exit v1

    goto :goto_29

    .line 65
    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_15 .. :try_end_61} :catchall_5f

    throw v0

    .line 62
    :cond_62
    const/4 v0, 0x1

    :try_start_63
    iput-boolean v0, p0, Lcom/google/ads/j;->b:Z

    .line 63
    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    iget-object v3, p0, Lcom/google/ads/j;->a:Lcom/google/ads/h;

    invoke-virtual {v3}, Lcom/google/ads/h;->f()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Landroid/view/View;)V

    .line 65
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_5f

    goto :goto_29
.end method
