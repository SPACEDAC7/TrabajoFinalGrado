.class public Lcom/google/android/gms/internal/zzdi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdi$zza;
    }
.end annotation


# instance fields
.field private final zzaxh:I

.field private final zzaxj:Lcom/google/android/gms/internal/zzdc;

.field private zzaxs:Ljava/lang/String;

.field private zzaxt:Ljava/lang/String;

.field private final zzaxu:Z

.field private final zzaxv:I

.field private final zzaxw:I


# direct methods
.method public constructor <init>(III)V
    .registers 7

    const/16 v2, 0x40

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzdi;->zzaxh:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdi;->zzaxu:Z

    if-gt p2, v2, :cond_f

    if-gez p2, :cond_1f

    :cond_f
    iput v2, p0, Lcom/google/android/gms/internal/zzdi;->zzaxv:I

    :goto_11
    if-ge p3, v1, :cond_22

    iput v1, p0, Lcom/google/android/gms/internal/zzdi;->zzaxw:I

    :goto_15
    new-instance v0, Lcom/google/android/gms/internal/zzdh;

    iget v1, p0, Lcom/google/android/gms/internal/zzdi;->zzaxv:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdh;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdi;->zzaxj:Lcom/google/android/gms/internal/zzdc;

    return-void

    :cond_1f
    iput p2, p0, Lcom/google/android/gms/internal/zzdi;->zzaxv:I

    goto :goto_11

    :cond_22
    iput p3, p0, Lcom/google/android/gms/internal/zzdi;->zzaxw:I

    goto :goto_15
.end method


# virtual methods
.method zza(Ljava/lang/String;C)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, v0

    move v0, v1

    :goto_9
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-gt v4, v5, :cond_52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_4b

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, p2, :cond_4e

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x73

    if-eq v2, v4, :cond_35

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x53

    if-ne v2, v4, :cond_4e

    :cond_35
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v2, v4, :cond_45

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_4e

    :cond_45
    invoke-virtual {v3, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    :goto_4a
    move v2, v1

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_4e
    invoke-virtual {v3, v0, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4a

    :cond_52
    if-eqz v2, :cond_59

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_58
    return-object v0

    :cond_59
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdi$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdi$zza;-><init>(Lcom/google/android/gms/internal/zzdi;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdb;->zzjq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzdi;->zza(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_65

    :cond_37
    new-instance v1, Lcom/google/android/gms/internal/zzdd$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdd$zza;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdi;->zzaxs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_50
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdi;->zzaxj:Lcom/google/android/gms/internal/zzdc;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdc;->zzag(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdd$zza;->write([B)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_5a

    goto :goto_44

    :catch_5a
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdd$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method zza(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-nez v0, :cond_d

    move v1, v5

    :cond_c
    :goto_c
    return v1

    :cond_d
    move v0, v1

    :goto_e
    array-length v2, v6

    if-ge v0, v2, :cond_87

    aget-object v3, v6, v0

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8b

    const/16 v2, 0x20

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/zzdi;->zza(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdi;->zzaxt:Ljava/lang/String;

    :goto_26
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/zzde;->zzd(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    array-length v2, v7

    iget v3, p0, Lcom/google/android/gms/internal/zzdi;->zzaxw:I

    if-ge v2, v3, :cond_32

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_32
    move v2, v1

    :goto_33
    array-length v3, v7

    if-ge v2, v3, :cond_45

    const-string v3, ""

    move v4, v1

    :goto_39
    iget v8, p0, Lcom/google/android/gms/internal/zzdi;->zzaxw:I

    if-ge v4, v8, :cond_89

    add-int v8, v2, v4

    array-length v9, v7

    if-lt v8, v9, :cond_4e

    move v4, v1

    :goto_43
    if-nez v4, :cond_79

    :cond_45
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzdi;->zzaxh:I

    if-lt v2, v3, :cond_2f

    goto :goto_c

    :cond_4e
    if-lez v4, :cond_5a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    add-int v3, v2, v4

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_73

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_73
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_70

    :cond_79
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/zzdi;->zzaxh:I

    if-ge v3, v4, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_87
    move v1, v5

    goto :goto_c

    :cond_89
    move v4, v5

    goto :goto_43

    :cond_8b
    move-object v2, v3

    goto :goto_26
.end method
