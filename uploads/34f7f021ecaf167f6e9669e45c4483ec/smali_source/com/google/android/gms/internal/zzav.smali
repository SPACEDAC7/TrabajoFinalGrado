.class public Lcom/google/android/gms/internal/zzav;
.super Ljava/lang/Object;


# static fields
.field private static final zzahg:[Ljava/lang/String;


# instance fields
.field private zzahc:Ljava/lang/String;

.field private zzahd:Ljava/lang/String;

.field private zzahe:Ljava/lang/String;

.field private zzahf:[Ljava/lang/String;

.field private zzahh:Lcom/google/android/gms/internal/zzaq;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/aclk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/pcs/click"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzav;->zzahg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaq;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "googleads.g.doubleclick.net"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahc:Ljava/lang/String;

    const-string v0, "/pagead/ads"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahd:Ljava/lang/String;

    const-string v0, "ad.doubleclick.net"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahe:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".doubleclick.net"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".googleadservices.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".googlesyndication.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahf:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzav;->zzahh:Lcom/google/android/gms/internal/zzaq;

    return-void
.end method

.method private zza(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Landroid/net/Uri;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaw;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzav;->zzb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dc_ms="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    const-string v1, "Parameter already exists: dc_ms"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    const-string v1, "Provided Uri is not in a valid state"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :try_start_23
    const-string v0, "ms"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    const-string v1, "Query parameter already exists: ms"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-eqz p4, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahh:Lcom/google/android/gms/internal/zzaq;

    invoke-interface {v0, p2, p3, p5}, Lcom/google/android/gms/internal/zzaq;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    :goto_3b
    if-eqz v1, :cond_4b

    const-string v1, "dc_ms"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzav;->zzb(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahh:Lcom/google/android/gms/internal/zzaq;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzaq;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_4b
    const-string v1, "ms"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_50
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_23 .. :try_end_50} :catch_1a

    move-result-object v0

    goto :goto_43
.end method

.method private zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "&adurl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_13

    const-string v0, "?adurl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_13
    if-eq v0, v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_47
    return-object v0

    :cond_48
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_47
.end method

.method private zzb(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";adurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3f
.end method


# virtual methods
.method public zza(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaw;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaw;
        }
    .end annotation

    :try_start_0
    const-string v0, "ai"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Landroid/net/Uri;
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    const-string v1, "Provided Uri is not in a valid state"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahh:Lcom/google/android/gms/internal/zzaq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaq;->zza(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public zza(Landroid/net/Uri;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzav;->zzahc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzav;->zzahd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1e} :catch_23

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    :goto_22
    return v0

    :catch_23
    move-exception v1

    goto :goto_22
.end method

.method public zzaz()Lcom/google/android/gms/internal/zzaq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahh:Lcom/google/android/gms/internal/zzaq;

    return-object v0
.end method

.method public zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaw;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzav;->zzahc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzav;->zzahd:Ljava/lang/String;

    return-void
.end method

.method public zzb(Landroid/net/Uri;)Z
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzahe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public zzc(Landroid/net/Uri;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzav;->zzahf:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_1c

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_18} :catch_20

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v0, 0x1

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_20
    move-exception v1

    goto :goto_1c
.end method

.method public zzd(Landroid/net/Uri;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzav;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v2, Lcom/google/android/gms/internal/zzav;->zzahg:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1a

    aget-object v4, v2, v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v0, 0x1

    :cond_1a
    return v0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public zzm(Ljava/lang/String;)V
    .registers 3

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzahf:[Ljava/lang/String;

    return-void
.end method
