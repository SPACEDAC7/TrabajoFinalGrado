.class public Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    const-string v0, "&t"

    const-string/jumbo v1, "transaction"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    .registers 3

    const-string v0, "&ta"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    .registers 3

    const-string v0, "&cu"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setRevenue(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    .registers 6

    const-string v0, "&tr"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setShipping(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    .registers 6

    const-string v0, "&ts"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setTax(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    .registers 6

    const-string v0, "&tt"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    .registers 3

    const-string v0, "&ti"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method
