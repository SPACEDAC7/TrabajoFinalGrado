.class public Lcom/google/android/gms/internal/zzhp;
.super Lcom/google/android/gms/internal/zzhv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbly:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbxx:Ljava/lang/String;

.field private zzbxy:J

.field private zzbxz:J

.field private zzbya:Ljava/lang/String;

.field private zzbyb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzhv;-><init>(Lcom/google/android/gms/internal/zzmd;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhp;->zzbly:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzwy()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhp;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhp;->zzor()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhp;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzby(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbly:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbly:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10
.end method

.method private zzbz(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbly:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e

    move-wide v0, v2

    :goto_d
    return-wide v0

    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_13

    move-result-wide v0

    goto :goto_d

    :catch_13
    move-exception v0

    move-wide v0, v2

    goto :goto_d
.end method

.method private zzor()V
    .registers 3

    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzby(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbxx:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzby(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbya:Ljava/lang/String;

    const-string v0, "start_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzbz(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbxy:J

    const-string v0, "end_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzbz(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbxz:J

    const-string v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzby(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhp;->zzbyb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createIntent()Landroid/content/Intent;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const-wide/16 v4, -0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbxx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbyb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbya:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbxy:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_32

    const-string v1, "beginTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbxy:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_32
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbxz:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3f

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhp;->zzbxz:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3f
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public execute()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhp;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzcb(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zzac(Landroid/content/Context;)Lcom/google/android/gms/internal/zzdj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzln()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhp;->zzcb(Ljava/lang/String;)V

    goto :goto_9

    :cond_20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zzab(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_70

    sget v0, Lcom/google/android/gms/R$string;->create_calendar_title:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_73

    sget v0, Lcom/google/android/gms/R$string;->create_calendar_message:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_45
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_76

    sget v0, Lcom/google/android/gms/R$string;->accept:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_50
    new-instance v3, Lcom/google/android/gms/internal/zzhp$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzhp$1;-><init>(Lcom/google/android/gms/internal/zzhp;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_79

    sget v0, Lcom/google/android/gms/R$string;->decline:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_60
    new-instance v2, Lcom/google/android/gms/internal/zzhp$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzhp$2;-><init>(Lcom/google/android/gms/internal/zzhp;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_9

    :cond_70
    const-string v0, "Create calendar event"

    goto :goto_3a

    :cond_73
    const-string v0, "Allow Ad to create a calendar event?"

    goto :goto_45

    :cond_76
    const-string v0, "Accept"

    goto :goto_50

    :cond_79
    const-string v0, "Decline"

    goto :goto_60
.end method
