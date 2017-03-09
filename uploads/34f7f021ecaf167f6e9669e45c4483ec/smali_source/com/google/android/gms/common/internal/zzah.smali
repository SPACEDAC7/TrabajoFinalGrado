.class public Lcom/google/android/gms/common/internal/zzah;
.super Ljava/lang/Object;


# instance fields
.field private final EP:Landroid/content/res/Resources;

.field private final EQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->EP:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->EP:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->EQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->EP:Landroid/content/res/Resources;

    const-string/jumbo v1, "string"

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzah;->EQ:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->EP:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
