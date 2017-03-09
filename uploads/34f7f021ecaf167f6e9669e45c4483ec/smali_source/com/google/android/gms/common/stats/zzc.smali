.class public final Lcom/google/android/gms/common/stats/zzc;
.super Ljava/lang/Object;


# static fields
.field public static final FP:Landroid/content/ComponentName;

.field public static FQ:I

.field public static FR:I

.field public static FS:I

.field public static FT:I

.field public static FU:I

.field public static FV:I

.field public static FW:I

.field public static LOG_LEVEL_OFF:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzc;->FP:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzc;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzc;->FQ:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzc;->FR:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzc;->FS:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzc;->FT:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzc;->FU:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzc;->FV:I

    sput v3, Lcom/google/android/gms/common/stats/zzc;->FW:I

    return-void
.end method
