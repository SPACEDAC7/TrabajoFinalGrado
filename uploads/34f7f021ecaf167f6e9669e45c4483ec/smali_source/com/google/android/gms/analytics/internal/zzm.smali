.class public final enum Lcom/google/android/gms/analytics/internal/zzm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/internal/zzm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum dN:Lcom/google/android/gms/analytics/internal/zzm;

.field public static final enum dO:Lcom/google/android/gms/analytics/internal/zzm;

.field public static final enum dP:Lcom/google/android/gms/analytics/internal/zzm;

.field public static final enum dQ:Lcom/google/android/gms/analytics/internal/zzm;

.field public static final enum dR:Lcom/google/android/gms/analytics/internal/zzm;

.field public static final enum dS:Lcom/google/android/gms/analytics/internal/zzm;

.field private static final synthetic dT:[Lcom/google/android/gms/analytics/internal/zzm;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzm;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/internal/zzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dN:Lcom/google/android/gms/analytics/internal/zzm;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzm;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/internal/zzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dO:Lcom/google/android/gms/analytics/internal/zzm;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzm;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/analytics/internal/zzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dP:Lcom/google/android/gms/analytics/internal/zzm;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzm;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/analytics/internal/zzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dQ:Lcom/google/android/gms/analytics/internal/zzm;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzm;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/analytics/internal/zzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dR:Lcom/google/android/gms/analytics/internal/zzm;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzm;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dS:Lcom/google/android/gms/analytics/internal/zzm;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/analytics/internal/zzm;

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzm;->dN:Lcom/google/android/gms/analytics/internal/zzm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzm;->dO:Lcom/google/android/gms/analytics/internal/zzm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzm;->dP:Lcom/google/android/gms/analytics/internal/zzm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzm;->dQ:Lcom/google/android/gms/analytics/internal/zzm;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzm;->dR:Lcom/google/android/gms/analytics/internal/zzm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/analytics/internal/zzm;->dS:Lcom/google/android/gms/analytics/internal/zzm;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dT:[Lcom/google/android/gms/analytics/internal/zzm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/analytics/internal/zzm;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dT:[Lcom/google/android/gms/analytics/internal/zzm;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/internal/zzm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/internal/zzm;

    return-object v0
.end method

.method public static zzfb(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzm;
    .registers 2

    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dO:Lcom/google/android/gms/analytics/internal/zzm;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dP:Lcom/google/android/gms/analytics/internal/zzm;

    goto :goto_a

    :cond_16
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dQ:Lcom/google/android/gms/analytics/internal/zzm;

    goto :goto_a

    :cond_21
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dR:Lcom/google/android/gms/analytics/internal/zzm;

    goto :goto_a

    :cond_2c
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dS:Lcom/google/android/gms/analytics/internal/zzm;

    goto :goto_a

    :cond_37
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzm;->dN:Lcom/google/android/gms/analytics/internal/zzm;

    goto :goto_a
.end method
