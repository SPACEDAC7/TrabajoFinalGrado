.class public final Lcom/google/android/gms/common/util/zzf;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p8, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p10, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/zza;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/zza;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static zza([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([TK;[TV;)V"
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length v1, p0

    array-length v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x42

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Key and values array lengths not equal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return-void
.end method

.method public static zzaa(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static zzayj()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static zzayk()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static zzb([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([TK;[TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/zzf;->zza([Ljava/lang/Object;[Ljava/lang/Object;)V

    array-length v2, p0

    packed-switch v2, :pswitch_data_38

    const/16 v0, 0x20

    if-gt v2, v0, :cond_2b

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    :goto_11
    if-ge v1, v2, :cond_33

    aget-object v3, p0, v1

    aget-object v4, p1, v1

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :pswitch_1d
    invoke-static {}, Lcom/google/android/gms/common/util/zzf;->zzayk()Ljava/util/Map;

    move-result-object v0

    :goto_21
    return-object v0

    :pswitch_22
    aget-object v0, p0, v1

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzf;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_21

    :cond_2b
    new-instance v0, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    goto :goto_11

    :cond_33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_21

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method public static zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs zzc([Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    packed-switch v0, :pswitch_data_52

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_48

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/zza;-><init>(Ljava/util/Collection;)V

    :goto_15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_19
    return-object v0

    :pswitch_1a
    invoke-static {}, Lcom/google/android/gms/common/util/zzf;->zzayj()Ljava/util/Set;

    move-result-object v0

    goto :goto_19

    :pswitch_1f
    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzf;->zzaa(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_19

    :pswitch_26
    aget-object v0, p0, v1

    aget-object v1, p0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzf;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_19

    :pswitch_2f
    aget-object v0, p0, v1

    aget-object v1, p0, v2

    aget-object v2, p0, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_19

    :pswitch_3a
    aget-object v0, p0, v1

    aget-object v1, p0, v2

    aget-object v2, p0, v3

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_19

    :cond_48
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_15

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1f
        :pswitch_26
        :pswitch_2f
        :pswitch_3a
    .end packed-switch
.end method

.method public static zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/zza;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static zzz(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
