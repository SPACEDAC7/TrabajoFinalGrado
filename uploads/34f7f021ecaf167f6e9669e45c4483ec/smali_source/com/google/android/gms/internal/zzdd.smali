.class public Lcom/google/android/gms/internal/zzdd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdd$zza;
    }
.end annotation


# instance fields
.field private final zzaxg:I

.field private final zzaxh:I

.field private final zzaxi:I

.field private final zzaxj:Lcom/google/android/gms/internal/zzdc;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdd;->zzaxj:Lcom/google/android/gms/internal/zzdc;

    iput p1, p0, Lcom/google/android/gms/internal/zzdd;->zzaxh:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/zzdd;->zzaxg:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzdd;->zzaxi:I

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdd;->zzah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzah(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdd;->zzjs()Lcom/google/android/gms/internal/zzdd$zza;

    move-result-object v2

    new-instance v3, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/zzdd;->zzaxh:I

    new-instance v4, Lcom/google/android/gms/internal/zzdd$1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzdd$1;-><init>(Lcom/google/android/gms/internal/zzdd;)V

    invoke-direct {v3, v0, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1d
    array-length v4, v1

    if-ge v0, v4, :cond_34

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzde;->zzaj(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_2c

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2c
    iget v5, p0, Lcom/google/android/gms/internal/zzdd;->zzaxh:I

    iget v6, p0, Lcom/google/android/gms/internal/zzdd;->zzaxg:I

    invoke-static {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzdg;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    goto :goto_29

    :cond_34
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdg$zza;

    :try_start_44
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdd;->zzaxj:Lcom/google/android/gms/internal/zzdc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdg$zza;->zzaxo:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdc;->zzag(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdd$zza;->write([B)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_38

    :catch_50
    move-exception v0

    const-string v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdd$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method zzjs()Lcom/google/android/gms/internal/zzdd$zza;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzdd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdd$zza;-><init>()V

    return-object v0
.end method
