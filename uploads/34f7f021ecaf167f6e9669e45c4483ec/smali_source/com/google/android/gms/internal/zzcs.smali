.class public Lcom/google/android/gms/internal/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzct;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzaua:Lcom/google/android/gms/internal/zzcp;

.field private final zzauc:Lcom/google/android/gms/internal/zzfe;

.field private final zzaud:Lcom/google/android/gms/internal/zzfe;

.field private final zzaue:Lcom/google/android/gms/internal/zzfe;

.field private zzaug:Lcom/google/android/gms/internal/zzgh$zzc;

.field private zzauh:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcp;Lcom/google/android/gms/internal/zzgh;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcs$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcs$5;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzauc:Lcom/google/android/gms/internal/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/zzcs$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcs$6;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaud:Lcom/google/android/gms/internal/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/zzcs$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcs$7;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaue:Lcom/google/android/gms/internal/zzfe;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcs;->zzaua:Lcom/google/android/gms/internal/zzcp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgh;->zzny()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaug:Lcom/google/android/gms/internal/zzgh$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaug:Lcom/google/android/gms/internal/zzgh$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcs$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcs$1;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcs$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcs$2;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh$zzc;->zza(Lcom/google/android/gms/internal/zzlw$zzc;Lcom/google/android/gms/internal/zzlw$zza;)V

    const-string v1, "Core JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaua:Lcom/google/android/gms/internal/zzcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcp;->zziq()Lcom/google/android/gms/internal/zzcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcn;->zzib()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    return-void

    :cond_4d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_49
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcs;)Lcom/google/android/gms/internal/zzcp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaua:Lcom/google/android/gms/internal/zzcp;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcs;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcs;->zzauh:Z

    return p1
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzgi;)V
    .registers 4

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzauc:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzaud:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzaue:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public zzc(Lorg/json/JSONObject;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaug:Lcom/google/android/gms/internal/zzgh$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcs$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcs$3;-><init>(Lcom/google/android/gms/internal/zzcs;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/zzlw$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzlw$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh$zzc;->zza(Lcom/google/android/gms/internal/zzlw$zzc;Lcom/google/android/gms/internal/zzlw$zza;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzgi;)V
    .registers 4

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzaue:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzgi;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzaud:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzgi;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzauc:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzgi;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public zziu()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcs;->zzauh:Z

    return v0
.end method

.method public zziv()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaug:Lcom/google/android/gms/internal/zzgh$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcs$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcs$4;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    new-instance v2, Lcom/google/android/gms/internal/zzlw$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzlw$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh$zzc;->zza(Lcom/google/android/gms/internal/zzlw$zzc;Lcom/google/android/gms/internal/zzlw$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzaug:Lcom/google/android/gms/internal/zzgh$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzc;->release()V

    return-void
.end method
