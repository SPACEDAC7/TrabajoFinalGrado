.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private aq:Lcom/google/android/gms/analytics/internal/zzaj;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzyv()Lcom/google/android/gms/analytics/internal/zzaj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->aq:Lcom/google/android/gms/analytics/internal/zzaj;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->aq:Lcom/google/android/gms/analytics/internal/zzaj;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->aq:Lcom/google/android/gms/analytics/internal/zzaj;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzyv()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/internal/zzaj;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
